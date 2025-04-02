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
import qualified MAlonzo.Code.Algebra.Bundles.Raw
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

-- Data.Nat.Properties._._Absorbs_
d__Absorbs__8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__Absorbs__8 = erased
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
-- Data.Nat.Properties._._IdempotentOn_
d__IdempotentOn__16 ::
  (Integer -> Integer -> Integer) -> Integer -> ()
d__IdempotentOn__16 = erased
-- Data.Nat.Properties._._MiddleFourExchange_
d__MiddleFourExchange__18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__MiddleFourExchange__18 = erased
-- Data.Nat.Properties._.Absorptive
d_Absorptive_20 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Absorptive_20 = erased
-- Data.Nat.Properties._.AlmostCancellative
d_AlmostCancellative_22 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostCancellative_22 = erased
-- Data.Nat.Properties._.AlmostLeftCancellative
d_AlmostLeftCancellative_24 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostLeftCancellative_24 = erased
-- Data.Nat.Properties._.AlmostRightCancellative
d_AlmostRightCancellative_26 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostRightCancellative_26 = erased
-- Data.Nat.Properties._.Alternative
d_Alternative_28 :: (Integer -> Integer -> Integer) -> ()
d_Alternative_28 = erased
-- Data.Nat.Properties._.Associative
d_Associative_30 :: (Integer -> Integer -> Integer) -> ()
d_Associative_30 = erased
-- Data.Nat.Properties._.Commutative
d_Commutative_32 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_32 = erased
-- Data.Nat.Properties._.Congruent₁
d_Congruent'8321'_34 :: (Integer -> Integer) -> ()
d_Congruent'8321'_34 = erased
-- Data.Nat.Properties._.Congruent₂
d_Congruent'8322'_36 :: (Integer -> Integer -> Integer) -> ()
d_Congruent'8322'_36 = erased
-- Data.Nat.Properties._.Conical
d_Conical_38 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Conical_38 = erased
-- Data.Nat.Properties._.Flexible
d_Flexible_40 :: (Integer -> Integer -> Integer) -> ()
d_Flexible_40 = erased
-- Data.Nat.Properties._.Idempotent
d_Idempotent_42 :: (Integer -> Integer -> Integer) -> ()
d_Idempotent_42 = erased
-- Data.Nat.Properties._.IdempotentFun
d_IdempotentFun_44 :: (Integer -> Integer) -> ()
d_IdempotentFun_44 = erased
-- Data.Nat.Properties._.Identical
d_Identical_46 :: (Integer -> Integer -> Integer) -> ()
d_Identical_46 = erased
-- Data.Nat.Properties._.Identity
d_Identity_48 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_48 = erased
-- Data.Nat.Properties._.Interchangable
d_Interchangable_50 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Interchangable_50 = erased
-- Data.Nat.Properties._.Inverse
d_Inverse_52 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_52 = erased
-- Data.Nat.Properties._.Invertible
d_Invertible_54 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_Invertible_54 = erased
-- Data.Nat.Properties._.Involutive
d_Involutive_56 :: (Integer -> Integer) -> ()
d_Involutive_56 = erased
-- Data.Nat.Properties._.LeftAlternative
d_LeftAlternative_58 :: (Integer -> Integer -> Integer) -> ()
d_LeftAlternative_58 = erased
-- Data.Nat.Properties._.LeftBol
d_LeftBol_60 :: (Integer -> Integer -> Integer) -> ()
d_LeftBol_60 = erased
-- Data.Nat.Properties._.LeftCongruent
d_LeftCongruent_62 :: (Integer -> Integer -> Integer) -> ()
d_LeftCongruent_62 = erased
-- Data.Nat.Properties._.LeftConical
d_LeftConical_64 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftConical_64 = erased
-- Data.Nat.Properties._.LeftDivides
d_LeftDivides_66 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides_66 = erased
-- Data.Nat.Properties._.LeftDividesʳ
d_LeftDivides'691'_68 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'691'_68 = erased
-- Data.Nat.Properties._.LeftDividesˡ
d_LeftDivides'737'_70 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'737'_70 = erased
-- Data.Nat.Properties._.LeftIdentity
d_LeftIdentity_72 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_72 = erased
-- Data.Nat.Properties._.LeftInverse
d_LeftInverse_74 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_74 = erased
-- Data.Nat.Properties._.LeftInvertible
d_LeftInvertible_76 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_LeftInvertible_76 = erased
-- Data.Nat.Properties._.LeftSemimedial
d_LeftSemimedial_78 :: (Integer -> Integer -> Integer) -> ()
d_LeftSemimedial_78 = erased
-- Data.Nat.Properties._.LeftZero
d_LeftZero_80 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_80 = erased
-- Data.Nat.Properties._.Medial
d_Medial_82 :: (Integer -> Integer -> Integer) -> ()
d_Medial_82 = erased
-- Data.Nat.Properties._.MiddleBol
d_MiddleBol_84 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_MiddleBol_84 = erased
-- Data.Nat.Properties._.RightAlternative
d_RightAlternative_86 :: (Integer -> Integer -> Integer) -> ()
d_RightAlternative_86 = erased
-- Data.Nat.Properties._.RightBol
d_RightBol_88 :: (Integer -> Integer -> Integer) -> ()
d_RightBol_88 = erased
-- Data.Nat.Properties._.RightCongruent
d_RightCongruent_90 :: (Integer -> Integer -> Integer) -> ()
d_RightCongruent_90 = erased
-- Data.Nat.Properties._.RightConical
d_RightConical_92 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightConical_92 = erased
-- Data.Nat.Properties._.RightDivides
d_RightDivides_94 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides_94 = erased
-- Data.Nat.Properties._.RightDividesʳ
d_RightDivides'691'_96 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'691'_96 = erased
-- Data.Nat.Properties._.RightDividesˡ
d_RightDivides'737'_98 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'737'_98 = erased
-- Data.Nat.Properties._.RightIdentity
d_RightIdentity_100 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_100 = erased
-- Data.Nat.Properties._.RightInverse
d_RightInverse_102 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_102 = erased
-- Data.Nat.Properties._.RightInvertible
d_RightInvertible_104 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_RightInvertible_104 = erased
-- Data.Nat.Properties._.RightSemimedial
d_RightSemimedial_106 :: (Integer -> Integer -> Integer) -> ()
d_RightSemimedial_106 = erased
-- Data.Nat.Properties._.RightZero
d_RightZero_108 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_108 = erased
-- Data.Nat.Properties._.Selective
d_Selective_110 :: (Integer -> Integer -> Integer) -> ()
d_Selective_110 = erased
-- Data.Nat.Properties._.SelfInverse
d_SelfInverse_112 :: (Integer -> Integer) -> ()
d_SelfInverse_112 = erased
-- Data.Nat.Properties._.Semimedial
d_Semimedial_114 :: (Integer -> Integer -> Integer) -> ()
d_Semimedial_114 = erased
-- Data.Nat.Properties._.StarDestructive
d_StarDestructive_116 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarDestructive_116 = erased
-- Data.Nat.Properties._.StarExpansive
d_StarExpansive_118 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarExpansive_118 = erased
-- Data.Nat.Properties._.StarLeftDestructive
d_StarLeftDestructive_120 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftDestructive_120 = erased
-- Data.Nat.Properties._.StarLeftExpansive
d_StarLeftExpansive_122 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftExpansive_122 = erased
-- Data.Nat.Properties._.StarRightDestructive
d_StarRightDestructive_124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightDestructive_124 = erased
-- Data.Nat.Properties._.StarRightExpansive
d_StarRightExpansive_126 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightExpansive_126 = erased
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
-- Data.Nat.Properties._.IsCommutativeBand
d_IsCommutativeBand_140 a0 = ()
-- Data.Nat.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_142 a0 = ()
-- Data.Nat.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_144 a0 a1 = ()
-- Data.Nat.Properties._.IsCommutativeRing
d_IsCommutativeRing_146 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_148 a0 = ()
-- Data.Nat.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_150 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_152 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_154 a0 = ()
-- Data.Nat.Properties._.IsGroup
d_IsGroup_156 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_158 a0 a1 = ()
-- Data.Nat.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_160 a0 = ()
-- Data.Nat.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_162 a0 a1 = ()
-- Data.Nat.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_164 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_166 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_168 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_170 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_172 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsLoop
d_IsLoop_174 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsMagma
d_IsMagma_176 a0 = ()
-- Data.Nat.Properties._.IsMedialMagma
d_IsMedialMagma_178 a0 = ()
-- Data.Nat.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_180 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsMonoid
d_IsMonoid_182 a0 a1 = ()
-- Data.Nat.Properties._.IsMoufangLoop
d_IsMoufangLoop_184 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsNearSemiring
d_IsNearSemiring_186 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsNearring
d_IsNearring_188 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_190 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsQuasigroup
d_IsQuasigroup_192 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsQuasiring
d_IsQuasiring_194 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsRightBolLoop
d_IsRightBolLoop_196 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsRing
d_IsRing_198 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_200 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_202 a0 = ()
-- Data.Nat.Properties._.IsSemigroup
d_IsSemigroup_204 a0 = ()
-- Data.Nat.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_206 a0 = ()
-- Data.Nat.Properties._.IsSemiring
d_IsSemiring_208 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_210 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_212 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsSuccessorSet
d_IsSuccessorSet_214 a0 a1 = ()
-- Data.Nat.Properties._.IsUnitalMagma
d_IsUnitalMagma_216 a0 a1 = ()
-- Data.Nat.Properties._.IsAbelianGroup._//_
d__'47''47'__220 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> Integer -> Integer
d__'47''47'__220 v0 ~v1 v2 ~v3 = du__'47''47'__220 v0 v2
du__'47''47'__220 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__220 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsAbelianGroup.assoc
d_assoc_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_222 = erased
-- Data.Nat.Properties._.IsAbelianGroup.comm
d_comm_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_224 = erased
-- Data.Nat.Properties._.IsAbelianGroup.identity
d_identity_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Nat.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_228 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_228 = erased
-- Data.Nat.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_230 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_230 = erased
-- Data.Nat.Properties._.IsAbelianGroup.inverse
d_inverse_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_234 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_234 = erased
-- Data.Nat.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_236 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_236 = erased
-- Data.Nat.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_238 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_238 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_238 v3
du_isCommutativeMagma_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_238 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Nat.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_240 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_240 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204 v3
-- Data.Nat.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_242 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_242 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_242 v3
du_isCommutativeSemigroup_242 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_242 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
         (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))))
-- Data.Nat.Properties._.IsAbelianGroup.isGroup
d_isGroup_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_246 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Data.Nat.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_248 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_248 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_248 v3
du_isInvertibleMagma_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_250 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_250 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_250 v3
du_isInvertibleUnitalMagma_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isMagma
d_isMagma_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))))
-- Data.Nat.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_256 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_256 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_256 v3
du_isPartialEquivalence_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_256 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Nat.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Nat.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_260 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_260 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_260 v3
du_isUnitalMagma_260 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_260 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1)))
-- Data.Nat.Properties._.IsAbelianGroup.refl
d_refl_262 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_262 = erased
-- Data.Nat.Properties._.IsAbelianGroup.reflexive
d_reflexive_264 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_264 = erased
-- Data.Nat.Properties._.IsAbelianGroup.setoid
d_setoid_266 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_266 ~v0 ~v1 ~v2 v3 = du_setoid_266 v3
du_setoid_266 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_266 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Nat.Properties._.IsAbelianGroup.sym
d_sym_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_268 = erased
-- Data.Nat.Properties._.IsAbelianGroup.trans
d_trans_270 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_270 = erased
-- Data.Nat.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_272 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_272 = erased
-- Data.Nat.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_274 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_274 = erased
-- Data.Nat.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_276 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_278 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_280 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_280 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_282 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_282 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.alter
d_alter_286 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_286 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_294 (coe v0)
-- Data.Nat.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_288 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_288 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_290 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_290 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Nat.Properties._.IsAlternativeMagma.isMagma
d_isMagma_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_294 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0)
-- Data.Nat.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_296 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_296 ~v0 v1 = du_isPartialEquivalence_296 v1
du_isPartialEquivalence_296 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_296 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsAlternativeMagma.refl
d_refl_298 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_298 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.reflexive
d_reflexive_300 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_300 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.setoid
d_setoid_302 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_302 ~v0 v1 = du_setoid_302 v1
du_setoid_302 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Nat.Properties._.IsAlternativeMagma.sym
d_sym_304 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_304 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.trans
d_trans_306 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_306 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_308 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_308 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_310 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_310 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_312 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_312 = erased
-- Data.Nat.Properties._.IsBand.assoc
d_assoc_316 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_316 = erased
-- Data.Nat.Properties._.IsBand.idem
d_idem_318 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_318 = erased
-- Data.Nat.Properties._.IsBand.isEquivalence
d_isEquivalence_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)))
-- Data.Nat.Properties._.IsBand.isMagma
d_isMagma_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0))
-- Data.Nat.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_324 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_324 ~v0 v1 = du_isPartialEquivalence_324 v1
du_isPartialEquivalence_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_324 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Nat.Properties._.IsBand.isSemigroup
d_isSemigroup_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)
-- Data.Nat.Properties._.IsBand.refl
d_refl_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_328 = erased
-- Data.Nat.Properties._.IsBand.reflexive
d_reflexive_330 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_330 = erased
-- Data.Nat.Properties._.IsBand.setoid
d_setoid_332 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_332 ~v0 v1 = du_setoid_332 v1
du_setoid_332 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_332 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Nat.Properties._.IsBand.sym
d_sym_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_334 = erased
-- Data.Nat.Properties._.IsBand.trans
d_trans_336 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_336 = erased
-- Data.Nat.Properties._.IsBand.∙-cong
d_'8729''45'cong_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_338 = erased
-- Data.Nat.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_340 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_340 = erased
-- Data.Nat.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_342 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_342 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_346 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_348 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45'nonZero_348 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_350 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_352 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_354 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_354 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_356 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_356 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_358 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_358 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_360 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_362 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_362 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_364 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_364 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_366 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_366 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_366 v4
du_isCommutativeMagma_366 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_366 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_368 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_368 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_368 v4
du_'42''45'isCommutativeMonoid_368 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_370 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_370 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_370 v4
du_'42''45'isCommutativeSemigroup_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_370 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe v1)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_372 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_372 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_372 v4
du_'42''45'isMagma_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_372 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_374 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_374 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_374 v4
du_'42''45'isMonoid_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_374 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_376 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_376 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_376 v4
du_'42''45'isSemigroup_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_376 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_378 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_380 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_382 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_382 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_384 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_384 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_386 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_386 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                     (coe v0))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_390 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_390 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_392 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_392 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_394 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_394 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_394 v4
du_isCommutativeMagma_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_394 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_396 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_398 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_398 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_398 v4
du_isCommutativeSemigroup_398 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_398 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v3)))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                        (coe v0)))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_402 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                  (coe v0)))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_404 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                     (coe v0))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_406 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_406 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_406 v4
du_isUnitalMagma_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_406 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_408 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_408 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_410 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_410 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_412 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_412 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_414 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
      (coe v0)
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_416 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_416 v4
du_isCommutativeSemiringWithoutOne_416 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_418 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
                           (coe v0))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_420 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_420 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_420 v4
du_isNearSemiring_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_420 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_422 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_422 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_422 v4
du_isPartialEquivalence_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_422 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_426 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
            (coe v0)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_428 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_428 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_428 v4
du_isSemiringWithoutOne_428 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_428 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_430 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_432 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_432 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_434 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_434 v4
du_setoid_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_434 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_436 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_438 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_438 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
            (coe v0)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_442 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_442 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_444 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_444 = erased
-- Data.Nat.Properties._.IsCommutativeBand.assoc
d_assoc_448 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_448 = erased
-- Data.Nat.Properties._.IsCommutativeBand.comm
d_comm_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_450 = erased
-- Data.Nat.Properties._.IsCommutativeBand.idem
d_idem_452 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_452 = erased
-- Data.Nat.Properties._.IsCommutativeBand.isBand
d_isBand_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_454 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Nat.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_456 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_456 ~v0 v1 = du_isCommutativeMagma_456 v1
du_isCommutativeMagma_456 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_458 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_458 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632 v1
-- Data.Nat.Properties._.IsCommutativeBand.isEquivalence
d_isEquivalence_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeBand.isMagma
d_isMagma_462 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_464 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_464 ~v0 v1 = du_isPartialEquivalence_464 v1
du_isPartialEquivalence_464 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_464 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_466 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Nat.Properties._.IsCommutativeBand.refl
d_refl_468 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_468 = erased
-- Data.Nat.Properties._.IsCommutativeBand.reflexive
d_reflexive_470 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_470 = erased
-- Data.Nat.Properties._.IsCommutativeBand.setoid
d_setoid_472 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_472 ~v0 v1 = du_setoid_472 v1
du_setoid_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_472 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Nat.Properties._.IsCommutativeBand.sym
d_sym_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_474 = erased
-- Data.Nat.Properties._.IsCommutativeBand.trans
d_trans_476 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_476 = erased
-- Data.Nat.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_478 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_478 = erased
-- Data.Nat.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_480 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_480 = erased
-- Data.Nat.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_482 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_482 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.comm
d_comm_486 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_486 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_488 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMagma.isMagma
d_isMagma_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0)
-- Data.Nat.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_492 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_492 ~v0 v1 = du_isPartialEquivalence_492 v1
du_isPartialEquivalence_492 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_492 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsCommutativeMagma.refl
d_refl_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_494 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.reflexive
d_reflexive_496 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_496 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.setoid
d_setoid_498 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_498 ~v0 v1 = du_setoid_498 v1
du_setoid_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_498 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMagma.sym
d_sym_500 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_500 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.trans
d_trans_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_502 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_504 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_506 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_506 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_508 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_508 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.assoc
d_assoc_512 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_512 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.comm
d_comm_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_514 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.identity
d_identity_516 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_516 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_518 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_518 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_520 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_520 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_522 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_522 ~v0 ~v1 v2 = du_isCommutativeMagma_522 v2
du_isCommutativeMagma_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_524 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_524 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786 v2
-- Data.Nat.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_526 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_530 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_530 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Data.Nat.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_532 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_532 ~v0 ~v1 v2
  = du_isPartialEquivalence_532 v2
du_isPartialEquivalence_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_532 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_534 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_536 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_536 ~v0 ~v1 v2 = du_isUnitalMagma_536 v2
du_isUnitalMagma_536 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.refl
d_refl_538 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_538 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_540 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_540 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.setoid
d_setoid_542 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_542 ~v0 ~v1 v2 = du_setoid_542 v2
du_setoid_542 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_542 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Nat.Properties._.IsCommutativeMonoid.sym
d_sym_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_544 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.trans
d_trans_546 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_546 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_548 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_548 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_550 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_550 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_552 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_552 = erased
-- Data.Nat.Properties._.IsCommutativeRing._//_
d__'47''47'__556 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> Integer -> Integer
d__'47''47'__556 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__556 v0 v2
du__'47''47'__556 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__556 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_558 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_558 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_560 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_560 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_562 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_564 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_566 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_566 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_568 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_568 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_570 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_572 = erased
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_574 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_574 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_574 v0 v1 v2 v3 v5
du_isCommutativeMagma_574 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_574 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
               (coe v6))))
-- Data.Nat.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_576 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_576 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_576 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_578 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_578 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_578 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_580 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_580 v0 v1 v2 v3 v5
du_'42''45'isMagma_580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_580 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Nat.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_582 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_582 v0 v1 v2 v3 v5
du_'42''45'isMonoid_582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_582 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_584 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_584 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_584 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Nat.Properties._.IsCommutativeRing.assoc
d_assoc_586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_586 = erased
-- Data.Nat.Properties._.IsCommutativeRing.comm
d_comm_588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_588 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_590 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_592 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_594 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identity
d_identity_596 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_596 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_596 v5
du_identity_596 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_596 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_698
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                  (coe v1)))))
-- Data.Nat.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_598 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_598 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_600 = erased
-- Data.Nat.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_604 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_604 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_604 v5
du_isCommutativeMagma_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_604 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_606 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_606 v5
du_isCommutativeMonoid_606 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_606 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v2))))
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_608 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_608 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_608 v5
du_isCommutativeSemigroup_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_608 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                  (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeRing.isGroup
d_isGroup_610 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_610 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_610 v5
du_isGroup_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_isGroup_610 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_612 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_612 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_612 v5
du_isInvertibleMagma_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_612 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_614 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_614 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_614 v5
du_isInvertibleUnitalMagma_614 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_614 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeRing.isMagma
d_isMagma_616 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_616 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_616 v5
du_isMagma_616 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_616 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                     (coe v1))))))
-- Data.Nat.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_618 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_618 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_618 v5
du_isMonoid_618 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_618 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v1))))
-- Data.Nat.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_620 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_620 v5
du_isSemigroup_620 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_620 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                  (coe v1)))))
-- Data.Nat.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_622 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_622 v5
du_isUnitalMagma_622 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_622 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4))))))
-- Data.Nat.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_624 = erased
-- Data.Nat.Properties._.IsCommutativeRing.inverse
d_inverse_626 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_626 v5
du_inverse_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_626 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_1052
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v1))))
-- Data.Nat.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_628 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_628 = erased
-- Data.Nat.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_630 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_630 = erased
-- Data.Nat.Properties._.IsCommutativeRing.distrib
d_distrib_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2702
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_634 = erased
-- Data.Nat.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_636 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_636 = erased
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_638 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_638 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948 v0 v1
      v2 v3 v5
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_640 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_640 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_640 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_642 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_642 v5
du_isEquivalence_642 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_642 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                        (coe v1)))))))
-- Data.Nat.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_644 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_644 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_644 v0 v1 v2 v3 v5
du_isNearSemiring_644 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_644 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_646 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_646 v5
du_isPartialEquivalence_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_646 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Data.Nat.Properties._.IsCommutativeRing.isRing
d_isRing_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_648 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0)
-- Data.Nat.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_650 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_650 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_650 v5
du_isRingWithoutOne_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
du_isRingWithoutOne_650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_652 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_652 v0 v1 v2 v3 v5
du_isSemiring_652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_isSemiring_652 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_654 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_654 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_654 v5
du_isSemiringWithoutAnnihilatingZero_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
du_isSemiringWithoutAnnihilatingZero_654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_656 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_656 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_656 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_656 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_656 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.refl
d_refl_658 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_658 = erased
-- Data.Nat.Properties._.IsCommutativeRing.reflexive
d_reflexive_660 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_660 = erased
-- Data.Nat.Properties._.IsCommutativeRing.setoid
d_setoid_662 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_662 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_662 v5
du_setoid_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_662 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Data.Nat.Properties._.IsCommutativeRing.sym
d_sym_664 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_664 = erased
-- Data.Nat.Properties._.IsCommutativeRing.trans
d_trans_666 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_666 = erased
-- Data.Nat.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_668 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_668 = erased
-- Data.Nat.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_670 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_670 = erased
-- Data.Nat.Properties._.IsCommutativeRing.zero
d_zero_672 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_672 v0 v1 v2 v3 ~v4 v5 = du_zero_672 v0 v1 v2 v3 v5
du_zero_672 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_672 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_674 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_674 = erased
-- Data.Nat.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_676 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_676 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.assoc
d_assoc_680 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_680 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.comm
d_comm_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_682 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_684 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_684 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586 v1
-- Data.Nat.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_686 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_686 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_690 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_690 ~v0 v1 = du_isPartialEquivalence_690 v1
du_isPartialEquivalence_690 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_690 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_692 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_692 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemigroup.refl
d_refl_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_694 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_696 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_696 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.setoid
d_setoid_698 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_698 ~v0 v1 = du_setoid_698 v1
du_setoid_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_698 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemigroup.sym
d_sym_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_700 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.trans
d_trans_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_702 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_704 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_706 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_706 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_708 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_708 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_712 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_712 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_714 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_714 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_716 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_716 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_718 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_718 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_720 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_720 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_724 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_724 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_726 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_726 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_728 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_728 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_728 v4
du_isCommutativeMagma_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_728 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_730 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_730 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      v4
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_732 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_732 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_732 v4
du_'42''45'isCommutativeSemigroup_732 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_734 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_734 v4
du_'42''45'isMagma_734 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_734 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_736 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_736 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_736 v4
du_'42''45'isMonoid_736 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_736 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_738 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_738 v4
du_'42''45'isSemigroup_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_738 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.assoc
d_assoc_740 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_740 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.comm
d_comm_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_742 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_744 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_746 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_746 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_748 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_748 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identity
d_identity_750 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_752 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_752 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_754 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_754 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_756 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_756 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_756 v4
du_isCommutativeMagma_756 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_756 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_760 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_760 v4
du_isCommutativeSemigroup_760 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_760 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v2))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_762 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_768 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_768 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_768 v4
du_isUnitalMagma_768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_768 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.distrib
d_distrib_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_772 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_772 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_774 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_776 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_776 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      v4
-- Data.Nat.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_778 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_780 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_780 v4
du_isNearSemiring_780 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_780 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_782 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_782 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_782 v4
du_isPartialEquivalence_782 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_782 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_784 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_784 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_786 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_786 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_788 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_788 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_788 v4
du_isSemiringWithoutOne_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.refl
d_refl_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_790 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_792 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_792 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.setoid
d_setoid_794 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_794 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_794 v4
du_setoid_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_794 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.sym
d_sym_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_796 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.trans
d_trans_798 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_798 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.zero
d_zero_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_802 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_802 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_804 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_804 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_808 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_808 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_810 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_810 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_812 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_812 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_814 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_814 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_816 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_816 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_818 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_818 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_818 v3
du_isCommutativeMagma_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_820 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_820 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      v3
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_822 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_822 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_822 v3
du_'42''45'isMagma_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_822 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_824 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_824 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_824 v3
du_'42''45'isSemigroup_824 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_826 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_826 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_828 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_830 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_832 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_832 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_834 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_834 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.identity
d_identity_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
               (coe v0))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_838 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_838 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_840 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_840 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_842 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_842 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_842 v3
du_isCommutativeMagma_842 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_842 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_846 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_846 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_846 v3
du_isCommutativeSemigroup_846 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_846 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_848 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
            (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1322
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_852 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_852 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_854 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_854 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
d_isEquivalence_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
                     (coe v0))))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_858 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_858 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_858 v3
du_isNearSemiring_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_858 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_860 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_860 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_860 v3
du_isPartialEquivalence_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_860 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                        (coe v1)))))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
      (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_864 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_864 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_866 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_866 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_868 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_868 ~v0 ~v1 ~v2 v3 = du_setoid_868 v3
du_setoid_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_868 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_870 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_870 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_872 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_872 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1324
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_876 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_876 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_878 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_878 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.flex
d_flex_882 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_882 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_884 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Nat.Properties._.IsFlexibleMagma.isMagma
d_isMagma_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_886 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0)
-- Data.Nat.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_888 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_888 ~v0 v1 = du_isPartialEquivalence_888 v1
du_isPartialEquivalence_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_888 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsFlexibleMagma.refl
d_refl_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_890 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.reflexive
d_reflexive_892 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_892 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.setoid
d_setoid_894 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_894 ~v0 v1 = du_setoid_894 v1
du_setoid_894 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_894 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Nat.Properties._.IsFlexibleMagma.sym
d_sym_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_896 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.trans
d_trans_898 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_898 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_900 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_900 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_902 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_902 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_904 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_904 = erased
-- Data.Nat.Properties._.IsGroup._-_
d__'45'__908 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> Integer -> Integer
d__'45'__908 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1104 v0 v2
-- Data.Nat.Properties._.IsGroup._//_
d__'47''47'__910 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> Integer -> Integer
d__'47''47'__910 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 v0 v2 v4 v5
-- Data.Nat.Properties._.IsGroup._\\_
d__'92''92'__912 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> Integer -> Integer
d__'92''92'__912 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1092 v0 v2 v4 v5
-- Data.Nat.Properties._.IsGroup.assoc
d_assoc_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_914 = erased
-- Data.Nat.Properties._.IsGroup.identity
d_identity_916 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_916 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Nat.Properties._.IsGroup.identityʳ
d_identity'691'_918 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_918 = erased
-- Data.Nat.Properties._.IsGroup.identityˡ
d_identity'737'_920 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_920 = erased
-- Data.Nat.Properties._.IsGroup.inverse
d_inverse_922 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_922 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1052 (coe v0)
-- Data.Nat.Properties._.IsGroup.inverseʳ
d_inverse'691'_924 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_924 = erased
-- Data.Nat.Properties._.IsGroup.inverseˡ
d_inverse'737'_926 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_926 = erased
-- Data.Nat.Properties._.IsGroup.isEquivalence
d_isEquivalence_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_928 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))))
-- Data.Nat.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_930 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_930 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122 v3
-- Data.Nat.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_932 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_932 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124 v3
-- Data.Nat.Properties._.IsGroup.isMagma
d_isMagma_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_934 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)))
-- Data.Nat.Properties._.IsGroup.isMonoid
d_isMonoid_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_936 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)
-- Data.Nat.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_938 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_938 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_938 v3
du_isPartialEquivalence_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_938 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsGroup.isSemigroup
d_isSemigroup_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Nat.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_942 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_942 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_942 v3
du_isUnitalMagma_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Nat.Properties._.IsGroup.refl
d_refl_944 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_944 = erased
-- Data.Nat.Properties._.IsGroup.reflexive
d_reflexive_946 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_946 = erased
-- Data.Nat.Properties._.IsGroup.setoid
d_setoid_948 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_948 ~v0 ~v1 ~v2 v3 = du_setoid_948 v3
du_setoid_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_948 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Nat.Properties._.IsGroup.sym
d_sym_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_950 = erased
-- Data.Nat.Properties._.IsGroup.trans
d_trans_952 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_952 = erased
-- Data.Nat.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_954 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_954 = erased
-- Data.Nat.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_956 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_956 = erased
-- Data.Nat.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_958 = erased
-- Data.Nat.Properties._.IsGroup.∙-cong
d_'8729''45'cong_960 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_960 = erased
-- Data.Nat.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_962 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_962 = erased
-- Data.Nat.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_964 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_964 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_968 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_968 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_970 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_970 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_972 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_972 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_974 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_976 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_976 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_978 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_978 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_980 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_980 ~v0 ~v1 v2 = du_isBand_980 v2
du_isBand_980 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_980 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_846
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_982 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_982 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 v2
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_984 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_984 ~v0 ~v1 v2 = du_isCommutativeMagma_984 v2
du_isCommutativeMagma_984 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_984 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_986 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0)
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_988 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_988 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_988 v2
du_isCommutativeSemigroup_988 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_988 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_990 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
                  (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_992 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_992 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 v2
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_994 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_994 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
               (coe v0))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_996 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_998 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_998 ~v0 ~v1 v2
  = du_isPartialEquivalence_998 v2
du_isPartialEquivalence_998 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_998 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_1000 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1002 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1002 ~v0 ~v1 v2 = du_isUnitalMagma_1002 v2
du_isUnitalMagma_1002 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1002 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1004 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1004 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1006 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1006 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1008 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1008 ~v0 ~v1 v2 = du_setoid_1008 v2
du_setoid_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1008 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1010 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1012 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1014 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1016 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1016 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1018 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1018 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.idem
d_idem_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1022 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1024 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1024 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1026 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1026 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0)
-- Data.Nat.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1028 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1028 ~v0 v1
  = du_isPartialEquivalence_1028 v1
du_isPartialEquivalence_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1028 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsIdempotentMagma.refl
d_refl_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1030 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1032 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1032 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.setoid
d_setoid_1034 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1034 ~v0 v1 = du_setoid_1034 v1
du_setoid_1034 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMagma.sym
d_sym_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1036 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.trans
d_trans_1038 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1038 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1040 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1042 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1042 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1044 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1044 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.assoc
d_assoc_1048 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1048 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.idem
d_idem_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1050 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.identity
d_identity_1052 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1054 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1054 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1056 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1056 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.isBand
d_isBand_1058 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1058 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_846 v2
-- Data.Nat.Properties._.IsIdempotentMonoid.isEquivalence
d_isEquivalence_1060 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1060 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))))
-- Data.Nat.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1062 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1062 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1064 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)
-- Data.Nat.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1066 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1066 ~v0 ~v1 v2
  = du_isPartialEquivalence_1066 v2
du_isPartialEquivalence_1066 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1066 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1070 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1070 ~v0 ~v1 v2 = du_isUnitalMagma_1070 v2
du_isUnitalMagma_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMonoid.refl
d_refl_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1072 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1074 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1074 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.setoid
d_setoid_1076 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1076 ~v0 ~v1 v2 = du_setoid_1076 v2
du_setoid_1076 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1076 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Nat.Properties._.IsIdempotentMonoid.sym
d_sym_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1078 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.trans
d_trans_1080 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1080 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1082 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1084 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1084 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1086 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1086 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1090 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1090 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1092 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1092 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1094 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1094 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1096 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1096 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1100 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1100 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1102 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1104 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1104 v4
du_'42''45'isMagma_1104 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1104 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1106 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1106 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1106 v4
du_'42''45'isMonoid_1106 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1106 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1108 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1108 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1108 v4
du_'42''45'isSemigroup_1108 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1108 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.assoc
d_assoc_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1110 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.comm
d_comm_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1112 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1114 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1114 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1116 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1116 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1118 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1118 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1120 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identity
d_identity_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1124 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1126 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.isBand
d_isBand_1128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1128 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_1128 v4
du_isBand_1128 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_1128 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isBand_846
         (coe
            MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_1130 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeBand_1130 v4
du_isCommutativeBand_1130 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_1130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
         (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1132 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1132 v4
du_isCommutativeMagma_1132 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1132 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1134 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1136 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1136 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1136 v4
du_isCommutativeSemigroup_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1136 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v2))))
-- Data.Nat.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1138 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      v4
-- Data.Nat.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1140 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_1140 ~v0 ~v1 ~v2 ~v3 v4
  = du_isIdempotentMonoid_1140 v4
du_isIdempotentMonoid_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_1140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
         (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1142 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1142 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1144 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1146 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1148 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1148 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1148 v4
du_isUnitalMagma_1148 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1148 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.distrib
d_distrib_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1152 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1152 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1154 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1154 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1158 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1158 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1158 v4
du_isNearSemiring_1158 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1158 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1160 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1160 v4
du_isPartialEquivalence_1160 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1160 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1162 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1162 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1164 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1166 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1166 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1166 v4
du_isSemiringWithoutOne_1166 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.refl
d_refl_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1168 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1170 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1170 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.setoid
d_setoid_1172 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1172 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1172 v4
du_setoid_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1172 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.sym
d_sym_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1174 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.trans
d_trans_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1176 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.zero
d_zero_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1180 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1180 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1182 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1182 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.inverse
d_inverse_1186 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1186 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_940 (coe v0)
-- Data.Nat.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1188 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1188 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1190 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1190 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Nat.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1194 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1194 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0)
-- Data.Nat.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1196 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1196 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1196 v3
du_isPartialEquivalence_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1196 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsInvertibleMagma.refl
d_refl_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1198 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1200 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1200 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.setoid
d_setoid_1202 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1202 ~v0 ~v1 ~v2 v3 = du_setoid_1202 v3
du_setoid_1202 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Nat.Properties._.IsInvertibleMagma.sym
d_sym_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1204 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.trans
d_trans_1206 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1206 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1208 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1208 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1210 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1212 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1212 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1214 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1214 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1218 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_990 (coe v0)
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1220 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1220 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1222 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1222 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1224 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_940
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1226 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1226 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1228 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1228 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_938
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1232 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1234 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1234 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_938
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1236 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1236 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1236 v3
du_isPartialEquivalence_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1236 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1238 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1238 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1028 v3
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1240 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1240 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1242 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1242 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1244 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1244 ~v0 ~v1 ~v2 v3 = du_setoid_1244 v3
du_setoid_1244 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1244 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v1)))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1246 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1246 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1248 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1248 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1250 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1250 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1252 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1252 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1254 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1254 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1256 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1256 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1260 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1260 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1262 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1262 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1264 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1264 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1266 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1266 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1270 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1270 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1272 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1272 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1274 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1274 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1274 v5
du_'42''45'isMagma_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1274 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1276 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1276 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1276 v5
du_'42''45'isMonoid_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1276 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1278 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1278 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1278 v5
du_'42''45'isSemigroup_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1278 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.assoc
d_assoc_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1280 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.comm
d_comm_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1282 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1284 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1284 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1286 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1286 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1288 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1288 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1290 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1290 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identity
d_identity_1292 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                     (coe v0))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1294 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1294 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1296 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1296 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.isBand
d_isBand_1298 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1298 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isBand_1298 v5
du_isBand_1298 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_1298 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isBand_846
            (coe
               MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1300 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_1300 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeBand_1300 v5
du_isCommutativeBand_1300 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_1300 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
            (coe v1)))
-- Data.Nat.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1302 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1302 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1302 v5
du_isCommutativeMagma_1302 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1302 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1304 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1306 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1306 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1306 v5
du_isCommutativeSemigroup_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1306 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v3)))))
-- Data.Nat.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1308 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1308 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'isIdempotentCommutativeMonoid_1308 v5
du_'43''45'isIdempotentCommutativeMonoid_1308 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
du_'43''45'isIdempotentCommutativeMonoid_1308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Nat.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1310 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_1310 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isIdempotentMonoid_1310 v5
du_isIdempotentMonoid_1310 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_1310 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
            (coe v1)))
-- Data.Nat.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                        (coe v0)))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                  (coe v0)))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1316 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                     (coe v0))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1318 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1318 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1318 v5
du_isUnitalMagma_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1318 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.distrib
d_distrib_1320 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1322 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1322 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1324 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1324 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
                           (coe v0))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1328 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942
d_isIdempotentSemiring_1328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
      (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1330 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1330 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_1330 v5
du_isNearSemiring_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1330 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1332 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1332 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1332 v5
du_isPartialEquivalence_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1332 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
            (coe v0)))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1338 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1338 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_1338 v5
du_isSemiringWithoutOne_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1338 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1)))
-- Data.Nat.Properties._.IsKleeneAlgebra.refl
d_refl_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1340 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1342 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1342 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.setoid
d_setoid_1344 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1344 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1344 v5
du_setoid_1344 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1344 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1346 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2086 (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1348 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'691'_1348 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1350 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'737'_1350 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1352 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2084 (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1354 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1354 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1356 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1356 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.sym
d_sym_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1358 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.trans
d_trans_1360 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1360 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.zero
d_zero_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1362 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
            (coe v0)))
-- Data.Nat.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1364 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1364 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1366 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1366 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1370 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1370 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1372 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1372 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1374 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1374 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1376 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1376 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1378 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1378 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1380 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1380 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.identity
d_identity_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Nat.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1384 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1384 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1386 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1386 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))))
-- Data.Nat.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1390 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)
-- Data.Nat.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1394 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1394 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1394 v4
du_isPartialEquivalence_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1394 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Nat.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1398 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1402 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1402 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1404 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1404 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.refl
d_refl_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1406 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1408 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1408 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1410 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1410 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1412 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1412 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1414 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1414 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.setoid
d_setoid_1416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1416 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1416 v4
du_setoid_1416 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1416 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Nat.Properties._.IsLeftBolLoop.sym
d_sym_1418 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1418 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.trans
d_trans_1420 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1420 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1422 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1422 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1424 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1424 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1426 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1426 = erased
-- Data.Nat.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1430 = erased
-- Data.Nat.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1432 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1432 = erased
-- Data.Nat.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1434 = erased
-- Data.Nat.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1436 = erased
-- Data.Nat.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1438 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1438 = erased
-- Data.Nat.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1440 = erased
-- Data.Nat.Properties._.IsLoop.identity
d_identity_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1442 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3064 (coe v0)
-- Data.Nat.Properties._.IsLoop.identityʳ
d_identity'691'_1444 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1444 = erased
-- Data.Nat.Properties._.IsLoop.identityˡ
d_identity'737'_1446 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1446 = erased
-- Data.Nat.Properties._.IsLoop.isEquivalence
d_isEquivalence_1448 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)))
-- Data.Nat.Properties._.IsLoop.isMagma
d_isMagma_1450 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Nat.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1452 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1452 v4
du_isPartialEquivalence_1452 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1452 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Nat.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1454 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1454 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)
-- Data.Nat.Properties._.IsLoop.leftDivides
d_leftDivides_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Nat.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1458 = erased
-- Data.Nat.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1460 = erased
-- Data.Nat.Properties._.IsLoop.refl
d_refl_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1462 = erased
-- Data.Nat.Properties._.IsLoop.reflexive
d_reflexive_1464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1464 = erased
-- Data.Nat.Properties._.IsLoop.rightDivides
d_rightDivides_1466 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Nat.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1468 = erased
-- Data.Nat.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1470 = erased
-- Data.Nat.Properties._.IsLoop.setoid
d_setoid_1472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1472 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1472 v4
du_setoid_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1472 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v1)))
-- Data.Nat.Properties._.IsLoop.sym
d_sym_1474 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1474 = erased
-- Data.Nat.Properties._.IsLoop.trans
d_trans_1476 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1476 = erased
-- Data.Nat.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1478 = erased
-- Data.Nat.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1480 = erased
-- Data.Nat.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1482 = erased
-- Data.Nat.Properties._.IsMagma.isEquivalence
d_isEquivalence_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1486 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Data.Nat.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1488 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1488 ~v0 v1
  = du_isPartialEquivalence_1488 v1
du_isPartialEquivalence_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1488 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0))
-- Data.Nat.Properties._.IsMagma.refl
d_refl_1490 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1490 = erased
-- Data.Nat.Properties._.IsMagma.reflexive
d_reflexive_1492 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1492 = erased
-- Data.Nat.Properties._.IsMagma.setoid
d_setoid_1494 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1494 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_200 v1
-- Data.Nat.Properties._.IsMagma.sym
d_sym_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1496 = erased
-- Data.Nat.Properties._.IsMagma.trans
d_trans_1498 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1498 = erased
-- Data.Nat.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1500 = erased
-- Data.Nat.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1502 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1502 = erased
-- Data.Nat.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1504 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1504 = erased
-- Data.Nat.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1508 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Nat.Properties._.IsMedialMagma.isMagma
d_isMagma_1510 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1510 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0)
-- Data.Nat.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1512 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1512 ~v0 v1
  = du_isPartialEquivalence_1512 v1
du_isPartialEquivalence_1512 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1512 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsMedialMagma.medial
d_medial_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1514 = erased
-- Data.Nat.Properties._.IsMedialMagma.refl
d_refl_1516 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1516 = erased
-- Data.Nat.Properties._.IsMedialMagma.reflexive
d_reflexive_1518 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1518 = erased
-- Data.Nat.Properties._.IsMedialMagma.setoid
d_setoid_1520 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1520 ~v0 v1 = du_setoid_1520 v1
du_setoid_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Nat.Properties._.IsMedialMagma.sym
d_sym_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1522 = erased
-- Data.Nat.Properties._.IsMedialMagma.trans
d_trans_1524 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1524 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1526 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1528 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1528 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1530 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1530 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1534 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1536 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1538 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1538 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1540 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1542 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1544 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.identity
d_identity_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Nat.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1548 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1548 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1550 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))))
-- Data.Nat.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1554 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1554 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)
-- Data.Nat.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1556 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1558 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1558 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1558 v4
du_isPartialEquivalence_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1558 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1564 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1566 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1566 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1568 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.refl
d_refl_1570 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1570 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1572 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1574 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1576 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1578 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.setoid
d_setoid_1580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1580 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1580 v4
du_setoid_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1580 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Nat.Properties._.IsMiddleBolLoop.sym
d_sym_1582 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1582 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.trans
d_trans_1584 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1584 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1586 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1586 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1588 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1590 = erased
-- Data.Nat.Properties._.IsMonoid.assoc
d_assoc_1594 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1594 = erased
-- Data.Nat.Properties._.IsMonoid.identity
d_identity_1596 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1596 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Data.Nat.Properties._.IsMonoid.identityʳ
d_identity'691'_1598 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1598 = erased
-- Data.Nat.Properties._.IsMonoid.identityˡ
d_identity'737'_1600 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1600 = erased
-- Data.Nat.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)))
-- Data.Nat.Properties._.IsMonoid.isMagma
d_isMagma_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0))
-- Data.Nat.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1606 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1606 ~v0 ~v1 v2
  = du_isPartialEquivalence_1606 v2
du_isPartialEquivalence_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1606 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Nat.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1608 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Data.Nat.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1610 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1610 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730 v2
-- Data.Nat.Properties._.IsMonoid.refl
d_refl_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1612 = erased
-- Data.Nat.Properties._.IsMonoid.reflexive
d_reflexive_1614 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1614 = erased
-- Data.Nat.Properties._.IsMonoid.setoid
d_setoid_1616 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1616 ~v0 ~v1 v2 = du_setoid_1616 v2
du_setoid_1616 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1616 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Nat.Properties._.IsMonoid.sym
d_sym_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1618 = erased
-- Data.Nat.Properties._.IsMonoid.trans
d_trans_1620 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1620 = erased
-- Data.Nat.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1622 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1622 = erased
-- Data.Nat.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1624 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1624 = erased
-- Data.Nat.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1626 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1626 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1630 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1632 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1632 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1634 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1636 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1638 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1638 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1640 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identical
d_identical_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1642 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identity
d_identity_1644 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3140
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))
-- Data.Nat.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1646 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1648 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1648 = erased
-- Data.Nat.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1650 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLoop_3140
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))))
-- Data.Nat.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1652 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126
d_isLeftBolLoop_1652 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)
-- Data.Nat.Properties._.IsMoufangLoop.isLoop
d_isLoop_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3140
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))
-- Data.Nat.Properties._.IsMoufangLoop.isMagma
d_isMagma_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1658 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1658 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1658 v4
du_isPartialEquivalence_1658 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1658 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Nat.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3140
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))
-- Data.Nat.Properties._.IsMoufangLoop.leftBol
d_leftBol_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1662 = erased
-- Data.Nat.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1664 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1664 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1666 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1666 = erased
-- Data.Nat.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1668 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1668 = erased
-- Data.Nat.Properties._.IsMoufangLoop.refl
d_refl_1670 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1670 = erased
-- Data.Nat.Properties._.IsMoufangLoop.reflexive
d_reflexive_1672 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1672 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightBol
d_rightBol_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1674 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_1678 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1678 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_1680 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1680 = erased
-- Data.Nat.Properties._.IsMoufangLoop.setoid
d_setoid_1682 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1682 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1682 v4
du_setoid_1682 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1682 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3)))))
-- Data.Nat.Properties._.IsMoufangLoop.sym
d_sym_1684 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1684 = erased
-- Data.Nat.Properties._.IsMoufangLoop.trans
d_trans_1686 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1686 = erased
-- Data.Nat.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1688 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1688 = erased
-- Data.Nat.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_1690 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1690 = erased
-- Data.Nat.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_1692 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1692 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1696 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1696 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1698 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1698 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1700 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1700 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1702 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1702 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1704 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1704 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282 v3
-- Data.Nat.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1706 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284 v3
-- Data.Nat.Properties._.IsNearSemiring.assoc
d_assoc_1708 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1708 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1710 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1712 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1712 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1714 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1714 = erased
-- Data.Nat.Properties._.IsNearSemiring.identity
d_identity_1716 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.identityʳ
d_identity'691'_1718 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1718 = erased
-- Data.Nat.Properties._.IsNearSemiring.identityˡ
d_identity'737'_1720 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1720 = erased
-- Data.Nat.Properties._.IsNearSemiring.isMagma
d_isMagma_1722 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)))
-- Data.Nat.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1724 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)
-- Data.Nat.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1726 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_1728 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1728 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1728 v3
du_isUnitalMagma_1728 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1730 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1730 = erased
-- Data.Nat.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1732 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))))
-- Data.Nat.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_1734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1734 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1734 v3
du_isPartialEquivalence_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1734 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsNearSemiring.refl
d_refl_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1736 = erased
-- Data.Nat.Properties._.IsNearSemiring.reflexive
d_reflexive_1738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1738 = erased
-- Data.Nat.Properties._.IsNearSemiring.setoid
d_setoid_1740 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1740 ~v0 ~v1 ~v2 v3 = du_setoid_1740 v3
du_setoid_1740 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1740 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Nat.Properties._.IsNearSemiring.sym
d_sym_1742 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1742 = erased
-- Data.Nat.Properties._.IsNearSemiring.trans
d_trans_1744 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1744 = erased
-- Data.Nat.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1746 = erased
-- Data.Nat.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1750 = erased
-- Data.Nat.Properties._.IsNearring.*-cong
d_'42''45'cong_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1752 = erased
-- Data.Nat.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1754 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1754 = erased
-- Data.Nat.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1756 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1756 = erased
-- Data.Nat.Properties._.IsNearring.*-identity
d_'42''45'identity_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.identityʳ
d_identity'691'_1760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1760 = erased
-- Data.Nat.Properties._.IsNearring.identityˡ
d_identity'737'_1762 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1762 = erased
-- Data.Nat.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_1764 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1764 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1764 v5
du_'42''45'isMagma_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_1766 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1766 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1766 v5
du_'42''45'isMonoid_1766 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_1768 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1768 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1768 v5
du_'42''45'isSemigroup_1768 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.assoc
d_assoc_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1770 = erased
-- Data.Nat.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1772 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1772 = erased
-- Data.Nat.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1774 = erased
-- Data.Nat.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1776 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1776 = erased
-- Data.Nat.Properties._.IsNearring.identity
d_identity_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Nat.Properties._.IsNearring.identityʳ
d_identity'691'_1780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1780 = erased
-- Data.Nat.Properties._.IsNearring.identityˡ
d_identity'737'_1782 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1782 = erased
-- Data.Nat.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2580 (coe v0)
-- Data.Nat.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_1786 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_1786 = erased
-- Data.Nat.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_1788 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_1788 = erased
-- Data.Nat.Properties._.IsNearring.isMagma
d_isMagma_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))))
-- Data.Nat.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1792 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.isSemigroup
d_isSemigroup_1794 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Nat.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_1796 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1796 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1796 v5
du_isUnitalMagma_1796 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1796 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v1)))
-- Data.Nat.Properties._.IsNearring.distrib
d_distrib_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2230
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.distribʳ
d_distrib'691'_1800 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1800 = erased
-- Data.Nat.Properties._.IsNearring.distribˡ
d_distrib'737'_1802 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1802 = erased
-- Data.Nat.Properties._.IsNearring.identityʳ
d_identity'691'_1804 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1804 = erased
-- Data.Nat.Properties._.IsNearring.identityˡ
d_identity'737'_1806 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1806 = erased
-- Data.Nat.Properties._.IsNearring.isEquivalence
d_isEquivalence_1808 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))))
-- Data.Nat.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_1810 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1810 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1810 v5
du_isPartialEquivalence_1810 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1810 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Nat.Properties._.IsNearring.isQuasiring
d_isQuasiring_1812 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200
d_isQuasiring_1812 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)
-- Data.Nat.Properties._.IsNearring.refl
d_refl_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1814 = erased
-- Data.Nat.Properties._.IsNearring.reflexive
d_reflexive_1816 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1816 = erased
-- Data.Nat.Properties._.IsNearring.setoid
d_setoid_1818 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1818 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1818 v5
du_setoid_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1818 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Nat.Properties._.IsNearring.sym
d_sym_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1820 = erased
-- Data.Nat.Properties._.IsNearring.trans
d_trans_1822 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1822 = erased
-- Data.Nat.Properties._.IsNearring.zero
d_zero_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2232
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Nat.Properties._.IsNearring.zeroʳ
d_zero'691'_1826 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1826 = erased
-- Data.Nat.Properties._.IsNearring.zeroˡ
d_zero'737'_1828 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1828 = erased
-- Data.Nat.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1830 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing._//_
d__'47''47'__1834 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> Integer -> Integer
d__'47''47'__1834 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__1834 v0 v2
du__'47''47'__1834 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__1834 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1836 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1838 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1838 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1840 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1840 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2456 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_1844 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_1844 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_1846 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_1846 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_1848 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1848 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2536 v5
-- Data.Nat.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_1850 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_'42''45'isUnitalMagma_1850 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542 v5
-- Data.Nat.Properties._.IsNonAssociativeRing.assoc
d_assoc_1852 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1852 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.comm
d_comm_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1854 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1856 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1856 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1858 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1858 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1860 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1860 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.identity
d_identity_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
               (coe v0))))
-- Data.Nat.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_1864 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1864 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_1866 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1866 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
      (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_1870 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1870 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1870 v5
du_isCommutativeMagma_1870 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1870 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_1872 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_1872 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_1872 v5
du_isCommutativeMonoid_1872 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_1872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Nat.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_1874 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1874 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1874 v5
du_isCommutativeSemigroup_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1874 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1876 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_1876 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Nat.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_1878 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1878 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_1878 v5
du_isInvertibleMagma_1878 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_1878 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1880 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_1880 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_1880 v5
du_isInvertibleUnitalMagma_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_1880 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
                  (coe v0)))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
            (coe v0)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_1886 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1886 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
               (coe v0))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_1888 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1888 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1888 v5
du_isUnitalMagma_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1888 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Data.Nat.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1890 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.inverse
d_inverse_1892 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1892 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
            (coe v0)))
-- Data.Nat.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_1894 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1894 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_1896 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1896 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.distrib
d_distrib_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1898 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2458 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_1900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1900 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_1902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1902 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1904 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
                     (coe v0))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_1906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1906 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1906 v5
du_isPartialEquivalence_1906 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1906 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.refl
d_refl_1908 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1908 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_1910 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1910 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.setoid
d_setoid_1912 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1912 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1912 v5
du_setoid_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1912 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.sym
d_sym_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1914 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.trans
d_trans_1916 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1916 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1918 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1918 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1920 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1920 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.zero
d_zero_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1922 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2460 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_1924 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1924 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_1926 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1926 = erased
-- Data.Nat.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1930 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1930 = erased
-- Data.Nat.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_1932 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1932 = erased
-- Data.Nat.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_1934 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1934 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1936 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_1938 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1938 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_1940 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1940 = erased
-- Data.Nat.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Nat.Properties._.IsQuasigroup.isMagma
d_isMagma_1944 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1944 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_1946 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1946 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1946 v3
du_isPartialEquivalence_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1946 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1948 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2990 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_1950 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1950 = erased
-- Data.Nat.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_1952 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1952 = erased
-- Data.Nat.Properties._.IsQuasigroup.refl
d_refl_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1954 = erased
-- Data.Nat.Properties._.IsQuasigroup.reflexive
d_reflexive_1956 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1956 = erased
-- Data.Nat.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1958 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2992 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_1960 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1960 = erased
-- Data.Nat.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_1962 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1962 = erased
-- Data.Nat.Properties._.IsQuasigroup.setoid
d_setoid_1964 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1964 ~v0 ~v1 ~v2 v3 = du_setoid_1964 v3
du_setoid_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Nat.Properties._.IsQuasigroup.sym
d_sym_1966 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1966 = erased
-- Data.Nat.Properties._.IsQuasigroup.trans
d_trans_1968 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1968 = erased
-- Data.Nat.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1970 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1970 = erased
-- Data.Nat.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_1972 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1972 = erased
-- Data.Nat.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_1974 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1974 = erased
-- Data.Nat.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1978 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1978 = erased
-- Data.Nat.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1980 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1980 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_1982 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1982 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_1984 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1984 = erased
-- Data.Nat.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.identityʳ
d_identity'691'_1988 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1988 = erased
-- Data.Nat.Properties._.IsQuasiring.identityˡ
d_identity'737'_1990 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1990 = erased
-- Data.Nat.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_1992 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1992 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282 v4
-- Data.Nat.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_1994 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1994 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286 v4
-- Data.Nat.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_1996 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1996 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284 v4
-- Data.Nat.Properties._.IsQuasiring.assoc
d_assoc_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1998 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2000 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2000 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2002 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2002 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2004 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2004 = erased
-- Data.Nat.Properties._.IsQuasiring.identity
d_identity_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.identityʳ
d_identity'691'_2008 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2008 = erased
-- Data.Nat.Properties._.IsQuasiring.identityˡ
d_identity'737'_2010 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2010 = erased
-- Data.Nat.Properties._.IsQuasiring.isMagma
d_isMagma_2012 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2012 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)))
-- Data.Nat.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2014 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_2014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2016 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2018 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2018 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2018 v4
du_isUnitalMagma_2018 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2018 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.distrib
d_distrib_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2020 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2230 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2022 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2022 = erased
-- Data.Nat.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2024 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2024 = erased
-- Data.Nat.Properties._.IsQuasiring.identityʳ
d_identity'691'_2026 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2026 = erased
-- Data.Nat.Properties._.IsQuasiring.identityˡ
d_identity'737'_2028 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2028 = erased
-- Data.Nat.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_2030 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))))
-- Data.Nat.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2032 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2032 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2032 v4
du_isPartialEquivalence_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2032 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsQuasiring.refl
d_refl_2034 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2034 = erased
-- Data.Nat.Properties._.IsQuasiring.reflexive
d_reflexive_2036 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2036 = erased
-- Data.Nat.Properties._.IsQuasiring.setoid
d_setoid_2038 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2038 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2038 v4
du_setoid_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2038 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Nat.Properties._.IsQuasiring.sym
d_sym_2040 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2040 = erased
-- Data.Nat.Properties._.IsQuasiring.trans
d_trans_2042 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2042 = erased
-- Data.Nat.Properties._.IsQuasiring.zero
d_zero_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2044 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2232 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2046 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2046 = erased
-- Data.Nat.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2048 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2048 = erased
-- Data.Nat.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2052 = erased
-- Data.Nat.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2054 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2054 = erased
-- Data.Nat.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2056 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2056 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2058 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2060 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2060 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2062 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2062 = erased
-- Data.Nat.Properties._.IsRightBolLoop.identity
d_identity_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2064 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Nat.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2066 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2066 = erased
-- Data.Nat.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2068 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2068 = erased
-- Data.Nat.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))))
-- Data.Nat.Properties._.IsRightBolLoop.isLoop
d_isLoop_2072 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_2072 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)
-- Data.Nat.Properties._.IsRightBolLoop.isMagma
d_isMagma_2074 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2074 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2076 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2076 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2076 v4
du_isPartialEquivalence_2076 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2076 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Data.Nat.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2078 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_2078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Nat.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2082 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2082 = erased
-- Data.Nat.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2084 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2084 = erased
-- Data.Nat.Properties._.IsRightBolLoop.refl
d_refl_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2086 = erased
-- Data.Nat.Properties._.IsRightBolLoop.reflexive
d_reflexive_2088 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2088 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightBol
d_rightBol_2090 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2090 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2092 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2094 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2094 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2096 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2096 = erased
-- Data.Nat.Properties._.IsRightBolLoop.setoid
d_setoid_2098 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2098 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2098 v4
du_setoid_2098 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2098 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Nat.Properties._.IsRightBolLoop.sym
d_sym_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2100 = erased
-- Data.Nat.Properties._.IsRightBolLoop.trans
d_trans_2102 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2102 = erased
-- Data.Nat.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2104 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2104 = erased
-- Data.Nat.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2106 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2106 = erased
-- Data.Nat.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2108 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2108 = erased
-- Data.Nat.Properties._.IsRing._//_
d__'47''47'__2112 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> Integer -> Integer
d__'47''47'__2112 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2112 v0 v2
du__'47''47'__2112 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2112 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsRing.*-assoc
d_'42''45'assoc_2114 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2114 = erased
-- Data.Nat.Properties._.IsRing.*-cong
d_'42''45'cong_2116 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2116 = erased
-- Data.Nat.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2118 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2118 = erased
-- Data.Nat.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2120 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2120 = erased
-- Data.Nat.Properties._.IsRing.*-identity
d_'42''45'identity_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700 (coe v0)
-- Data.Nat.Properties._.IsRing.identityʳ
d_identity'691'_2124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2124 = erased
-- Data.Nat.Properties._.IsRing.identityˡ
d_identity'737'_2126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2126 = erased
-- Data.Nat.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2128 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2128 v0 v1 v2 v3 v5
du_'42''45'isMagma_2128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_2128 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2130 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 v0 v1 v2
      v3 v5
-- Data.Nat.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2132 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2132 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_2132 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsRing.assoc
d_assoc_2134 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2134 = erased
-- Data.Nat.Properties._.IsRing.comm
d_comm_2136 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2136 = erased
-- Data.Nat.Properties._.IsRing.∙-cong
d_'8729''45'cong_2138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2138 = erased
-- Data.Nat.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2140 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2140 = erased
-- Data.Nat.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2142 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2142 = erased
-- Data.Nat.Properties._.IsRing.identity
d_identity_2144 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2144 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2144 v5
du_identity_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v0))))
-- Data.Nat.Properties._.IsRing.identityʳ
d_identity'691'_2146 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2146 = erased
-- Data.Nat.Properties._.IsRing.identityˡ
d_identity'737'_2148 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2148 = erased
-- Data.Nat.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe v0)
-- Data.Nat.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2152 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2152 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2152 v5
du_isCommutativeMagma_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2152 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe v3)))))
-- Data.Nat.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2154 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2154 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2154 v5
du_isCommutativeMonoid_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2154 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v1)))
-- Data.Nat.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2156 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2156 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2156 v5
du_isCommutativeSemigroup_2156 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2156 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
               (coe v2))))
-- Data.Nat.Properties._.IsRing.isGroup
d_isGroup_2158 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2158 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2158 v5
du_isGroup_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_isGroup_2158 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
         (coe v0))
-- Data.Nat.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_2160 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2160 v5
du_isInvertibleMagma_2160 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_2160 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2))))
-- Data.Nat.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_2162 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2162 v5
du_isInvertibleUnitalMagma_2162 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_2162 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2))))
-- Data.Nat.Properties._.IsRing.isMagma
d_isMagma_2164 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2164 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2164 v5
du_isMagma_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_2164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                  (coe v0)))))
-- Data.Nat.Properties._.IsRing.isMonoid
d_isMonoid_2166 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2166 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2166 v5
du_isMonoid_2166 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_2166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v0)))
-- Data.Nat.Properties._.IsRing.isSemigroup
d_isSemigroup_2168 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2168 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2168 v5
du_isSemigroup_2168 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_2168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v0))))
-- Data.Nat.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2170 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2170 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2170 v5
du_isUnitalMagma_2170 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2170 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v3)))))
-- Data.Nat.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2172 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2172 = erased
-- Data.Nat.Properties._.IsRing.inverse
d_inverse_2174 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2174 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2174 v5
du_inverse_2174 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2174 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v0)))
-- Data.Nat.Properties._.IsRing.inverseʳ
d_inverse'691'_2176 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2176 = erased
-- Data.Nat.Properties._.IsRing.inverseˡ
d_inverse'737'_2178 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2178 = erased
-- Data.Nat.Properties._.IsRing.distrib
d_distrib_2180 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2180 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2702 (coe v0)
-- Data.Nat.Properties._.IsRing.distribʳ
d_distrib'691'_2182 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2182 = erased
-- Data.Nat.Properties._.IsRing.distribˡ
d_distrib'737'_2184 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2184 = erased
-- Data.Nat.Properties._.IsRing.isEquivalence
d_isEquivalence_2186 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2186 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2186 v5
du_isEquivalence_2186 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                     (coe v0))))))
-- Data.Nat.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2188 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2188 v0 v1 v2 v3 v5
du_isNearSemiring_2188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2188 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Nat.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2190 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2190 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2190 v5
du_isPartialEquivalence_2190 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2190 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))))))))
-- Data.Nat.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2192 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_2192 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 v5
-- Data.Nat.Properties._.IsRing.isSemiring
d_isSemiring_2194 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_2194 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 v0 v1 v2 v3 v5
-- Data.Nat.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2196 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2196 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      v5
-- Data.Nat.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2198 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2198 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2198 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2198 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_2198 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsRing.refl
d_refl_2200 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2200 = erased
-- Data.Nat.Properties._.IsRing.reflexive
d_reflexive_2202 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2202 = erased
-- Data.Nat.Properties._.IsRing.setoid
d_setoid_2204 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2204 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2204 v5
du_setoid_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2204 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Data.Nat.Properties._.IsRing.sym
d_sym_2206 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2206 = erased
-- Data.Nat.Properties._.IsRing.trans
d_trans_2208 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2208 = erased
-- Data.Nat.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2210 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2210 = erased
-- Data.Nat.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2212 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2212 = erased
-- Data.Nat.Properties._.IsRing.zero
d_zero_2214 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2214 v0 v1 v2 v3 ~v4 v5 = du_zero_2214 v0 v1 v2 v3 v5
du_zero_2214 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2214 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Nat.Properties._.IsRing.zeroʳ
d_zero'691'_2216 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2216 = erased
-- Data.Nat.Properties._.IsRing.zeroˡ
d_zero'737'_2218 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2218 = erased
-- Data.Nat.Properties._.IsRingWithoutOne._//_
d__'47''47'__2222 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> Integer -> Integer
d__'47''47'__2222 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2222 v0 v2
du__'47''47'__2222 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2222 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2224 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2224 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2226 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2228 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2228 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2230 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2230 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2232 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2232 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2234 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsRingWithoutOne.assoc
d_assoc_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2236 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.comm
d_comm_2238 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2238 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2240 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2240 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2242 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2242 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2244 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2244 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.identity
d_identity_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v0))))
-- Data.Nat.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2248 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2248 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2250 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2250 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2252 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
      (coe v0)
-- Data.Nat.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2254 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2254 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2254 v4
du_isCommutativeMagma_2254 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2254 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Nat.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2256 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2256 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMonoid_2256 v4
du_isCommutativeMonoid_2256 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Nat.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2258 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2258 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2258 v4
du_isCommutativeSemigroup_2258 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2258 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Data.Nat.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Nat.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2262 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_2262 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleMagma_2262 v4
du_isInvertibleMagma_2262 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_2262 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Nat.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2264 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_2264 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleUnitalMagma_2264 v4
du_isInvertibleUnitalMagma_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_2264 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Nat.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                  (coe v0)))))
-- Data.Nat.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v0)))
-- Data.Nat.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2270 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v0))))
-- Data.Nat.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2272 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2272 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2272 v4
du_isUnitalMagma_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2272 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Data.Nat.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2274 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2274 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.inverse
d_inverse_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v0)))
-- Data.Nat.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2278 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2278 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2280 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2280 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.distrib
d_distrib_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2282 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2330 (coe v0)
-- Data.Nat.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2284 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2284 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2286 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2286 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                     (coe v0))))))
-- Data.Nat.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2290 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2290
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408
-- Data.Nat.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2292 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2292 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2292 v4
du_isPartialEquivalence_2292 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2292 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Data.Nat.Properties._.IsRingWithoutOne.refl
d_refl_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2294 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2296 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2296 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.setoid
d_setoid_2298 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2298 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2298 v4
du_setoid_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2298 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Nat.Properties._.IsRingWithoutOne.sym
d_sym_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2300 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.trans
d_trans_2302 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2302 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2304 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2304 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2306 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2306 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.zero
d_zero_2308 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2308 = coe MAlonzo.Code.Algebra.Structures.du_zero_2406
-- Data.Nat.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2310 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2310 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2312 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2312 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2316 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Nat.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2318 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0)
-- Data.Nat.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2320 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2320 ~v0 v1
  = du_isPartialEquivalence_2320 v1
du_isPartialEquivalence_2320 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2320 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsSelectiveMagma.refl
d_refl_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2322 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2324 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2324 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.sel
d_sel_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_446 (coe v0)
-- Data.Nat.Properties._.IsSelectiveMagma.setoid
d_setoid_2328 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2328 ~v0 v1 = du_setoid_2328 v1
du_setoid_2328 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Nat.Properties._.IsSelectiveMagma.sym
d_sym_2330 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2330 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.trans
d_trans_2332 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2332 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2334 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2334 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2336 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2336 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2338 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2338 = erased
-- Data.Nat.Properties._.IsSemigroup.assoc
d_assoc_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2342 = erased
-- Data.Nat.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2344 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Nat.Properties._.IsSemigroup.isMagma
d_isMagma_2346 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2346 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Data.Nat.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2348 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2348 ~v0 v1
  = du_isPartialEquivalence_2348 v1
du_isPartialEquivalence_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2348 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsSemigroup.refl
d_refl_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2350 = erased
-- Data.Nat.Properties._.IsSemigroup.reflexive
d_reflexive_2352 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2352 = erased
-- Data.Nat.Properties._.IsSemigroup.setoid
d_setoid_2354 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2354 ~v0 v1 = du_setoid_2354 v1
du_setoid_2354 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2354 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Nat.Properties._.IsSemigroup.sym
d_sym_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2356 = erased
-- Data.Nat.Properties._.IsSemigroup.trans
d_trans_2358 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2358 = erased
-- Data.Nat.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2360 = erased
-- Data.Nat.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2362 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2362 = erased
-- Data.Nat.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2364 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2364 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2368 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Nat.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2370 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2370 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0)
-- Data.Nat.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2372 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2372 ~v0 v1
  = du_isPartialEquivalence_2372 v1
du_isPartialEquivalence_2372 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2372 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsSemimedialMagma.refl
d_refl_2374 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2374 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2376 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2376 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2378 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2378 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_406 (coe v0)
-- Data.Nat.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2380 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2380 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2382 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2382 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.setoid
d_setoid_2384 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2384 ~v0 v1 = du_setoid_2384 v1
du_setoid_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Nat.Properties._.IsSemimedialMagma.sym
d_sym_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2386 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.trans
d_trans_2388 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2388 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2390 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2390 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2392 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2392 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2394 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2394 = erased
-- Data.Nat.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2398 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2398 = erased
-- Data.Nat.Properties._.IsSemiring.*-cong
d_'42''45'cong_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2400 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2402 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2402 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2404 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2404 = erased
-- Data.Nat.Properties._.IsSemiring.*-identity
d_'42''45'identity_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.identityʳ
d_identity'691'_2408 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2408 = erased
-- Data.Nat.Properties._.IsSemiring.identityˡ
d_identity'737'_2410 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2410 = erased
-- Data.Nat.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2412 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2412 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_2412 v4
du_'42''45'isMagma_2412 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_2412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2414 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2414 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_2414 v4
du_'42''45'isMonoid_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_2414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2416 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_2416 v4
du_'42''45'isSemigroup_2416 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_2416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.assoc
d_assoc_2418 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2418 = erased
-- Data.Nat.Properties._.IsSemiring.comm
d_comm_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2420 = erased
-- Data.Nat.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2422 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2422 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2424 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2424 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2426 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2426 = erased
-- Data.Nat.Properties._.IsSemiring.identity
d_identity_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v0))))
-- Data.Nat.Properties._.IsSemiring.identityʳ
d_identity'691'_2430 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2430 = erased
-- Data.Nat.Properties._.IsSemiring.identityˡ
d_identity'737'_2432 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2432 = erased
-- Data.Nat.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2434 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2434 v4
du_isCommutativeMagma_2434 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2434 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Data.Nat.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2436 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2438 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2438 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2438 v4
du_isCommutativeSemigroup_2438 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2438 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v1)))
-- Data.Nat.Properties._.IsSemiring.isMagma
d_isMagma_2440 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiring.isMonoid
d_isMonoid_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v0)))
-- Data.Nat.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v0))))
-- Data.Nat.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2446 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2446 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2446 v4
du_isUnitalMagma_2446 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2446 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2))))
-- Data.Nat.Properties._.IsSemiring.distrib
d_distrib_2448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.distribʳ
d_distrib'691'_2450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2450 = erased
-- Data.Nat.Properties._.IsSemiring.distribˡ
d_distrib'737'_2452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2452 = erased
-- Data.Nat.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe v0))))))
-- Data.Nat.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2456 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2456 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_2456 v4
du_isNearSemiring_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2458 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2458 v4
du_isPartialEquivalence_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2458 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Data.Nat.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe v0)
-- Data.Nat.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2462 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680 v4
-- Data.Nat.Properties._.IsSemiring.refl
d_refl_2464 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2464 = erased
-- Data.Nat.Properties._.IsSemiring.reflexive
d_reflexive_2466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2466 = erased
-- Data.Nat.Properties._.IsSemiring.setoid
d_setoid_2468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2468 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2468 v4
du_setoid_2468 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2468 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Data.Nat.Properties._.IsSemiring.sym
d_sym_2470 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2470 = erased
-- Data.Nat.Properties._.IsSemiring.trans
d_trans_2472 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2472 = erased
-- Data.Nat.Properties._.IsSemiring.zero
d_zero_2474 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2474 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1606 (coe v0)
-- Data.Nat.Properties._.IsSemiring.zeroʳ
d_zero'691'_2476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2476 = erased
-- Data.Nat.Properties._.IsSemiring.zeroˡ
d_zero'737'_2478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2478 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2482 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2482 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2484 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2486 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2486 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2488 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2488 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2490 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2490 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2492 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2492 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2494 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2496 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2496 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566 v4
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2498 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570 v4
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2500 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2500 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568 v4
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2502 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2502 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2504 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2504 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2506 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2506 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2508 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2508 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2510 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2512 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2512 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2514 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2514 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2516 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2516 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2518 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2518 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2518 v4
du_isCommutativeMagma_2518 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2518 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2520 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2522 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2522 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2522 v4
du_isCommutativeSemigroup_2522 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2524 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v0))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2526 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2528 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2530 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2530 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2530 v4
du_isUnitalMagma_2530 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2530 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2532 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2532 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1516 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2534 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2534 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2536 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2538 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2540 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2540 v4
du_isPartialEquivalence_2540 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2540 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2542 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2542 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2544 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2546 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2546 v4
du_setoid_2546 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2546 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2548 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2548 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2550 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2550 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2554 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2554 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2556 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2556 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2558 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2558 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2560 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2560 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2562 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2562 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366 v3
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2564 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368 v3
-- Data.Nat.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2566 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2566 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.comm
d_comm_2568 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2568 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2570 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2570 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2572 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2574 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2574 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.identity
d_identity_2576 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2576 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2578 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2580 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2582 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_2582 v3
du_isCommutativeMagma_2582 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2582 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Nat.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2584 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2584 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2586 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_2586 v3
du_isCommutativeSemigroup_2586 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2588 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2590 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2590 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1322 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2592 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2594 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.isEquivalence
d_isEquivalence_2596 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2598 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2598 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384 v3
-- Data.Nat.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2600 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2600 v3
du_isPartialEquivalence_2600 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2600 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
                     (coe v0))))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.refl
d_refl_2602 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2602 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2604 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2604 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2606 ~v0 ~v1 ~v2 v3 = du_setoid_2606 v3
du_setoid_2606 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2606 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.sym
d_sym_2608 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2608 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.trans
d_trans_2610 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2610 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.zero
d_zero_2612 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2612 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1324 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2614 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2614 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2616 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2616 = erased
-- Data.Nat.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2620 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2620 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0)
-- Data.Nat.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2622 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2622 ~v0 ~v1 v2
  = du_isPartialEquivalence_2622 v2
du_isPartialEquivalence_2622 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2622 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0))
-- Data.Nat.Properties._.IsSuccessorSet.refl
d_refl_2624 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2624 = erased
-- Data.Nat.Properties._.IsSuccessorSet.reflexive
d_reflexive_2626 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2626 = erased
-- Data.Nat.Properties._.IsSuccessorSet.setoid
d_setoid_2628 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2628 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_172 v2
-- Data.Nat.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2630 = erased
-- Data.Nat.Properties._.IsSuccessorSet.sym
d_sym_2632 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2632 = erased
-- Data.Nat.Properties._.IsSuccessorSet.trans
d_trans_2634 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2634 = erased
-- Data.Nat.Properties._.IsUnitalMagma.identity
d_identity_2638 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2638 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_654 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2640 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2640 = erased
-- Data.Nat.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2642 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2642 = erased
-- Data.Nat.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Nat.Properties._.IsUnitalMagma.isMagma
d_isMagma_2646 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2646 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2648 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2648 ~v0 ~v1 v2
  = du_isPartialEquivalence_2648 v2
du_isPartialEquivalence_2648 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2648 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Nat.Properties._.IsUnitalMagma.refl
d_refl_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2650 = erased
-- Data.Nat.Properties._.IsUnitalMagma.reflexive
d_reflexive_2652 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2652 = erased
-- Data.Nat.Properties._.IsUnitalMagma.setoid
d_setoid_2654 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2654 ~v0 ~v1 v2 = du_setoid_2654 v2
du_setoid_2654 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Nat.Properties._.IsUnitalMagma.sym
d_sym_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2656 = erased
-- Data.Nat.Properties._.IsUnitalMagma.trans
d_trans_2658 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2658 = erased
-- Data.Nat.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2660 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2660 = erased
-- Data.Nat.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2662 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2662 = erased
-- Data.Nat.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2664 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2664 = erased
-- Data.Nat.Properties.nonZero?
d_nonZero'63'_2674 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonZero'63'_2674 v0
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
                   MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Nat.Properties.nonTrivial?
d_nonTrivial'63'_2678 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonTrivial'63'_2678 v0
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
                   MAlonzo.Code.Data.Nat.Base.C_NonTrivial'46'constructor_5661
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Nat.Properties.suc-injective
d_suc'45'injective_2682 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_2682 = erased
-- Data.Nat.Properties.≡ᵇ⇒≡
d_'8801''7495''8658''8801'_2688 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7495''8658''8801'_2688 = erased
-- Data.Nat.Properties.≡⇒≡ᵇ
d_'8801''8658''8801''7495'_2700 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8658''8801''7495'_2700 v0 ~v1 ~v2
  = du_'8801''8658''8801''7495'_2700 v0
du_'8801''8658''8801''7495'_2700 :: Integer -> AgdaAny
du_'8801''8658''8801''7495'_2700 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'8801''8658''8801''7495'_2700 (coe v1))
-- Data.Nat.Properties._≟_
d__'8799'__2710 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2710 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      erased (\ v2 -> coe du_'8801''8658''8801''7495'_2700 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
         (coe eqInt (coe v0) (coe v1)))
-- Data.Nat.Properties.≡-irrelevant
d_'8801''45'irrelevant_2716 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'irrelevant_2716 = erased
-- Data.Nat.Properties.≟-diag
d_'8799''45'diag_2720 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45'diag_2720 = erased
-- Data.Nat.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_2722 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8801''45'isDecEquivalence_2722
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_3083
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (coe d__'8799'__2710)
-- Data.Nat.Properties.≡-decSetoid
d_'8801''45'decSetoid_2724 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
d_'8801''45'decSetoid_2724
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1435
      d_'8801''45'isDecEquivalence_2722
-- Data.Nat.Properties.0≢1+n
d_0'8802'1'43'n_2726 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_0'8802'1'43'n_2726 = erased
-- Data.Nat.Properties.1+n≢0
d_1'43'n'8802'0_2728 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8802'0_2728 = erased
-- Data.Nat.Properties.1+n≢n
d_1'43'n'8802'n_2730 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8802'n_2730 = erased
-- Data.Nat.Properties.<ᵇ⇒<
d_'60''7495''8658''60'_2738 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''7495''8658''60'_2738 v0 ~v1 ~v2
  = du_'60''7495''8658''60'_2738 v0
du_'60''7495''8658''60'_2738 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''7495''8658''60'_2738 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'60''7495''8658''60'_2738 (coe v1)))
-- Data.Nat.Properties.<⇒<ᵇ
d_'60''8658''60''7495'_2750 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_'60''8658''60''7495'_2750 ~v0 ~v1 v2
  = du_'60''8658''60''7495'_2750 v2
du_'60''8658''60''7495'_2750 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_'60''8658''60''7495'_2750 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    du_'60''8658''60''7495'_2750
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<ᵇ-reflects-<
d_'60''7495''45'reflects'45''60'_2758 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_'60''7495''45'reflects'45''60'_2758 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_132
      (coe ltInt (coe v0) (coe v1))
      (\ v2 -> coe du_'60''7495''8658''60'_2738 (coe v0))
      (coe du_'60''8658''60''7495'_2750)
-- Data.Nat.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_2768 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''7495''8658''8804'_2768 v0 ~v1 ~v2
  = du_'8804''7495''8658''8804'_2768 v0
du_'8804''7495''8658''8804'_2768 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''7495''8658''8804'_2768 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'60''7495''8658''60'_2738 (coe v1))
-- Data.Nat.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_2780 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_'8804''8658''8804''7495'_2780 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_2780 v2
du_'8804''8658''8804''7495'_2780 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_'8804''8658''8804''7495'_2780 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> coe
             du_'60''8658''60''7495'_2750
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤ᵇ-reflects-≤
d_'8804''7495''45'reflects'45''8804'_2788 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_'8804''7495''45'reflects'45''8804'_2788 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_132
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
      (\ v2 -> coe du_'8804''7495''8658''8804'_2768 (coe v0))
      (coe du_'8804''8658''8804''7495'_2780)
-- Data.Nat.Properties.≤-reflexive
d_'8804''45'reflexive_2794 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'reflexive_2794 v0 ~v1 ~v2
  = du_'8804''45'reflexive_2794 v0
du_'8804''45'reflexive_2794 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'reflexive_2794 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'8804''45'reflexive_2794 (coe v1)))
-- Data.Nat.Properties.≤-refl
d_'8804''45'refl_2798 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'refl_2798 v0 = coe du_'8804''45'reflexive_2794 (coe v0)
-- Data.Nat.Properties.≤-antisym
d_'8804''45'antisym_2800 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_2800 = erased
-- Data.Nat.Properties.≤-trans
d_'8804''45'trans_2806 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'trans_2806 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_2806 v3 v4
du_'8804''45'trans_2806 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'trans_2806 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''45'trans_2806 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-total
d_'8804''45'total_2812 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_2812 v0 v1
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
                          (d_'8804''45'total_2812 (coe v2) (coe v3))))
-- Data.Nat.Properties.≤-irrelevant
d_'8804''45'irrelevant_2818 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_2818 = erased
-- Data.Nat.Properties._≤?_
d__'8804''63'__2824 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__2824 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (\ v2 -> coe du_'8804''7495''8658''8804'_2768 (coe v0))
      (coe du_'8804''8658''8804''7495'_2780)
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
         (coe
            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1)))
-- Data.Nat.Properties._≥?_
d__'8805''63'__2830 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__2830 v0 v1
  = coe d__'8804''63'__2824 (coe v1) (coe v0)
-- Data.Nat.Properties.≤-isPreorder
d_'8804''45'isPreorder_2832 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_2832
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_2794 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_2806 v3 v4)
-- Data.Nat.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_2834 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_2834
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8325
      (coe d_'8804''45'isPreorder_2832) (coe d_'8804''45'total_2812)
-- Data.Nat.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_2836 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_'8804''45'isPartialOrder_2836
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_11935
      (coe d_'8804''45'isPreorder_2832) erased
-- Data.Nat.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_2838 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_'8804''45'isTotalOrder_2838
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_22821
      (coe d_'8804''45'isPartialOrder_2836) (coe d_'8804''45'total_2812)
-- Data.Nat.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_2840 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_'8804''45'isDecTotalOrder_2840
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_24961
      (coe d_'8804''45'isTotalOrder_2838) (coe d__'8799'__2710)
      (coe d__'8804''63'__2824)
-- Data.Nat.Properties.≤-preorder
d_'8804''45'preorder_2842 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_'8804''45'preorder_2842
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2331
      d_'8804''45'isPreorder_2832
-- Data.Nat.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_2844 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232
d_'8804''45'totalPreorder_2844
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4405
      d_'8804''45'isTotalPreorder_2834
-- Data.Nat.Properties.≤-poset
d_'8804''45'poset_2846 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_'8804''45'poset_2846
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_9149
      d_'8804''45'isPartialOrder_2836
-- Data.Nat.Properties.≤-totalOrder
d_'8804''45'totalOrder_2848 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_'8804''45'totalOrder_2848
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_18801
      d_'8804''45'isTotalOrder_2838
-- Data.Nat.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_2850 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_'8804''45'decTotalOrder_2850
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      d_'8804''45'isDecTotalOrder_2840
-- Data.Nat.Properties.s≤s-injective
d_s'8804's'45'injective_2856 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'8804's'45'injective_2856 = erased
-- Data.Nat.Properties.suc[m]≤n⇒m≤pred[n]
d_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_2858 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_2858 ~v0 v1
  = du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_2858 v1
du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_2858 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_2858 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)
      _ -> coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
-- Data.Nat.Properties.m≤pred[n]⇒suc[m]≤n
d_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_2860 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_2860 v0 ~v1 ~v2
  = du_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_2860 v0
du_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_2860 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_2860 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)
      _ -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
-- Data.Nat.Properties.≤-pred
d_'8804''45'pred_2862 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'pred_2862 ~v0 v1 = du_'8804''45'pred_2862 v1
du_'8804''45'pred_2862 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'pred_2862 v0
  = coe
      du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_2858
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m≤n⇒m≤1+n
d_m'8804'n'8658'm'8804'1'43'n_2864 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'1'43'n_2864 ~v0 ~v1 v2
  = du_m'8804'n'8658'm'8804'1'43'n_2864 v2
du_m'8804'n'8658'm'8804'1'43'n_2864 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'1'43'n_2864 v0 = coe v0
-- Data.Nat.Properties.n≤1+n
d_n'8804'1'43'n_2870 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'1'43'n_2870 v0 = coe d_'8804''45'refl_2798 (coe v0)
-- Data.Nat.Properties.1+n≰n
d_1'43'n'8816'n_2872 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8816'n_2872 = erased
-- Data.Nat.Properties.n≤0⇒n≡0
d_n'8804'0'8658'n'8801'0_2876 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8804'0'8658'n'8801'0_2876 = erased
-- Data.Nat.Properties.n≤1⇒n≡0∨n≡1
d_n'8804'1'8658'n'8801'0'8744'n'8801'1_2878 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_n'8804'1'8658'n'8801'0'8744'n'8801'1_2878 ~v0 v1
  = du_n'8804'1'8658'n'8801'0'8744'n'8801'1_2878 v1
du_n'8804'1'8658'n'8801'0'8744'n'8801'1_2878 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_n'8804'1'8658'n'8801'0'8744'n'8801'1_2878 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> coe
             seq (coe v3) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≤
d_'60''8658''8804'_2880 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'_2880 ~v0 ~v1 v2 = du_'60''8658''8804'_2880 v2
du_'60''8658''8804'_2880 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'_2880 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'60''8658''8804'_2880
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≢
d_'60''8658''8802'_2884 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_2884 = erased
-- Data.Nat.Properties.>⇒≢
d_'62''8658''8802'_2888 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8802'_2888 = erased
-- Data.Nat.Properties.≤⇒≯
d_'8804''8658''8815'_2890 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_2890 = erased
-- Data.Nat.Properties.<⇒≱
d_'60''8658''8817'_2896 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_2896 = erased
-- Data.Nat.Properties.<⇒≯
d_'60''8658''8815'_2902 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8815'_2902 = erased
-- Data.Nat.Properties.≰⇒≮
d_'8816''8658''8814'_2908 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''8658''8814'_2908 = erased
-- Data.Nat.Properties.≰⇒>
d_'8816''8658''62'_2914 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8816''8658''62'_2914 v0 v1 ~v2 = du_'8816''8658''62'_2914 v0 v1
du_'8816''8658''62'_2914 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8816''8658''62'_2914 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
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
                          (coe du_'8816''8658''62'_2914 (coe v2) (coe v3))))
-- Data.Nat.Properties.≰⇒≥
d_'8816''8658''8805'_2926 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8816''8658''8805'_2926 v0 v1 ~v2
  = du_'8816''8658''8805'_2926 v0 v1
du_'8816''8658''8805'_2926 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8816''8658''8805'_2926 v0 v1
  = coe
      du_'60''8658''8804'_2880
      (coe du_'8816''8658''62'_2914 (coe v0) (coe v1))
-- Data.Nat.Properties.≮⇒≥
d_'8814''8658''8805'_2928 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8814''8658''8805'_2928 v0 v1 ~v2
  = du_'8814''8658''8805'_2928 v0 v1
du_'8814''8658''8805'_2928 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8814''8658''8805'_2928 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                       erased
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8814''8658''8805'_2928 (coe v3) (coe v2))))
-- Data.Nat.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_2944 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8743''8802''8658''60'_2944 ~v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_2944 v1 v2
du_'8804''8743''8802''8658''60'_2944 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8743''8802''8658''60'_2944 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased)
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
                       (coe du_'8804''8743''8802''8658''60'_2944 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_2962 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_2962 = erased
-- Data.Nat.Properties.≤-<-connex
d_'8804''45''60''45'connex_2968 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45''60''45'connex_2968 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              (\ v2 -> coe du_'8804''7495''8658''8804'_2768 (coe v0))
              (coe du_'8804''8658''8804''7495'_2780)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
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
                          (coe du_'8816''8658''62'_2914 (coe v0) (coe v1)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≥->-connex
d_'8805''45''62''45'connex_2990 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8805''45''62''45'connex_2990 v0 v1
  = coe d_'8804''45''60''45'connex_2968 (coe v1) (coe v0)
-- Data.Nat.Properties.<-≤-connex
d_'60''45''8804''45'connex_2992 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'60''45''8804''45'connex_2992
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_854
      (coe d_'8804''45''60''45'connex_2968)
-- Data.Nat.Properties.>-≥-connex
d_'62''45''8805''45'connex_2994 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'62''45''8805''45'connex_2994
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_854
      (coe d_'8805''45''62''45'connex_2990)
-- Data.Nat.Properties.<-irrefl
d_'60''45'irrefl_2996 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_2996 = erased
-- Data.Nat.Properties.<-asym
d_'60''45'asym_3000 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3000 = erased
-- Data.Nat.Properties.<-trans
d_'60''45'trans_3006 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans_3006 ~v0 v1 ~v2 v3 v4
  = du_'60''45'trans_3006 v1 v3 v4
du_'60''45'trans_3006 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'trans_3006 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe
                          du_'8804''45'trans_2806 (coe v5)
                          (coe
                             du_'8804''45'trans_2806 (coe d_n'8804'1'43'n_2870 (coe v6))
                             (coe v9)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-<-trans
d_'8804''45''60''45'trans_3012 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45''60''45'trans_3012 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45''60''45'trans_3012 v3 v4
du_'8804''45''60''45'trans_3012 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45''60''45'trans_3012 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_'8804''45'trans_2806 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-≤-trans
d_'60''45''8804''45'trans_3018 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45''8804''45'trans_3018 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45''8804''45'trans_3018 v3 v4
du_'60''45''8804''45'trans_3018 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45''8804''45'trans_3018 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''45'trans_2806 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-cmp
d_'60''45'cmp_3024 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3024 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              erased (\ v2 -> coe du_'8801''8658''8801''7495'_2700 (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
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
                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                       (coe du_'60''7495''8658''60'_2738 (coe v0)))
                             else coe
                                    seq
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                       (coe
                                          du_'8804''8743''8802''8658''60'_2944 (coe v0)
                                          (coe du_'8814''8658''8805'_2928 (coe v0) (coe v1))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties._<?_
d__'60''63'__3056 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3056 v0 v1
  = coe
      d__'8804''63'__2824 (coe addInt (coe (1 :: Integer)) (coe v0))
      (coe v1)
-- Data.Nat.Properties._>?_
d__'62''63'__3062 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__3062 v0 v1 = coe d__'60''63'__3056 (coe v1) (coe v0)
-- Data.Nat.Properties.<-irrelevant
d_'60''45'irrelevant_3064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3064 = erased
-- Data.Nat.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_3066 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_3066
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3072 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_'60''45'isStrictPartialOrder_3072
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_16311
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3006 v1 v3 v4)
      d_'60''45'resp'8322''45''8801'_3066
-- Data.Nat.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3074 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_'60''45'isStrictTotalOrder_3074
  = coe
      MAlonzo.Code.Relation.Binary.Structures.Biased.du_isStrictTotalOrder'7580'_590
      (coe
         MAlonzo.Code.Relation.Binary.Structures.Biased.C_IsStrictTotalOrder'7580''46'constructor_6685
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3006 v1 v3 v4)
         (coe d_'60''45'cmp_3024))
-- Data.Nat.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3076 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
d_'60''45'strictPartialOrder_3076
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_14243
      d_'60''45'isStrictPartialOrder_3072
-- Data.Nat.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3078 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
d_'60''45'strictTotalOrder_3078
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_24345
      d_'60''45'isStrictTotalOrder_3074
-- Data.Nat.Properties.s<s-injective
d_s'60's'45'injective_3084 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'60's'45'injective_3084 = erased
-- Data.Nat.Properties.<-pred
d_'60''45'pred_3086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'pred_3086 ~v0 ~v1 = du_'60''45'pred_3086
du_'60''45'pred_3086 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'pred_3086
  = coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
-- Data.Nat.Properties.m<n⇒m<1+n
d_m'60'n'8658'm'60'1'43'n_3088 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'1'43'n_3088 ~v0 ~v1 v2
  = du_m'60'n'8658'm'60'1'43'n_3088 v2
du_m'60'n'8658'm'60'1'43'n_3088 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'1'43'n_3088 v0
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
                       du_m'60'n'8658'm'60'1'43'n_3088
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.n≮0
d_n'8814'0_3092 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'0_3092 = erased
-- Data.Nat.Properties.n≮n
d_n'8814'n_3096 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'n_3096 = erased
-- Data.Nat.Properties.0<1+n
d_0'60'1'43'n_3100 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_0'60'1'43'n_3100 ~v0 = du_0'60'1'43'n_3100
du_0'60'1'43'n_3100 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_0'60'1'43'n_3100
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Nat.Properties.n<1+n
d_n'60'1'43'n_3104 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'60'1'43'n_3104 v0
  = coe
      d_'8804''45'refl_2798 (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.n<1⇒n≡0
d_n'60'1'8658'n'8801'0_3108 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'60'1'8658'n'8801'0_3108 = erased
-- Data.Nat.Properties.n>0⇒n≢0
d_n'62'0'8658'n'8802'0_3112 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'62'0'8658'n'8802'0_3112 = erased
-- Data.Nat.Properties.n≢0⇒n>0
d_n'8802'0'8658'n'62'0_3116 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8802'0'8658'n'62'0_3116 v0 ~v1
  = du_n'8802'0'8658'n'62'0_3116 v0
du_n'8802'0'8658'n'62'0_3116 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_n'8802'0'8658'n'62'0_3116 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      _ -> coe du_0'60'1'43'n_3100
-- Data.Nat.Properties.m<n⇒0<n
d_m'60'n'8658'0'60'n_3122 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'0'60'n_3122 ~v0 ~v1 = du_m'60'n'8658'0'60'n_3122
du_m'60'n'8658'0'60'n_3122 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'0'60'n_3122
  = coe du_'8804''45'trans_2806 (coe du_0'60'1'43'n_3100)
-- Data.Nat.Properties.m<n⇒n≢0
d_m'60'n'8658'n'8802'0_3124 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'60'n'8658'n'8802'0_3124 = erased
-- Data.Nat.Properties.m<n⇒m≤1+n
d_m'60'n'8658'm'8804'1'43'n_3128 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'8804'1'43'n_3128 ~v0 ~v1 v2
  = du_m'60'n'8658'm'8804'1'43'n_3128 v2
du_m'60'n'8658'm'8804'1'43'n_3128 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'8804'1'43'n_3128 v0
  = coe du_'60''8658''8804'_2880 (coe v0)
-- Data.Nat.Properties.m<1+n⇒m<n∨m≡n
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3134 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3134 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
             _ -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe du_0'60'1'43'n_3100)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> let v7 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Sum.Base.du_map_84
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34) erased
                          (d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3134
                             (coe v3) (coe v7) (coe v6)))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m≤n⇒m<n∨m≡n
d_m'8804'n'8658'm'60'n'8744'm'8801'n_3144 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'8804'n'8658'm'60'n'8744'm'8801'n_3144 v0 v1 v2
  = coe
      d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3134 (coe v0) (coe v1)
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v2)
-- Data.Nat.Properties.m<1+n⇒m≤n
d_m'60'1'43'n'8658'm'8804'n_3148 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'1'43'n'8658'm'8804'n_3148 ~v0 ~v1 v2
  = du_m'60'1'43'n'8658'm'8804'n_3148 v2
du_m'60'1'43'n'8658'm'8804'n_3148 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'1'43'n'8658'm'8804'n_3148 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒n<o
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 v0 v1 ~v2
  = du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 v0 v1
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe du_0'60'1'43'n_3100
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 (coe v3)
                             (coe v2))))
-- Data.Nat.Properties._.rec
d_rec_3176 ::
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
d_rec_3176 = erased
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒n≤o
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 v0 v1 ~v2
  = du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 v0 v1
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                       erased
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 (coe v2)
                             (coe v3))))
-- Data.Nat.Properties._.rec
d_rec_3206 ::
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
d_rec_3206 = erased
-- Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3214 a0 a1 = ()
-- Data.Nat.Properties.≤-Reasoning._._∎
d__'8718'_3216 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3216
  = let v0 = d_'8804''45'isPreorder_2832 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Nat.Properties.≤-Reasoning._.<-go
d_'60''45'go_3218 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3218
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3006 v1 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45''8804''45'trans_3018 v3 v4)
-- Data.Nat.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3220 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3222 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Nat.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3224 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3226 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3226 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3228 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_begin__3228
  = let v0 = d_'8804''45'isPreorder_2832 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_2880 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Nat.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3230 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3232 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3232 = erased
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3234 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_begin__3234
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Nat.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3236 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3236
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Nat.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3240 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3240 = erased
-- Data.Nat.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3242 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_extractStrict_3242 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Nat.Properties.≤-Reasoning._.start
d_start_3250 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_start_3250
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_2832)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_2880 v2)
-- Data.Nat.Properties.≤-Reasoning._.step-<
d_step'45''60'_3252 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3252
  = let v0
          = \ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3006 v1 v3 v4 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160 in
       coe
         (let v2
                = \ v2 v3 v4 v5 v6 -> coe du_'60''45''8804''45'trans_3018 v5 v6 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Nat.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3254 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3254
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3256 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3256 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3256 v2
du_step'45''8801''45''8739'_3256 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3256 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3258 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3258
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3260 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3260
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3262 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3262
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3264 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3264
  = let v0 = d_'8804''45'isPreorder_2832 in
    coe
      (let v1
             = \ v1 v2 v3 v4 v5 -> coe du_'8804''45''60''45'trans_3012 v4 v5 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Nat.Properties.≤-Reasoning._.stop
d_stop_3266 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3266
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_2832)
-- Data.Nat.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3270 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3270
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Nat.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3272 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3272
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_2832)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
-- Data.Nat.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3274 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3274 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3274 v4
du_'8801''45'go_3274 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3274 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3276 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3276
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_2832)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45''60''45'trans_3012 v3 v4)
-- Data.Nat.Properties.+-suc
d_'43''45'suc_3298 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'suc_3298 = erased
-- Data.Nat.Properties.+-assoc
d_'43''45'assoc_3306 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_3306 = erased
-- Data.Nat.Properties.+-identityˡ
d_'43''45'identity'737'_3314 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_3314 = erased
-- Data.Nat.Properties.+-identityʳ
d_'43''45'identity'691'_3316 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_3316 = erased
-- Data.Nat.Properties.+-identity
d_'43''45'identity_3320 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_3320
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-comm
d_'43''45'comm_3322 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_3322 = erased
-- Data.Nat.Properties.+-cancelˡ-≡
d_'43''45'cancel'737''45''8801'_3330 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8801'_3330 = erased
-- Data.Nat.Properties.+-cancelʳ-≡
d_'43''45'cancel'691''45''8801'_3338 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691''45''8801'_3338 = erased
-- Data.Nat.Properties.+-cancel-≡
d_'43''45'cancel'45''8801'_3340 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8801'_3340
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-isMagma
d_'43''45'isMagma_3342 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'43''45'isMagma_3342
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Nat.Properties.+-isSemigroup
d_'43''45'isSemigroup_3344 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'43''45'isSemigroup_3344
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'43''45'isMagma_3342) erased
-- Data.Nat.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_3346 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'43''45'isCommutativeSemigroup_3346
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe d_'43''45'isSemigroup_3344) erased
-- Data.Nat.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_3348 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'0'45'isMonoid_3348
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'43''45'isSemigroup_3344) (coe d_'43''45'identity_3320)
-- Data.Nat.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_3350 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'0'45'isCommutativeMonoid_3350
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'43''45'0'45'isMonoid_3348) erased
-- Data.Nat.Properties.+-magma
d_'43''45'magma_3352 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'43''45'magma_3352
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323 addInt
      d_'43''45'isMagma_3342
-- Data.Nat.Properties.+-semigroup
d_'43''45'semigroup_3354 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'43''45'semigroup_3354
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837 addInt
      d_'43''45'isSemigroup_3344
-- Data.Nat.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_3356 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'43''45'commutativeSemigroup_3356
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      addInt d_'43''45'isCommutativeSemigroup_3346
-- Data.Nat.Properties.+-0-monoid
d_'43''45'0'45'monoid_3358 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'43''45'0'45'monoid_3358
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201 addInt
      (0 :: Integer) d_'43''45'0'45'isMonoid_3348
-- Data.Nat.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_3360 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'0'45'commutativeMonoid_3360
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      addInt (0 :: Integer) d_'43''45'0'45'isCommutativeMonoid_3350
-- Data.Nat.Properties.∸-magma
d_'8760''45'magma_3362 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8760''45'magma_3362
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_magma_20
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Data.Nat.Properties.m≢1+m+n
d_m'8802'1'43'm'43'n_3368 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8802'1'43'm'43'n_3368 = erased
-- Data.Nat.Properties.m≢1+n+m
d_m'8802'1'43'n'43'm_3378 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8802'1'43'n'43'm_3378 = erased
-- Data.Nat.Properties.m+1+n≢m
d_m'43'1'43'n'8802'm_3388 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'm_3388 = erased
-- Data.Nat.Properties.m+1+n≢n
d_m'43'1'43'n'8802'n_3396 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'n_3396 = erased
-- Data.Nat.Properties.m+1+n≢0
d_m'43'1'43'n'8802'0_3410 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'0_3410 = erased
-- Data.Nat.Properties.m+n≡0⇒m≡0
d_m'43'n'8801'0'8658'm'8801'0_3424 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'm'8801'0_3424 = erased
-- Data.Nat.Properties.m+n≡0⇒n≡0
d_m'43'n'8801'0'8658'n'8801'0_3432 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'n'8801'0_3432 = erased
-- Data.Nat.Properties.+-cancelˡ-≤
d_'43''45'cancel'737''45''8804'_3440 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'737''45''8804'_3440 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''8804'_3440 v0 v3
du_'43''45'cancel'737''45''8804'_3440 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'737''45''8804'_3440 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe du_'43''45'cancel'737''45''8804'_3440 (coe v2) (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.+-cancelʳ-≤
d_'43''45'cancel'691''45''8804'_3448 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'691''45''8804'_3448 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''8804'_3448 v0 v3
du_'43''45'cancel'691''45''8804'_3448 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'691''45''8804'_3448 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_3440 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-≤
d_'43''45'cancel'45''8804'_3458 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8804'_3458
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''8804'_3440 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''8804'_3448 v0 v3)
-- Data.Nat.Properties.+-cancelˡ-<
d_'43''45'cancel'737''45''60'_3460 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'737''45''60'_3460 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''60'_3460 v0 v3
du_'43''45'cancel'737''45''60'_3460 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'737''45''60'_3460 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_3440 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancelʳ-<
d_'43''45'cancel'691''45''60'_3470 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'691''45''60'_3470 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''60'_3470 v0 v3
du_'43''45'cancel'691''45''60'_3470 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'691''45''60'_3470 v0 v1
  = coe du_'43''45'cancel'691''45''8804'_3448 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-<
d_'43''45'cancel'45''60'_3480 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''60'_3480
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''60'_3460 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''60'_3470 v0 v3)
-- Data.Nat.Properties.m≤n⇒m≤o+n
d_m'8804'n'8658'm'8804'o'43'n_3484 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'o'43'n_3484 ~v0 ~v1 ~v2 v3
  = du_m'8804'n'8658'm'8804'o'43'n_3484 v3
du_m'8804'n'8658'm'8804'o'43'n_3484 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'o'43'n_3484 v0 = coe v0
-- Data.Nat.Properties.m≤n⇒m≤n+o
d_m'8804'n'8658'm'8804'n'43'o_3494 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'n'43'o_3494 ~v0 ~v1 ~v2 v3
  = du_m'8804'n'8658'm'8804'n'43'o_3494 v3
du_m'8804'n'8658'm'8804'n'43'o_3494 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'n'43'o_3494 v0 = coe v0
-- Data.Nat.Properties.m≤m+n
d_m'8804'm'43'n_3508 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'43'n_3508 v0 ~v1 = du_m'8804'm'43'n_3508 v0
du_m'8804'm'43'n_3508 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'43'n_3508 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'8804'm'43'n_3508 (coe v1)))
-- Data.Nat.Properties.m≤n+m
d_m'8804'n'43'm_3520 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'm_3520 v0 ~v1 = du_m'8804'n'43'm_3520 v0
du_m'8804'n'43'm_3520 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'43'm_3520 v0 = coe du_m'8804'm'43'n_3508 (coe v0)
-- Data.Nat.Properties.m+n≤o⇒m≤o
d_m'43'n'8804'o'8658'm'8804'o_3534 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'm'8804'o_3534 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o_3534 v0 v3
du_m'43'n'8804'o'8658'm'8804'o_3534 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'm'8804'o_3534 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_m'43'n'8804'o'8658'm'8804'o_3534 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m+n≤o⇒n≤o
d_m'43'n'8804'o'8658'n'8804'o_3548 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'n'8804'o_3548 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'n'8804'o_3548 v0 v3
du_m'43'n'8804'o'8658'n'8804'o_3548 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'n'8804'o_3548 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_m'43'n'8804'o'8658'n'8804'o_3548 (coe v2)
                (coe du_'60''8658''8804'_2880 (coe v1)))
-- Data.Nat.Properties.+-mono-≤
d_'43''45'mono'45''8804'_3556 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''8804'_3556 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804'_3556 v3 v4 v5
du_'43''45'mono'45''8804'_3556 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''8804'_3556 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_'8804''45'trans_2806 (coe v2)
             (coe du_m'8804'n'43'm_3520 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_'43''45'mono'45''8804'_3556 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_3570 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'737''45''8804'_3570 v0 ~v1 ~v2 v3
  = du_'43''45'mono'737''45''8804'_3570 v0 v3
du_'43''45'mono'737''45''8804'_3570 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'737''45''8804'_3570 v0 v1
  = coe
      du_'43''45'mono'45''8804'_3556 (coe v0) (coe v1)
      (coe d_'8804''45'refl_2798 (coe v0))
-- Data.Nat.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_3580 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'691''45''8804'_3580 v0 ~v1 v2 v3
  = du_'43''45'mono'691''45''8804'_3580 v0 v2 v3
du_'43''45'mono'691''45''8804'_3580 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'691''45''8804'_3580 v0 v1 v2
  = coe
      du_'43''45'mono'45''8804'_3556 (coe v1)
      (coe d_'8804''45'refl_2798 (coe v0)) (coe v2)
-- Data.Nat.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_3586 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''60''45''8804'_3586 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'43''45'mono'45''60''45''8804'_3586 v4 v5
du_'43''45'mono'45''60''45''8804'_3586 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''60''45''8804'_3586 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v1
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'43''45'mono'45''60''45''8804'_3586
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_3596 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''8804''45''60'_3596 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804''45''60'_3596 v3 v4 v5
du_'43''45'mono'45''8804''45''60'_3596 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''8804''45''60'_3596 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_'8804''45'trans_2806 (coe v2)
             (coe du_m'8804'n'43'm_3520 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe
                du_'43''45'mono'45''8804''45''60'_3596 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-<
d_'43''45'mono'45''60'_3606 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''60'_3606 ~v0 ~v1 ~v2 v3 v4
  = du_'43''45'mono'45''60'_3606 v3 v4
du_'43''45'mono'45''60'_3606 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''60'_3606 v0 v1
  = coe
      du_'43''45'mono'45''8804''45''60'_3596 (coe v0)
      (coe du_'60''8658''8804'_2880 (coe v1))
-- Data.Nat.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_3614 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'737''45''60'_3614 v0 ~v1 ~v2
  = du_'43''45'mono'737''45''60'_3614 v0
du_'43''45'mono'737''45''60'_3614 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'737''45''60'_3614 v0
  = coe du_'43''45'mono'737''45''8804'_3570 (coe v0)
-- Data.Nat.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_3622 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'691''45''60'_3622 v0 ~v1 ~v2 v3
  = du_'43''45'mono'691''45''60'_3622 v0 v3
du_'43''45'mono'691''45''60'_3622 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'691''45''60'_3622 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'43''45'mono'691''45''60'_3622 (coe v2) (coe v1)))
-- Data.Nat.Properties.m+1+n≰m
d_m'43'1'43'n'8816'm_3634 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8816'm_3634 = erased
-- Data.Nat.Properties.m<m+n
d_m'60'm'43'n_3644 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'43'n_3644 v0 ~v1 v2 = du_m'60'm'43'n_3644 v0 v2
du_m'60'm'43'n_3644 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'43'n_3644 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'60'm'43'n_3644 (coe v2) (coe v1)))
-- Data.Nat.Properties.m<n+m
d_m'60'n'43'm_3656 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'43'm_3656 v0 ~v1 v2 = du_m'60'n'43'm_3656 v0 v2
du_m'60'n'43'm_3656 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'43'm_3656 v0 v1
  = coe du_m'60'm'43'n_3644 (coe v0) (coe v1)
-- Data.Nat.Properties.m+n≮n
d_m'43'n'8814'n_3672 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'n'8814'n_3672 = erased
-- Data.Nat.Properties.m+n≮m
d_m'43'n'8814'm_3686 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'n'8814'm_3686 = erased
-- Data.Nat.Properties.*-suc
d_'42''45'suc_3698 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_3698 = erased
-- Data.Nat.Properties.*-identityˡ
d_'42''45'identity'737'_3710 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_3710 = erased
-- Data.Nat.Properties.*-identityʳ
d_'42''45'identity'691'_3714 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_3714 = erased
-- Data.Nat.Properties.*-identity
d_'42''45'identity_3718 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_3718
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-zeroˡ
d_'42''45'zero'737'_3720 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_3720 = erased
-- Data.Nat.Properties.*-zeroʳ
d_'42''45'zero'691'_3722 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_3722 = erased
-- Data.Nat.Properties.*-zero
d_'42''45'zero_3726 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_3726
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-comm
d_'42''45'comm_3728 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_3728 = erased
-- Data.Nat.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_3738 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_3738 = erased
-- Data.Nat.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_3752 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_3752 = erased
-- Data.Nat.Properties.*-distrib-+
d_'42''45'distrib'45''43'_3754 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_3754
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-assoc
d_'42''45'assoc_3756 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_3756 = erased
-- Data.Nat.Properties.*-isMagma
d_'42''45'isMagma_3770 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_3770
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Nat.Properties.*-isSemigroup
d_'42''45'isSemigroup_3772 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_3772
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'42''45'isMagma_3770) erased
-- Data.Nat.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_3774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_3774
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe d_'42''45'isSemigroup_3772) erased
-- Data.Nat.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_3776 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'1'45'isMonoid_3776
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'42''45'isSemigroup_3772) (coe d_'42''45'identity_3718)
-- Data.Nat.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_3778 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'1'45'isCommutativeMonoid_3778
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'42''45'1'45'isMonoid_3776) erased
-- Data.Nat.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_3780 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'43''45''42''45'isSemiring_3780
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe d_'43''45'0'45'isCommutativeMonoid_3350) erased erased
         (coe d_'42''45'identity_3718) (coe d_'42''45'distrib'45''43'_3754))
      (coe d_'42''45'zero_3726)
-- Data.Nat.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_3782 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'43''45''42''45'isCommutativeSemiring_3782
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe d_'43''45''42''45'isSemiring_3780) erased
-- Data.Nat.Properties.*-magma
d_'42''45'magma_3784 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'42''45'magma_3784
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323 mulInt
      d_'42''45'isMagma_3770
-- Data.Nat.Properties.*-semigroup
d_'42''45'semigroup_3786 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'42''45'semigroup_3786
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837 mulInt
      d_'42''45'isSemigroup_3772
-- Data.Nat.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_3788 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'42''45'commutativeSemigroup_3788
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      mulInt d_'42''45'isCommutativeSemigroup_3774
-- Data.Nat.Properties.*-1-monoid
d_'42''45'1'45'monoid_3790 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'1'45'monoid_3790
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201 mulInt
      (1 :: Integer) d_'42''45'1'45'isMonoid_3776
-- Data.Nat.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_3792 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'1'45'commutativeMonoid_3792
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      mulInt (1 :: Integer) d_'42''45'1'45'isCommutativeMonoid_3778
-- Data.Nat.Properties.+-*-semiring
d_'43''45''42''45'semiring_3794 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_'43''45''42''45'semiring_3794
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_42213 addInt
      mulInt (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isSemiring_3780
-- Data.Nat.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_3796 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'43''45''42''45'commutativeSemiring_3796
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      addInt mulInt (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isCommutativeSemiring_3782
-- Data.Nat.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_3806 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_3806 = erased
-- Data.Nat.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_3828 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_3828 = erased
-- Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3848 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3848 v0 ~v1 ~v2
  = du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3848 v0
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3848 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3848 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m*n≢0
d_m'42'n'8802'0_3866 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0_3866 ~v0 ~v1 ~v2 ~v3 = du_m'42'n'8802'0_3866
du_m'42'n'8802'0_3866 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0_3866
  = coe
      MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.m*n≢0⇒m≢0
d_m'42'n'8802'0'8658'm'8802'0_3876 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0'8658'm'8802'0_3876 ~v0 ~v1 ~v2
  = du_m'42'n'8802'0'8658'm'8802'0_3876
du_m'42'n'8802'0'8658'm'8802'0_3876 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0'8658'm'8802'0_3876
  = coe
      MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.m*n≢0⇒n≢0
d_m'42'n'8802'0'8658'n'8802'0_3882 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0'8658'n'8802'0_3882 ~v0 ~v1 ~v2
  = du_m'42'n'8802'0'8658'n'8802'0_3882
du_m'42'n'8802'0'8658'n'8802'0_3882 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0'8658'n'8802'0_3882
  = coe du_m'42'n'8802'0'8658'm'8802'0_3876
-- Data.Nat.Properties.m*n≡0⇒m≡0
d_m'42'n'8801'0'8658'm'8801'0_3898 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'0'8658'm'8801'0_3898 = erased
-- Data.Nat.Properties.m*n≡1⇒m≡1
d_m'42'n'8801'1'8658'm'8801'1_3906 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'm'8801'1_3906 = erased
-- Data.Nat.Properties.m*n≡1⇒n≡1
d_m'42'n'8801'1'8658'n'8801'1_3920 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'n'8801'1_3920 = erased
-- Data.Nat.Properties.[m*n]*[o*p]≡[m*o]*[n*p]
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_3936 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_3936
  = erased
-- Data.Nat.Properties.m≢0∧n>1⇒m*n>1
d_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
d_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4024 ~v0 ~v1 ~v2 ~v3
  = du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4024
du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4024 ::
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4024
  = coe
      MAlonzo.Code.Data.Nat.Base.C_NonTrivial'46'constructor_5661
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.n≢0∧m>1⇒m*n>1
d_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4038 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
d_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4038 ~v0 ~v1 ~v2 ~v3
  = du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4038
du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4038 ::
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4038
  = coe du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4024
-- Data.Nat.Properties.*-cancelʳ-≤
d_'42''45'cancel'691''45''8804'_4056 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'691''45''8804'_4056 v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'691''45''8804'_4056 v0
du_'42''45'cancel'691''45''8804'_4056 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'691''45''8804'_4056 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'42''45'cancel'691''45''8804'_4056 (coe v1)))
-- Data.Nat.Properties.*-cancelˡ-≤
d_'42''45'cancel'737''45''8804'_4070 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'737''45''8804'_4070 v0 ~v1 ~v2 ~v3
  = du_'42''45'cancel'737''45''8804'_4070 v0
du_'42''45'cancel'737''45''8804'_4070 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'737''45''8804'_4070 v0 v1
  = coe du_'42''45'cancel'691''45''8804'_4056 (coe v0)
-- Data.Nat.Properties.*-mono-≤
d_'42''45'mono'45''8804'_4086 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'45''8804'_4086 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''8804'_4086 v1 v3 v4 v5
du_'42''45'mono'45''8804'_4086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'45''8804'_4086 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'43''45'mono'45''8804'_3556 (coe mulInt (coe v7) (coe v1))
                (coe v3)
                (coe
                   du_'42''45'mono'45''8804'_4086 (coe v7) (coe v1) (coe v6)
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-≤
d_'42''45'mono'737''45''8804'_4096 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'737''45''8804'_4096 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804'_4096 v0 v2 v3
du_'42''45'mono'737''45''8804'_4096 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'737''45''8804'_4096 v0 v1 v2
  = coe
      du_'42''45'mono'45''8804'_4086 (coe v1) (coe v0) (coe v2)
      (coe d_'8804''45'refl_2798 (coe v0))
-- Data.Nat.Properties.*-monoʳ-≤
d_'42''45'mono'691''45''8804'_4106 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'691''45''8804'_4106 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804'_4106 v0 v2 v3
du_'42''45'mono'691''45''8804'_4106 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'691''45''8804'_4106 v0 v1 v2
  = coe
      du_'42''45'mono'45''8804'_4086 (coe v0) (coe v1)
      (coe d_'8804''45'refl_2798 (coe v0)) (coe v2)
-- Data.Nat.Properties.*-mono-<
d_'42''45'mono'45''60'_4112 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'45''60'_4112 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''60'_4112 v1 v3 v4 v5
du_'42''45'mono'45''60'_4112 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'45''60'_4112 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe seq (coe v3) (coe du_0'60'1'43'n_3100)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                      -> coe
                           du_'43''45'mono'45''60'_3606
                           (mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12)
                           (coe
                              du_'42''45'mono'45''60'_4112
                              (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-<
d_'42''45'mono'737''45''60'_4126 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'737''45''60'_4126 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60'_4126 v0 v2 v3 v4
du_'42''45'mono'737''45''60'_4126 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'737''45''60'_4126 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26 -> coe du_0'60'1'43'n_3100
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
               -> let v10 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (coe
                       du_'43''45'mono'45''8804''45''60'_3596
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12) (\ v11 -> mulInt (coe v11) (coe v0)) v10
                          (subInt (coe v2) (coe (1 :: Integer))))
                       (coe d_'8804''45'refl_2798 (coe v0))
                       (coe
                          du_'42''45'mono'737''45''60'_4126 (coe v0) (coe v10)
                          (coe subInt (coe v2) (coe (1 :: Integer)))
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoʳ-<
d_'42''45'mono'691''45''60'_4140 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'691''45''60'_4140 v0 ~v1 ~v2 v3 v4
  = du_'42''45'mono'691''45''60'_4140 v0 v3 v4
du_'42''45'mono'691''45''60'_4140 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'691''45''60'_4140 v0 v1 v2
  = case coe v0 of
      1 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
               -> coe
                    du_'43''45'mono'45''8804'_3556 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
               -> coe
                    du_'43''45'mono'45''8804'_3556
                    (coe mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    (coe
                       du_'60''8658''8804'_2880
                       (coe
                          du_'42''45'mono'691''45''60'_4140
                          (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤m*n
d_m'8804'm'42'n_4154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'42'n_4154 v0 v1 ~v2 = du_m'8804'm'42'n_4154 v0 v1
du_m'8804'm'42'n_4154 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'42'n_4154 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2832)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_2880 v4))
      v0 (mulInt (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v2 v3 v4 v5 v6 -> v6) v0 (mulInt (coe v0) (coe (1 :: Integer)))
         (mulInt (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_2832)
               (\ v2 v3 v4 v5 v6 -> coe du_'8804''45''60''45'trans_3012 v5 v6))
            (mulInt (coe v0) (coe (1 :: Integer))) (mulInt (coe v0) (coe v1))
            (mulInt (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2832))
               (coe mulInt (coe v0) (coe v1)))
            (coe
               du_'42''45'mono'691''45''8804'_4106 (coe v0) (coe v1)
               (coe du_0'60'1'43'n_3100)))
         erased)
-- Data.Nat.Properties.m≤n*m
d_m'8804'n'42'm_4166 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'42'm_4166 v0 v1 ~v2 = du_m'8804'n'42'm_4166 v0 v1
du_m'8804'n'42'm_4166 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'42'm_4166 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2832)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_2880 v4))
      v0 (mulInt (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_2832)
            (\ v2 v3 v4 v5 v6 -> coe du_'8804''45''60''45'trans_3012 v5 v6))
         v0 (mulInt (coe v0) (coe v1)) (mulInt (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6) (mulInt (coe v0) (coe v1))
            (mulInt (coe v1) (coe v0)) (mulInt (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2832))
               (coe mulInt (coe v1) (coe v0)))
            erased)
         (coe du_m'8804'm'42'n_4154 (coe v0) (coe v1)))
-- Data.Nat.Properties.m≤n⇒m≤o*n
d_m'8804'n'8658'm'8804'o'42'n_4176 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'o'42'n_4176 ~v0 v1 v2 ~v3 v4
  = du_m'8804'n'8658'm'8804'o'42'n_4176 v1 v2 v4
du_m'8804'n'8658'm'8804'o'42'n_4176 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'o'42'n_4176 v0 v1 v2
  = coe
      du_'8804''45'trans_2806 (coe v2)
      (coe du_m'8804'n'42'm_4166 (coe v0) (coe v1))
-- Data.Nat.Properties.m≤n⇒m≤n*o
d_m'8804'n'8658'm'8804'n'42'o_4186 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'n'42'o_4186 ~v0 v1 v2 ~v3 v4
  = du_m'8804'n'8658'm'8804'n'42'o_4186 v1 v2 v4
du_m'8804'n'8658'm'8804'n'42'o_4186 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'n'42'o_4186 v0 v1 v2
  = coe
      du_'8804''45'trans_2806 (coe v2)
      (coe du_m'8804'm'42'n_4154 (coe v0) (coe v1))
-- Data.Nat.Properties.m<m*n
d_m'60'm'42'n_4198 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'42'n_4198 v0 v1 ~v2 v3 = du_m'60'm'42'n_4198 v0 v1 v3
du_m'60'm'42'n_4198 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'42'n_4198 v0 v1 v2
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
                         (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_3006 v8 v10 v11)
                         (coe
                            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                         (\ v7 v8 v9 v10 v11 ->
                            coe du_'60''45''8804''45'trans_3018 v10 v11))
                      v0 (addInt (coe v1) (coe v3)) (mulInt (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe d_'8804''45'isPreorder_2832)
                            (\ v7 v8 v9 v10 v11 ->
                               coe du_'8804''45''60''45'trans_3012 v10 v11))
                         (addInt (coe v1) (coe v3))
                         (addInt (coe v1) (coe mulInt (coe v3) (coe v1)))
                         (mulInt (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe d_'8804''45'isPreorder_2832))
                            (coe mulInt (coe v0) (coe v1)))
                         (coe
                            du_'43''45'mono'691''45''8804'_3580 (coe v1)
                            (coe mulInt (coe v3) (coe v1))
                            (coe du_m'8804'm'42'n_4154 (coe v3) (coe v1))))
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                         (coe
                            MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                            (coe du_m'8804'n'43'm_3520 (coe v3))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m<n⇒m<n*o
d_m'60'n'8658'm'60'n'42'o_4212 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'n'42'o_4212 ~v0 v1
  = du_m'60'n'8658'm'60'n'42'o_4212 v1
du_m'60'n'8658'm'60'n'42'o_4212 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'n'42'o_4212 v0 v1 v2 v3
  = coe du_m'8804'n'8658'm'8804'n'42'o_4186 (coe v0) v1 v3
-- Data.Nat.Properties.m<n⇒m<o*n
d_m'60'n'8658'm'60'o'42'n_4222 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'o'42'n_4222 ~v0 v1
  = du_m'60'n'8658'm'60'o'42'n_4222 v1
du_m'60'n'8658'm'60'o'42'n_4222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'o'42'n_4222 v0 v1 v2 v3
  = coe du_m'8804'n'8658'm'8804'o'42'n_4176 (coe v0) v1 v3
-- Data.Nat.Properties.*-cancelʳ-<
d_'42''45'cancel'691''45''60'_4224 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'691''45''60'_4224 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60'_4224 v0 v1 v2
du_'42''45'cancel'691''45''60'_4224 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'691''45''60'_4224 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            coe
              (let v4 = subInt (coe v2) (coe (1 :: Integer)) in
               coe
                 (coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'42''45'cancel'691''45''60'_4224 (coe v0) (coe v3)
                       (coe v4)))) in
    coe
      (coe
         seq (coe v0)
         (case coe v1 of
            0 -> case coe v2 of
                   _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                       coe du_0'60'1'43'n_3100
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
                                  du_'42''45'cancel'691''45''60'_4224 (coe v0) (coe v4) (coe v5)))
                      _ -> coe v3)))
-- Data.Nat.Properties.*-cancelˡ-<
d_'42''45'cancel'737''45''60'_4240 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'737''45''60'_4240 v0 v1 v2 v3
  = coe
      du_'42''45'cancel'691''45''60'_4224 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Properties.*-cancel-<
d_'42''45'cancel'45''60'_4256 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'cancel'45''60'_4256
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'cancel'737''45''60'_4240)
      (\ v0 v1 v2 v3 -> coe du_'42''45'cancel'691''45''60'_4224 v0 v1 v2)
-- Data.Nat.Properties.^-identityʳ
d_'94''45'identity'691'_4258 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_4258 = erased
-- Data.Nat.Properties.^-zeroˡ
d_'94''45'zero'737'_4262 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_4262 = erased
-- Data.Nat.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_4272 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_4272 = erased
-- Data.Nat.Properties.^-semigroup-morphism
d_'94''45'semigroup'45'morphism_4290 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
d_'94''45'semigroup'45'morphism_4290 ~v0
  = du_'94''45'semigroup'45'morphism_4290
du_'94''45'semigroup'45'morphism_4290 ::
  MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
du_'94''45'semigroup'45'morphism_4290
  = coe
      MAlonzo.Code.Algebra.Morphism.C_IsSemigroupMorphism'46'constructor_1081
      erased erased
-- Data.Nat.Properties.^-monoid-morphism
d_'94''45'monoid'45'morphism_4298 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_306
d_'94''45'monoid'45'morphism_4298 ~v0
  = du_'94''45'monoid'45'morphism_4298
du_'94''45'monoid'45'morphism_4298 ::
  MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_306
du_'94''45'monoid'45'morphism_4298
  = coe
      MAlonzo.Code.Algebra.Morphism.C_IsMonoidMorphism'46'constructor_2139
      (coe du_'94''45'semigroup'45'morphism_4290) erased
-- Data.Nat.Properties.^-*-assoc
d_'94''45''42''45'assoc_4306 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_4306 = erased
-- Data.Nat.Properties.m^n≡0⇒m≡0
d_m'94'n'8801'0'8658'm'8801'0_4328 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'94'n'8801'0'8658'm'8801'0_4328 = erased
-- Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4340 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4340 ~v0 v1 ~v2
  = du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4340 v1
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4340 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4340 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m^n≢0
d_m'94'n'8802'0_4356 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'94'n'8802'0_4356 v0 v1 ~v2 = du_m'94'n'8802'0_4356 v0 v1
du_m'94'n'8802'0_4356 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'94'n'8802'0_4356 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v1))
-- Data.Nat.Properties.m^n>0
d_m'94'n'62'0_4368 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'94'n'62'0_4368 ~v0 ~v1 ~v2 = du_m'94'n'62'0_4368
du_m'94'n'62'0_4368 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'94'n'62'0_4368
  = coe MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero'8315''185'_146
-- Data.Nat.Properties.^-monoˡ-≤
d_'94''45'mono'737''45''8804'_4378 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'737''45''8804'_4378 v0 ~v1 v2 v3
  = du_'94''45'mono'737''45''8804'_4378 v0 v2 v3
du_'94''45'mono'737''45''8804'_4378 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'737''45''8804'_4378 v0 v1 v2
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'42''45'mono'45''8804'_4086 (coe v1)
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v1) (coe v3))
                (coe v2)
                (coe
                   du_'94''45'mono'737''45''8804'_4378 (coe v3) (coe v1) (coe v2)))
-- Data.Nat.Properties.^-monoʳ-≤
d_'94''45'mono'691''45''8804'_4392 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'691''45''8804'_4392 v0 ~v1 v2 v3 v4
  = du_'94''45'mono'691''45''8804'_4392 v0 v2 v3 v4
du_'94''45'mono'691''45''8804'_4392 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'691''45''8804'_4392 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_n'8802'0'8658'n'62'0_3116
             (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v2))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> let v7 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v8 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (coe
                   du_'42''45'mono'691''45''8804'_4106 (coe v0)
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                      (\ v9 v10 -> v10)
                      (MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0)) v7 v8)
                   (coe
                      du_'94''45'mono'691''45''8804'_4392 (coe v0) (coe v7) (coe v8)
                      (coe v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.^-monoˡ-<
d_'94''45'mono'737''45''60'_4408 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'737''45''60'_4408 v0 ~v1 v2 v3 v4
  = du_'94''45'mono'737''45''60'_4408 v0 v2 v3 v4
du_'94''45'mono'737''45''60'_4408 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'737''45''60'_4408 v0 v1 v2 v3
  = case coe v0 of
      1 -> coe
             du_'42''45'mono'737''45''60'_4126 (coe (1 :: Integer)) (coe v1)
             (coe v2) (coe v3)
      _ -> coe
             du_'42''45'mono'45''60'_4112 (coe v2)
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                (\ v4 v5 -> v5)
                (\ v4 ->
                   MAlonzo.Code.Data.Nat.Base.d__'94'__272
                     (coe v4) (coe subInt (coe v0) (coe (1 :: Integer))))
                v1 v2)
             (coe v3)
             (coe
                du_'94''45'mono'737''45''60'_4408
                (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1) (coe v2)
                (coe v3))
-- Data.Nat.Properties.^-monoʳ-<
d_'94''45'mono'691''45''60'_4420 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'691''45''60'_4420 v0 v1 v2 v3 v4
  = case coe v2 of
      0 -> let v5 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                  -> coe
                       seq (coe v8)
                       (coe
                          du_'42''45'mono'45''8804'_4086 (coe v0)
                          (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v5))
                          (coe v1) (coe du_m'94'n'62'0_4368))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
              coe
                (case coe v4 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                     -> coe
                          du_'42''45'mono'691''45''60'_4140 (coe v0)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v10 v11 -> v11)
                             (MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0)) v5 v6)
                          (coe
                             d_'94''45'mono'691''45''60'_4420 (coe v0) (coe v1) (coe v5)
                             (coe v6) (coe v9))
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_4438 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_4438 = erased
-- Data.Nat.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_4444 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_4444 = erased
-- Data.Nat.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_4454 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_4454 = erased
-- Data.Nat.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_4460 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_4460 = erased
-- Data.Nat.Properties.⊓-operator
d_'8851''45'operator_4470 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
d_'8851''45'operator_4470
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1157
      (coe MAlonzo.Code.Data.Nat.Base.d__'8851'__232) erased erased
-- Data.Nat.Properties.⊔-operator
d_'8852''45'operator_4472 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136
d_'8852''45'operator_4472
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1701
      (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__204) erased erased
-- Data.Nat.Properties.⊔≡⊔′
d_'8852''8801''8852''8242'_4478 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''8801''8852''8242'_4478 = erased
-- Data.Nat.Properties.⊓≡⊓′
d_'8851''8801''8851''8242'_4504 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''8801''8851''8242'_4504 = erased
-- Data.Nat.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_4528 ::
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
d_antimono'45''8804''45'distrib'45''8851'_4528 = erased
-- Data.Nat.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_4530 ::
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
d_antimono'45''8804''45'distrib'45''8852'_4530 = erased
-- Data.Nat.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_4532 ::
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
d_mono'45''8804''45'distrib'45''8851'_4532 = erased
-- Data.Nat.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_4534 ::
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
d_mono'45''8804''45'distrib'45''8852'_4534 = erased
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_4536 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x_4536
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_4538 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'x'8851'z'8804'y_4538
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_4540 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'z'8851'x'8804'y_4540
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_4542 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'x'8851'z'8804'y_4542
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_4544 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'z'8851'x'8804'y_4544
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_4546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'y_4546
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_4548 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'z_4548
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_4550 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'y_4550
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_4552 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'x'8658'x'8804'y_4552
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_4554 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'y'8658'y'8804'x_4554
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_4556 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x_4556
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_4558 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x'8852'y_4558
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3348
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_4560 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'y_4560
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_4562 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'x'8658'x'8804'y_4562
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_4564 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'y'8658'y'8804'x_4564
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_4566 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'y_4566
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_4568 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'z_4568
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_4570 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_4570 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_4572 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_4572 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_4574 :: MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_4574
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3082
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_4576 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_4576 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_4578 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_4578
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3084
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_4580 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_4580 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_4582 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_4582 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_4584 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_4584 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_4586 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_4586
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3168
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_4588 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_4588 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_4590 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_4590 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_4592 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'glb_4592
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_4594 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_4594 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_4596 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_4596 ~v0 ~v1 = du_'8851''45'identity_4596
du_'8851''45'identity_4596 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_4596
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_4598 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_4598 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_4600 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_4600 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_4602 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_4602
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3064
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_4604 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_4604
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3066
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_4606 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_4606
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3060
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_4608 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_4608
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3072
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_4610 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_4610
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_4612 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_4612
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_4614 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_4614
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3078
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_4616 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''8804'_4616
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_4618 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_4618
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3090
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_4620 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'691''45''8804'_4620
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3296
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_4622 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'737''45''8804'_4622
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3286
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-rawMagma
d_'8851''45'rawMagma_4624 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'8851''45'rawMagma_4624
  = let v0 = d_'8851''45'operator_4470 in
    coe
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3076
         (coe v0))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_4626 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_4626
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_4628 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_4628
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3086
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_4630 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_4630
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3080
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_4632 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_4632 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_4634 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_4634 ~v0 ~v1 = du_'8851''45'zero_4634
du_'8851''45'zero_4634 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_4634
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_4636 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_4636 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_4638 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_4638 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_4640 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_4640
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3248
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_4642 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_4642 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_4644 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_4644 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_4646 :: MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_4646
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3082
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_4648 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_4648 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_4650 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_4650
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3084
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_4652 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_4652 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_4654 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_4654 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_4656 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_4656 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_4658 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_4658
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3200
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_4660 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_4660 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_4662 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_4662 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_4664 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_4664 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_4666 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_4666
  = let v0 = d_'8852''45'operator_4472 in
    coe
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_158
                      v0 v1 v3 (coe v2 v3)))
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_164
                      v0 v3 v1 (coe v2 v3)))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_4668 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_4668 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_4670 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_4670 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_4672 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_4672
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3064
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_4674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_4674
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3066
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_4676 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_4676
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3060
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_4678 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_4678
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3072
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_4680 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_4680
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_4682 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_4682
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_4684 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'glb_4684
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_4686 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_4686
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3078
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_4688 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''8804'_4688
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_4690 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_4690
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3090
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_4692 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'691''45''8804'_4692
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3296
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_4694 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'737''45''8804'_4694
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3286
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_4696 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_4696
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_4698 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_4698
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3086
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_4700 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_4700
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3080
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_4702 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_4702 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_4704 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_4704
  = let v0 = d_'8852''45'operator_4472 in
    coe
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_164
                      v0 v1 v3 (coe v2 v3)))
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_158
                      v0 v3 v1 (coe v2 v3)))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_4706 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_4706 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_4708 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_4708 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_4710 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_4710
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3246
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_4714 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_4714
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_610
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_4716 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_4716
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_612
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_4718 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8851''45''8852''45'distributiveLattice_4718
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_816
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_4720 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8851''45''8852''45'isDistributiveLattice_4720
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_806
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_4722 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8851''45''8852''45'isLattice_4722
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_804
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_4724 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8851''45''8852''45'lattice_4724
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_812
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_4726 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_4726
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_610
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_4728 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_4728
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_612
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_4730 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8852''45''8851''45'distributiveLattice_4730
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_814
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_4732 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8852''45''8851''45'isDistributiveLattice_4732
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_808
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_4734 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8852''45''8851''45'isLattice_4734
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_802
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_4736 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8852''45''8851''45'lattice_4736
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_810
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472)
-- Data.Nat.Properties.⊔-identityˡ
d_'8852''45'identity'737'_4738 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'737'_4738 = erased
-- Data.Nat.Properties.⊔-identityʳ
d_'8852''45'identity'691'_4740 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'691'_4740 = erased
-- Data.Nat.Properties.⊔-identity
d_'8852''45'identity_4744 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'identity_4744
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-0-isMonoid
d_'8852''45'0'45'isMonoid_4746 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8852''45'0'45'isMonoid_4746
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (let v0 = d_'8804''45'totalPreorder_2844 in
       coe
         (let v1 = d_'8852''45'operator_4472 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v1)))))
      (coe d_'8852''45'identity_4744)
-- Data.Nat.Properties.⊔-0-isCommutativeMonoid
d_'8852''45'0'45'isCommutativeMonoid_4748 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'8852''45'0'45'isCommutativeMonoid_4748
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'8852''45'0'45'isMonoid_4746)
      (let v0 = d_'8804''45'totalPreorder_2844 in
       coe
         (let v1 = d_'8852''45'operator_4472 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v1)))))
-- Data.Nat.Properties.⊔-0-monoid
d_'8852''45'0'45'monoid_4750 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8852''45'0'45'monoid_4750
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (0 :: Integer)
      d_'8852''45'0'45'isMonoid_4746
-- Data.Nat.Properties.⊔-0-commutativeMonoid
d_'8852''45'0'45'commutativeMonoid_4752 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'8852''45'0'45'commutativeMonoid_4752
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (0 :: Integer)
      d_'8852''45'0'45'isCommutativeMonoid_4748
-- Data.Nat.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_4760 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_4760 = erased
-- Data.Nat.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_4770 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_4770 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_4780 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_4780 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_4790 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_4790 = erased
-- Data.Nat.Properties.m<n⇒m<n⊔o
d_m'60'n'8658'm'60'n'8852'o_4796 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'n'8852'o_4796 v0 v1
  = let v2 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v3 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v2))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v3))
            (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties.m<n⇒m<o⊔n
d_m'60'n'8658'm'60'o'8852'n_4800 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'o'8852'n_4800 v0 v1
  = let v2 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v3 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v2))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v3))
            (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties.m⊔n<o⇒m<o
d_m'8852'n'60'o'8658'm'60'o_4808 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'60'o'8658'm'60'o_4808 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'm'60'o_4808 v0 v1 v3
du_m'8852'n'60'o'8658'm'60'o_4808 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8852'n'60'o'8658'm'60'o_4808 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3012
      (let v3 = d_'8804''45'totalPreorder_2844 in
       coe
         (let v4 = d_'8852''45'operator_4472 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v4))
               (coe v0) (coe v1))))
      (coe v2)
-- Data.Nat.Properties.m⊔n<o⇒n<o
d_m'8852'n'60'o'8658'n'60'o_4822 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'60'o'8658'n'60'o_4822 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'n'60'o_4822 v0 v1 v3
du_m'8852'n'60'o'8658'n'60'o_4822 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8852'n'60'o'8658'n'60'o_4822 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3012
      (let v3 = d_'8804''45'totalPreorder_2844 in
       coe
         (let v4 = d_'8852''45'operator_4472 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v4))
               (coe v0) (coe v1))))
      (coe v2)
-- Data.Nat.Properties.⊔-mono-<
d_'8852''45'mono'45''60'_4830 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'mono'45''60'_4830 v0 v1 v2 v3
  = let v4 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v5 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v4))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v5))
            (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v3)
            (coe addInt (coe (1 :: Integer)) (coe v2))))
-- Data.Nat.Properties.⊔-pres-<m
d_'8852''45'pres'45''60'm_4832 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'pres'45''60'm_4832 v0 v1 v2 v3 v4
  = coe d_'8852''45'mono'45''60'_4830 v0 v1 v2 v1 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊔
d_'43''45'distrib'737''45''8852'_4842 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8852'_4842 = erased
-- Data.Nat.Properties.+-distribʳ-⊔
d_'43''45'distrib'691''45''8852'_4854 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8852'_4854 = erased
-- Data.Nat.Properties.+-distrib-⊔
d_'43''45'distrib'45''8852'_4856 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8852'_4856
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊔n≤m+n
d_m'8852'n'8804'm'43'n_4862 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'8804'm'43'n_4862 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased))
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
              (coe d_'8804''45'total_2812 (coe v1) (coe v0)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_m'8804'm'43'n_3508 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe du_m'8804'n'43'm_3520 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-⊔
d_'42''45'distrib'737''45''8852'_4892 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852'_4892 = erased
-- Data.Nat.Properties.*-distribʳ-⊔
d_'42''45'distrib'691''45''8852'_4914 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852'_4914 = erased
-- Data.Nat.Properties.*-distrib-⊔
d_'42''45'distrib'45''8852'_4916 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8852'_4916
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-zeroˡ
d_'8851''45'zero'737'_4918 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_4918 = erased
-- Data.Nat.Properties.⊓-zeroʳ
d_'8851''45'zero'691'_4920 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_4920 = erased
-- Data.Nat.Properties.⊓-zero
d_'8851''45'zero_4924 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_4924
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne
d_'8852''45''8851''45'isSemiringWithoutOne_4926 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_'8852''45''8851''45'isSemiringWithoutOne_4926
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutOne'46'constructor_37629
      (coe d_'8852''45'0'45'isCommutativeMonoid_4748) erased
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
         (coe d_'8804''45'totalPreorder_2844)
         (coe d_'8851''45'operator_4470))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3168
         (coe d_'8804''45'totalPreorder_2844)
         (coe d_'8851''45'operator_4470) (coe d_'8852''45'operator_4472))
      (coe d_'8851''45'zero_4924)
-- Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_4928 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_4928
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiringWithoutOne'46'constructor_42635
      (coe d_'8852''45''8851''45'isSemiringWithoutOne_4926)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
         (coe d_'8804''45'totalPreorder_2844)
         (coe d_'8851''45'operator_4470))
-- Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne
d_'8852''45''8851''45'commutativeSemiringWithoutOne_4930 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiringWithoutOne_2016
d_'8852''45''8851''45'commutativeSemiringWithoutOne_4930
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiringWithoutOne'46'constructor_37115
      MAlonzo.Code.Data.Nat.Base.d__'8852'__204
      MAlonzo.Code.Data.Nat.Base.d__'8851'__232 (0 :: Integer)
      d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_4928
-- Data.Nat.Properties.m<n⇒m⊓o<n
d_m'60'n'8658'm'8851'o'60'n_4934 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'8851'o'60'n_4934 v0 ~v1 v2 v3
  = du_m'60'n'8658'm'8851'o'60'n_4934 v0 v2 v3
du_m'60'n'8658'm'8851'o'60'n_4934 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'8851'o'60'n_4934 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3012
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
         (coe d_'8804''45'totalPreorder_2844)
         (coe d_'8851''45'operator_4470) (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.m<n⇒o⊓m<n
d_m'60'n'8658'o'8851'm'60'n_4942 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'o'8851'm'60'n_4942 v0 ~v1 v2 v3
  = du_m'60'n'8658'o'8851'm'60'n_4942 v0 v2 v3
du_m'60'n'8658'o'8851'm'60'n_4942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'o'8851'm'60'n_4942 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3012
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
         (coe d_'8804''45'totalPreorder_2844)
         (coe d_'8851''45'operator_4470) (coe v1) (coe v0))
      (coe v2)
-- Data.Nat.Properties.m<n⊓o⇒m<n
d_m'60'n'8851'o'8658'm'60'n_4952 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8851'o'8658'm'60'n_4952 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m<n⊓o⇒m<o
d_m'60'n'8851'o'8658'm'60'o_4958 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8851'o'8658'm'60'o_4958 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.⊓-mono-<
d_'8851''45'mono'45''60'_4960 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''60'_4960 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
      (coe d_'8804''45'totalPreorder_2844)
      (coe d_'8851''45'operator_4470)
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
      (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3)
-- Data.Nat.Properties.⊓-pres-m<
d_'8851''45'pres'45'm'60'_4962 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'pres'45'm'60'_4962 v0 v1 v2 v3 v4
  = coe d_'8851''45'mono'45''60'_4960 v0 v1 v0 v2 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊓
d_'43''45'distrib'737''45''8851'_4972 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8851'_4972 = erased
-- Data.Nat.Properties.+-distribʳ-⊓
d_'43''45'distrib'691''45''8851'_4984 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8851'_4984 = erased
-- Data.Nat.Properties.+-distrib-⊓
d_'43''45'distrib'45''8851'_4986 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8851'_4986
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊓n≤m+n
d_m'8851'n'8804'm'43'n_4992 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8851'n'8804'm'43'n_4992 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased))
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
              (coe d_'8804''45'total_2812 (coe v0) (coe v1)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_m'8804'm'43'n_3508 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe du_m'8804'n'43'm_3520 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-⊓
d_'42''45'distrib'737''45''8851'_5022 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851'_5022 = erased
-- Data.Nat.Properties.*-distribʳ-⊓
d_'42''45'distrib'691''45''8851'_5044 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851'_5044 = erased
-- Data.Nat.Properties.*-distrib-⊓
d_'42''45'distrib'45''8851'_5046 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8851'_5046
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.0∸n≡0
d_0'8760'n'8801'0_5048 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8760'n'8801'0_5048 = erased
-- Data.Nat.Properties.n∸n≡0
d_n'8760'n'8801'0_5052 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8760'n'8801'0_5052 = erased
-- Data.Nat.Properties.pred[m∸n]≡m∸[1+n]
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_5060 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_5060 = erased
-- Data.Nat.Properties.m∸n≤m
d_m'8760'n'8804'm_5074 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804'm_5074 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_2798
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       d_'8804''45'refl_2798
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 (0 :: Integer) v1)
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_'8804''45'trans_2806
                          (coe d_m'8760'n'8804'm_5074 (coe v3) (coe v2))
                          (coe d_n'8804'1'43'n_2870 (coe v3))))
-- Data.Nat.Properties.m≮m∸n
d_m'8814'm'8760'n_5088 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8814'm'8760'n_5088 = erased
-- Data.Nat.Properties.1+m≢m∸n
d_1'43'm'8802'm'8760'n_5100 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'm'8802'm'8760'n_5100 = erased
-- Data.Nat.Properties.∸-mono
d_'8760''45'mono_5108 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono_5108 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5)
              (coe
                 du_'8804''45'trans_2806
                 (coe d_m'8760'n'8804'm_5074 (coe v0) (coe v2)) (coe v4)) in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
           -> case coe v5 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe
                       du_'8804''45'trans_2806
                       (coe d_m'8760'n'8804'm_5074 (coe v0) (coe v2))
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
                           du_'8804''45'trans_2806
                           (coe d_m'8760'n'8804'm_5074 (coe v0) (coe v2))
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
                                       du_'8804''45'trans_2806
                                       (coe d_m'8760'n'8804'm_5074 (coe v0) (coe v2))
                                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)) in
                          coe
                            (case coe v1 of
                               _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                                   let v13 = subInt (coe v1) (coe (1 :: Integer)) in
                                   coe
                                     (case coe v5 of
                                        MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                                          -> coe
                                               du_'8804''45'trans_2806
                                               (coe d_m'8760'n'8804'm_5074 (coe v0) (coe v2))
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
                                                                 d_'8760''45'mono_5108 (coe v11)
                                                                 (coe v13) (coe v17) (coe v18)
                                                                 (coe v9) (coe v16))
                                                        _ -> coe v12)
                                               _ -> coe v12
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                               _ -> coe v12))
                   _ -> coe v10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∸-monoˡ-≤
d_'8760''45'mono'737''45''8804'_5122 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'737''45''8804'_5122 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_5108 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe d_'8804''45'refl_2798 (coe v2))
-- Data.Nat.Properties.∸-monoʳ-≤
d_'8760''45'mono'691''45''8804'_5130 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'691''45''8804'_5130 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_5108 (coe v2) (coe v2) (coe v1) (coe v0)
      (coe d_'8804''45'refl_2798 (coe v2)) (coe v3)
-- Data.Nat.Properties.∸-monoˡ-<
d_'8760''45'mono'737''45''60'_5140 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'737''45''60'_5140 ~v0 v1 ~v2 v3 v4
  = du_'8760''45'mono'737''45''60'_5140 v1 v3 v4
du_'8760''45'mono'737''45''60'_5140 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'mono'737''45''60'_5140 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> case coe v2 of
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                         -> coe
                              du_'8760''45'mono'737''45''60'_5140 (coe v3) (coe v6) (coe v9)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∸-monoʳ-<
d_'8760''45'mono'691''45''60'_5166 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'691''45''60'_5166 v0 v1 v2 v3 v4
  = let v5 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (case coe v2 of
         0 -> coe
                seq (coe v3)
                (coe
                   seq (coe v4)
                   (coe
                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                      (d_m'8760'n'8804'm_5074
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
                                    d_'8760''45'mono'691''45''60'_5166 (coe v13) (coe v5) (coe v6)
                                    (coe v9) (coe v12))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.Properties.∸-cancelʳ-≤
d_'8760''45'cancel'691''45''8804'_5188 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'cancel'691''45''8804'_5188 ~v0 v1 ~v2 v3 ~v4
  = du_'8760''45'cancel'691''45''8804'_5188 v1 v3
du_'8760''45'cancel'691''45''8804'_5188 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'cancel'691''45''8804'_5188 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v0 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                    erased
             _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_'8760''45'cancel'691''45''8804'_5188 (coe v5) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∸-cancelʳ-<
d_'8760''45'cancel'691''45''60'_5208 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'cancel'691''45''60'_5208 v0 v1 ~v2 ~v3
  = du_'8760''45'cancel'691''45''60'_5208 v0 v1
du_'8760''45'cancel'691''45''60'_5208 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'cancel'691''45''60'_5208 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe du_0'60'1'43'n_3100
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8760''45'cancel'691''45''60'_5208 (coe v2) (coe v3))))
-- Data.Nat.Properties.∸-cancelˡ-≡
d_'8760''45'cancel'737''45''8801'_5228 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'737''45''8801'_5228 = erased
-- Data.Nat.Properties.∸-cancelʳ-≡
d_'8760''45'cancel'691''45''8801'_5244 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'691''45''8801'_5244 = erased
-- Data.Nat.Properties.m∸n≡0⇒m≤n
d_m'8760'n'8801'0'8658'm'8804'n_5254 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8801'0'8658'm'8804'n_5254 v0 ~v1 ~v2
  = du_m'8760'n'8801'0'8658'm'8804'n_5254 v0
du_m'8760'n'8801'0'8658'm'8804'n_5254 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8760'n'8801'0'8658'm'8804'n_5254 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'8760'n'8801'0'8658'm'8804'n_5254 (coe v1)))
-- Data.Nat.Properties.m≤n⇒m∸n≡0
d_m'8804'n'8658'm'8760'n'8801'0_5262 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8760'n'8801'0_5262 = erased
-- Data.Nat.Properties.m<n⇒0<n∸m
d_m'60'n'8658'0'60'n'8760'm_5268 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'0'60'n'8760'm_5268 v0 ~v1 v2
  = du_m'60'n'8658'0'60'n'8760'm_5268 v0 v2
du_m'60'n'8658'0'60'n'8760'm_5268 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'0'60'n'8760'm_5268 v0 v1
  = case coe v0 of
      0 -> coe du_0'60'1'43'n_3100
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe du_m'60'n'8658'0'60'n'8760'm_5268 (coe v2) (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m∸n≢0⇒n<m
d_m'8760'n'8802'0'8658'n'60'm_5278 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8802'0'8658'n'60'm_5278 v0 v1 ~v2
  = du_m'8760'n'8802'0'8658'n'60'm_5278 v0 v1
du_m'8760'n'8802'0'8658'n'60'm_5278 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8760'n'8802'0'8658'n'60'm_5278 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              (\ v2 ->
                 coe
                   du_'8804''7495''8658''8804'_2768
                   (coe addInt (coe (1 :: Integer)) (coe v1)))
              (coe du_'8804''8658''8804''7495'_2780)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
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
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                          erased)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m>n⇒m∸n≢0
d_m'62'n'8658'm'8760'n'8802'0_5306 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'62'n'8658'm'8760'n'8802'0_5306 = erased
-- Data.Nat.Properties.m≤n⇒n∸m≤n
d_m'8804'n'8658'n'8760'm'8804'n_5312 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'n'8760'm'8804'n_5312 ~v0 v1 v2
  = du_m'8804'n'8658'n'8760'm'8804'n_5312 v1 v2
du_m'8804'n'8658'n'8760'm'8804'n_5312 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'n'8760'm'8804'n_5312 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             d_'8804''45'refl_2798
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_m'8804'n'8658'n'8760'm'8804'n_5312 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-∸-comm
d_'43''45''8760''45'comm_5322 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'comm_5322 = erased
-- Data.Nat.Properties.∸-+-assoc
d_'8760''45''43''45'assoc_5340 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45''43''45'assoc_5340 = erased
-- Data.Nat.Properties.+-∸-assoc
d_'43''45''8760''45'assoc_5364 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'assoc_5364 = erased
-- Data.Nat.Properties.m≤n+o⇒m∸n≤o
d_m'8804'n'43'o'8658'm'8760'n'8804'o_5386 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'o'8658'm'8760'n'8804'o_5386 v0 v1 ~v2 v3
  = du_m'8804'n'43'o'8658'm'8760'n'8804'o_5386 v0 v1 v3
du_m'8804'n'43'o'8658'm'8760'n'8804'o_5386 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'43'o'8658'm'8760'n'8804'o_5386 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_m'8804'n'43'o'8658'm'8760'n'8804'o_5386 (coe v4) (coe v3)
                          (coe
                             MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v2))))
-- Data.Nat.Properties.m<n+o⇒m∸n<o
d_m'60'n'43'o'8658'm'8760'n'60'o_5406 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'43'o'8658'm'8760'n'60'o_5406 v0 v1 ~v2 ~v3 v4
  = du_m'60'n'43'o'8658'm'8760'n'60'o_5406 v0 v1 v4
du_m'60'n'43'o'8658'm'8760'n'60'o_5406 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'43'o'8658'm'8760'n'60'o_5406 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_m'60'n'43'o'8658'm'8760'n'60'o_5406 (coe v4) (coe v3)
                          (coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70 (coe v2))))
-- Data.Nat.Properties.m+n≤o⇒m≤o∸n
d_m'43'n'8804'o'8658'm'8804'o'8760'n_5430 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'm'8804'o'8760'n_5430 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o'8760'n_5430 v0 v3
du_m'43'n'8804'o'8658'm'8804'o'8760'n_5430 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'm'8804'o'8760'n_5430 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_m'43'n'8804'o'8658'm'8804'o'8760'n_5430 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m≤o∸n⇒m+n≤o
d_m'8804'o'8760'n'8658'm'43'n'8804'o_5450 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'o'8760'n'8658'm'43'n'8804'o_5450 ~v0 ~v1 ~v2 v3 v4
  = du_m'8804'o'8760'n'8658'm'43'n'8804'o_5450 v3 v4
du_m'8804'o'8760'n'8658'm'43'n'8804'o_5450 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'o'8760'n'8658'm'43'n'8804'o_5450 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26 -> coe v1
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_m'8804'o'8760'n'8658'm'43'n'8804'o_5450 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤n+m∸n
d_m'8804'n'43'm'8760'n_5476 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'm'8760'n_5476 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe d_'8804''45'refl_2798 (coe v0)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (d_m'8804'n'43'm'8760'n_5476 (coe v2) (coe v3))))
-- Data.Nat.Properties.m+n∸n≡m
d_m'43'n'8760'n'8801'm_5490 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'n'8801'm_5490 = erased
-- Data.Nat.Properties.m+n∸m≡n
d_m'43'n'8760'm'8801'n_5502 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'm'8801'n_5502 = erased
-- Data.Nat.Properties.m+[n∸m]≡n
d_m'43''91'n'8760'm'93''8801'n_5510 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43''91'n'8760'm'93''8801'n_5510 = erased
-- Data.Nat.Properties.m∸n+n≡m
d_m'8760'n'43'n'8801'm_5524 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760'n'43'n'8801'm_5524 = erased
-- Data.Nat.Properties.m∸[m∸n]≡n
d_m'8760''91'm'8760'n'93''8801'n_5536 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760''91'm'8760'n'93''8801'n_5536 = erased
-- Data.Nat.Properties.[m+n]∸[m+o]≡n∸o
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_5552 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_5552 = erased
-- Data.Nat.Properties.*-distribʳ-∸
d_'42''45'distrib'691''45''8760'_5564 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8760'_5564 = erased
-- Data.Nat.Properties.*-distribˡ-∸
d_'42''45'distrib'737''45''8760'_5584 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8760'_5584 = erased
-- Data.Nat.Properties.*-distrib-∸
d_'42''45'distrib'45''8760'_5586 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8760'_5586
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.even≢odd
d_even'8802'odd_5592 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_even'8802'odd_5592 = erased
-- Data.Nat.Properties.m⊓n+n∸m≡n
d_m'8851'n'43'n'8760'm'8801'n_5608 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8851'n'43'n'8760'm'8801'n_5608 = erased
-- Data.Nat.Properties.[m∸n]⊓[n∸m]≡0
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_5622 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_5622 = erased
-- Data.Nat.Properties.∸-distribˡ-⊓-⊔
d_'8760''45'distrib'737''45''8851''45''8852'_5638 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8851''45''8852'_5638 = erased
-- Data.Nat.Properties.∸-distribʳ-⊓
d_'8760''45'distrib'691''45''8851'_5646 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8851'_5646 = erased
-- Data.Nat.Properties.∸-distribˡ-⊔-⊓
d_'8760''45'distrib'737''45''8852''45''8851'_5660 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8852''45''8851'_5660 = erased
-- Data.Nat.Properties.∸-distribʳ-⊔
d_'8760''45'distrib'691''45''8852'_5668 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8852'_5668 = erased
-- Data.Nat.Properties.pred[n]≤n
d_pred'91'n'93''8804'n_5676 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'91'n'93''8804'n_5676 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d_n'8804'1'43'n_2870 (coe v1))
-- Data.Nat.Properties.≤pred⇒≤
d_'8804'pred'8658''8804'_5680 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'pred'8658''8804'_5680 ~v0 v1 v2
  = du_'8804'pred'8658''8804'_5680 v1 v2
du_'8804'pred'8658''8804'_5680 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'pred'8658''8804'_5680 v0 v1 = coe seq (coe v0) (coe v1)
-- Data.Nat.Properties.≤⇒pred≤
d_'8804''8658'pred'8804'_5688 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8658'pred'8804'_5688 v0 ~v1 v2
  = du_'8804''8658'pred'8804'_5688 v0 v2
du_'8804''8658'pred'8804'_5688 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8658'pred'8804'_5688 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8804''45'trans_2806 (coe d_n'8804'1'43'n_2870 (coe v2))
                (coe v1))
-- Data.Nat.Properties.<⇒≤pred
d_'60''8658''8804'pred_5696 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'pred_5696 ~v0 ~v1 v2
  = du_'60''8658''8804'pred_5696 v2
du_'60''8658''8804'pred_5696 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'pred_5696 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.suc-pred
d_suc'45'pred_5704 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_5704 = erased
-- Data.Nat.Properties.pred-mono-≤
d_pred'45'mono'45''8804'_5708 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono'45''8804'_5708 v0 ~v1 v2
  = du_pred'45'mono'45''8804'_5708 v0 v2
du_pred'45'mono'45''8804'_5708 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'45'mono'45''8804'_5708 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v1)
-- Data.Nat.Properties.pred-mono-<
d_pred'45'mono'45''60'_5712 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono'45''60'_5712 v0 v1 ~v2
  = du_pred'45'mono'45''60'_5712 v0 v1
du_pred'45'mono'45''60'_5712 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'45'mono'45''60'_5712 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> case coe v1 of
             0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
-- Data.Nat.Properties.pred-cancel-≤
d_pred'45'cancel'45''8804'_5714 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pred'45'cancel'45''8804'_5714 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ -> case coe v1 of
             0 -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
             _ -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v2)
-- Data.Nat.Properties.pred-cancel-<
d_pred'45'cancel'45''60'_5718 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'cancel'45''60'_5718 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    (\ v2 ->
                       coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ -> case coe v1 of
             0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
-- Data.Nat.Properties.pred-injective
d_pred'45'injective_5720 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45'injective_5720 = erased
-- Data.Nat.Properties.pred-cancel-≡
d_pred'45'cancel'45''8801'_5726 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pred'45'cancel'45''8801'_5726 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe
                    (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
             _ -> coe
                    (\ v2 ->
                       coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                         (coe
                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)))
      _ -> case coe v1 of
             0 -> coe
                    (\ v2 ->
                       coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                         (coe
                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)))
             _ -> coe
                    (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
-- Data.Nat.Properties.m≡n⇒∣m-n∣≡0
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_5728 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_5728 = erased
-- Data.Nat.Properties.∣m-n∣≡0⇒m≡n
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_5732 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_5732 = erased
-- Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_5742 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_5742 = erased
-- Data.Nat.Properties.m≤n⇒∣m-n∣≡n∸m
d_m'8804'n'8658''8739'm'45'n'8739''8801'n'8760'm_5748 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'm'45'n'8739''8801'n'8760'm_5748 = erased
-- Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5754 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5754 v0 v1 ~v2
  = du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5754 v0 v1
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5754 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5754 v0 v1
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
                             du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5754 (coe v2)
                             (coe v3))))
-- Data.Nat.Properties.∣n-n∣≡0
d_'8739'n'45'n'8739''8801'0_5770 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'45'n'8739''8801'0_5770 = erased
-- Data.Nat.Properties.∣m-m+n∣≡n
d_'8739'm'45'm'43'n'8739''8801'n_5778 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'm'43'n'8739''8801'n_5778 = erased
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o∣
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_5792 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_5792
  = erased
-- Data.Nat.Properties.m∸n≤∣m-n∣
d_m'8760'n'8804''8739'm'45'n'8739'_5808 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804''8739'm'45'n'8739'_5808 v0 v1
  = let v2 = d_'8804''45'total_2812 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                d_'8804''45'refl_2798
                (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∣m-n∣≤m⊔n
d_'8739'm'45'n'8739''8804'm'8852'n_5838 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8804'm'8852'n_5838 v0 v1
  = case coe v0 of
      0 -> coe
             d_'8804''45'refl_2798
             (coe
                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                (coe (0 :: Integer)) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       d_'8804''45'refl_2798
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                          (coe (0 :: Integer)))
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe d_'8739'm'45'n'8739''8804'm'8852'n_5838 (coe v2) (coe v3)))
-- Data.Nat.Properties.∣-∣-identityˡ
d_'8739''45''8739''45'identity'737'_5848 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'737'_5848 = erased
-- Data.Nat.Properties.∣-∣-identityʳ
d_'8739''45''8739''45'identity'691'_5852 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'691'_5852 = erased
-- Data.Nat.Properties.∣-∣-identity
d_'8739''45''8739''45'identity_5856 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8739''45''8739''45'identity_5856
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.∣-∣-comm
d_'8739''45''8739''45'comm_5858 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'comm_5858 = erased
-- Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_5872 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_5872 v0
                                                                      v1
  = let v2 = d_'8804''45'total_2812 (coe v0) (coe v1) in
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
                                  (coe d_'8804''45'isPreorder_2832))
                               (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0))
                            erased)
                         erased)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-∣-∣-aux
d_'42''45'distrib'737''45''8739''45''8739''45'aux_5900 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739''45'aux_5900 = erased
-- Data.Nat.Properties.*-distribˡ-∣-∣
d_'42''45'distrib'737''45''8739''45''8739'_5912 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739'_5912 = erased
-- Data.Nat.Properties.*-distribʳ-∣-∣
d_'42''45'distrib'691''45''8739''45''8739'_5942 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8739''45''8739'_5942 = erased
-- Data.Nat.Properties.*-distrib-∣-∣
d_'42''45'distrib'45''8739''45''8739'_5944 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8739''45''8739'_5944
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m≤n+∣n-m∣
d_m'8804'n'43''8739'n'45'm'8739'_5950 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43''8739'n'45'm'8739'_5950 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe d_'8804''45'refl_2798 (coe v0)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (d_m'8804'n'43''8739'n'45'm'8739'_5950 (coe v2) (coe v3))))
-- Data.Nat.Properties.m≤n+∣m-n∣
d_m'8804'n'43''8739'm'45'n'8739'_5964 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43''8739'm'45'n'8739'_5964 v0 v1
  = coe d_m'8804'n'43''8739'n'45'm'8739'_5950 (coe v0) (coe v1)
-- Data.Nat.Properties.m≤∣m-n∣+n
d_m'8804''8739'm'45'n'8739''43'n_5978 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804''8739'm'45'n'8739''43'n_5978 v0 v1
  = coe d_m'8804'n'43''8739'm'45'n'8739'_5964 (coe v0) (coe v1)
-- Data.Nat.Properties.∣-∣-triangle
d_'8739''45''8739''45'triangle_5986 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739''45''8739''45'triangle_5986 v0 v1 v2
  = case coe v0 of
      0 -> coe d_m'8804'n'43''8739'n'45'm'8739'_5950 (coe v2) (coe v1)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                          (coe d_'8804''45'isPreorder_2832)
                          (\ v4 v5 v6 -> coe du_'60''8658''8804'_2880 v6))
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
                             (coe d_'8804''45'isPreorder_2832)
                             (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3012 v7 v8))
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
                                (coe d_'8804''45'isPreorder_2832)
                                (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3012 v7 v8))
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
                                      (coe d_'8804''45'isPreorder_2832))
                                   (coe
                                      addInt
                                      (coe
                                         MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                         (coe v0) (coe (0 :: Integer)))
                                      (coe v2)))
                                erased)
                             (d_m'8852'n'8804'm'43'n_4862 (coe v0) (coe v2)))
                          (d_'8739'm'45'n'8739''8804'm'8852'n_5838 (coe v0) (coe v2)))
                _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v2 of
                          0 -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_2832)
                                    (\ v5 v6 v7 -> coe du_'60''8658''8804'_2880 v7))
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
                                          (coe d_'8804''45'isPreorder_2832)
                                          (\ v5 v6 v7 v8 v9 ->
                                             coe du_'8804''45''60''45'trans_3012 v8 v9))
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
                                                (coe d_'8804''45'isPreorder_2832))
                                             (coe
                                                addInt
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                   (coe v0) (coe v1))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                   (coe v1) (coe (0 :: Integer)))))
                                          erased)
                                       (d_m'8804''8739'm'45'n'8739''43'n_5978 (coe v0) (coe v1)))
                                    erased)
                          _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    d_'8739''45''8739''45'triangle_5986 (coe v3) (coe v4)
                                    (coe v5))))
-- Data.Nat.Properties.∣-∣≡∣-∣′
d_'8739''45''8739''8801''8739''45''8739''8242'_6018 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''8801''8739''45''8739''8242'_6018 = erased
-- Data.Nat.Properties.∣-∣-isProtoMetric
d_'8739''45''8739''45'isProtoMetric_6040 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsProtoMetric_30
d_'8739''45''8739''45'isProtoMetric_6040
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsProtoMetric'46'constructor_2109
      (coe d_'8804''45'isPartialOrder_2836)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Nat.Properties.∣-∣-isPreMetric
d_'8739''45''8739''45'isPreMetric_6042 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsPreMetric_102
d_'8739''45''8739''45'isPreMetric_6042
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsPreMetric'46'constructor_6347
      (coe d_'8739''45''8739''45'isProtoMetric_6040) erased
-- Data.Nat.Properties.∣-∣-isQuasiSemiMetric
d_'8739''45''8739''45'isQuasiSemiMetric_6044 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsQuasiSemiMetric_174
d_'8739''45''8739''45'isQuasiSemiMetric_6044
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsQuasiSemiMetric'46'constructor_10111
      (coe d_'8739''45''8739''45'isPreMetric_6042) erased
-- Data.Nat.Properties.∣-∣-isSemiMetric
d_'8739''45''8739''45'isSemiMetric_6046 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsSemiMetric_250
d_'8739''45''8739''45'isSemiMetric_6046
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsSemiMetric'46'constructor_14005
      (coe d_'8739''45''8739''45'isQuasiSemiMetric_6044) erased
-- Data.Nat.Properties.∣-∣-isMetric
d_'8739''45''8739''45'isMetric_6048 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsGeneralMetric_332
d_'8739''45''8739''45'isMetric_6048
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsGeneralMetric'46'constructor_18255
      (coe d_'8739''45''8739''45'isSemiMetric_6046)
      (coe d_'8739''45''8739''45'triangle_5986)
-- Data.Nat.Properties.∣-∣-quasiSemiMetric
d_'8739''45''8739''45'quasiSemiMetric_6050 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_QuasiSemiMetric_186
d_'8739''45''8739''45'quasiSemiMetric_6050
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_QuasiSemiMetric'46'constructor_3255
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isQuasiSemiMetric_6044
-- Data.Nat.Properties.∣-∣-semiMetric
d_'8739''45''8739''45'semiMetric_6052 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_SemiMetric_284
d_'8739''45''8739''45'semiMetric_6052
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_SemiMetric'46'constructor_4991
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isSemiMetric_6046
-- Data.Nat.Properties.∣-∣-preMetric
d_'8739''45''8739''45'preMetric_6054 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_PreMetric_96
d_'8739''45''8739''45'preMetric_6054
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_PreMetric'46'constructor_1629
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isPreMetric_6042
-- Data.Nat.Properties.∣-∣-metric
d_'8739''45''8739''45'metric_6056 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_Metric_388
d_'8739''45''8739''45'metric_6056
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_Metric'46'constructor_6797
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isMetric_6048
-- Data.Nat.Properties.⌊n/2⌋-mono
d_'8970'n'47'2'8971''45'mono_6058 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''45'mono_6058 ~v0 ~v1 v2
  = du_'8970'n'47'2'8971''45'mono_6058 v2
du_'8970'n'47'2'8971''45'mono_6058 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8970'n'47'2'8971''45'mono_6058 v0
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
                    (coe du_'8970'n'47'2'8971''45'mono_6058 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.⌈n/2⌉-mono
d_'8968'n'47'2'8969''45'mono_6062 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''45'mono_6062 ~v0 ~v1 v2
  = du_'8968'n'47'2'8969''45'mono_6062 v2
du_'8968'n'47'2'8969''45'mono_6062 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8968'n'47'2'8969''45'mono_6062 v0
  = coe
      du_'8970'n'47'2'8971''45'mono_6058
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v0)
-- Data.Nat.Properties.⌊n/2⌋≤⌈n/2⌉
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_6068 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_6068 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_6068 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋+⌈n/2⌉≡n
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_6074 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_6074 = erased
-- Data.Nat.Properties.⌊n/2⌋≤n
d_'8970'n'47'2'8971''8804'n_6080 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''8804'n_6080 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804'n_6080 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋<n
d_'8970'n'47'2'8971''60'n_6086 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''60'n_6086 v0
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
                   (d_'8970'n'47'2'8971''8804'n_6080 (coe v1))))
-- Data.Nat.Properties.n≡⌊n+n/2⌋
d_n'8801''8970'n'43'n'47'2'8971'_6092 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801''8970'n'43'n'47'2'8971'_6092 = erased
-- Data.Nat.Properties.⌈n/2⌉≤n
d_'8968'n'47'2'8969''8804'n_6100 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''8804'n_6100 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804'n_6080 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉<n
d_'8968'n'47'2'8969''60'n_6106 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''60'n_6106 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
      (d_'8970'n'47'2'8971''60'n_6086 (coe v0))
-- Data.Nat.Properties.n≡⌈n+n/2⌉
d_n'8801''8968'n'43'n'47'2'8969'_6112 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801''8968'n'43'n'47'2'8969'_6112 = erased
-- Data.Nat.Properties.1≤n!
d_1'8804'n'33'_6120 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_1'8804'n'33'_6120 v0
  = case coe v0 of
      0 -> coe d_'8804''45'refl_2798 (coe (1 :: Integer))
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'42''45'mono'45''8804'_4086 (coe v0)
                (coe MAlonzo.Code.Data.Nat.Base.d__'33'_332 (coe v1))
                (coe du_m'8804'm'43'n_3508 (coe (1 :: Integer)))
                (coe d_1'8804'n'33'_6120 (coe v1)))
-- Data.Nat.Properties._!≢0
d__'33''8802'0_6126 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d__'33''8802'0_6126 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero_136
      (coe d_1'8804'n'33'_6120 (coe v0))
-- Data.Nat.Properties._!*_!≢0
d__'33''42'_'33''8802'0_6134 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d__'33''42'_'33''8802'0_6134 ~v0 ~v1
  = du__'33''42'_'33''8802'0_6134
du__'33''42'_'33''8802'0_6134 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du__'33''42'_'33''8802'0_6134 = coe du_m'42'n'8802'0_3866
-- Data.Nat.Properties.≤′-trans
d_'8804''8242''45'trans_6140 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8804''8242''45'trans_6140 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''8242''45'trans_6140 v3 v4
du_'8804''8242''45'trans_6140 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'8804''8242''45'trans_6140 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
        -> coe v0
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
             (coe du_'8804''8242''45'trans_6140 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.z≤′n
d_z'8804''8242'n_6148 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_z'8804''8242'n_6148 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_z'8804''8242'n_6148 (coe v1)))
-- Data.Nat.Properties.s≤′s
d_s'8804''8242's_6152 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_s'8804''8242's_6152 ~v0 ~v1 v2 = du_s'8804''8242's_6152 v2
du_s'8804''8242's_6152 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_s'8804''8242's_6152 v0 = coe v0
-- Data.Nat.Properties.≤′⇒≤
d_'8804''8242''8658''8804'_6158 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8242''8658''8804'_6158 v0 ~v1 v2
  = du_'8804''8242''8658''8804'_6158 v0 v2
du_'8804''8242''8658''8804'_6158 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8242''8658''8804'_6158 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
        -> coe du_'8804''45'reflexive_2794 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe du_'8804''8242''8658''8804'_6158 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤⇒≤′
d_'8804''8658''8804''8242'_6164 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8804''8658''8804''8242'_6164 ~v0 v1 v2
  = du_'8804''8658''8804''8242'_6164 v1 v2
du_'8804''8658''8804''8242'_6164 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'8804''8658''8804''8242'_6164 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe d_z'8804''8242'n_6148 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'8804''8658''8804''8242'_6164 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤′-step-injective
d_'8804''8242''45'step'45'injective_6172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8242''45'step'45'injective_6172 = erased
-- Data.Nat.Properties.z<′s
d_z'60''8242's_6174 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_z'60''8242's_6174 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_z'60''8242's_6174 (coe v1)))
-- Data.Nat.Properties.s<′s
d_s'60''8242's_6178 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_s'60''8242's_6178 ~v0 ~v1 v2 = du_s'60''8242's_6178 v2
du_s'60''8242's_6178 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_s'60''8242's_6178 v0 = coe v0
-- Data.Nat.Properties.<⇒<′
d_'60''8658''60''8242'_6182 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'60''8658''60''8242'_6182 ~v0 v1 v2
  = du_'60''8658''60''8242'_6182 v1 v2
du_'60''8658''60''8242'_6182 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'60''8658''60''8242'_6182 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe d_z'60''8242's_6174 (coe v5)
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                  -> coe
                       du_'60''8658''60''8242'_6182
                       (coe subInt (coe v0) (coe (1 :: Integer)))
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<′⇒<
d_'60''8242''8658''60'_6186 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8242''8658''60'_6186 v0 ~v1 v2
  = du_'60''8242''8658''60'_6186 v0 v2
du_'60''8242''8658''60'_6186 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8242''8658''60'_6186 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
        -> coe d_n'60'1'43'n_3104 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe
             du_m'60'n'8658'm'60'1'43'n_3088
             (coe du_'60''8242''8658''60'_6186 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m<1+n⇒m<n∨m≡n′
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n'8242'_6190 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n'8242'_6190 v0 v1 v2
  = let v3
          = coe
              du_'60''8658''60''8242'_6182
              (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v2) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v5
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe du_'60''8242''8658''60'_6186 (coe v0) (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties._≤′?_
d__'8804''8242''63'__6204 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8242''63'__6204 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe du_'8804''8658''8804''8242'_6164 (coe v1))
      (coe du_'8804''8242''8658''8804'_6158 (coe v0))
      (coe d__'8804''63'__2824 (coe v0) (coe v1))
-- Data.Nat.Properties._<′?_
d__'60''8242''63'__6210 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8242''63'__6210 v0 v1
  = coe
      d__'8804''8242''63'__6204
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.Properties._≥′?_
d__'8805''8242''63'__6216 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8242''63'__6216 v0 v1
  = coe d__'8804''8242''63'__6204 (coe v1) (coe v0)
-- Data.Nat.Properties._>′?_
d__'62''8242''63'__6218 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8242''63'__6218 v0 v1
  = coe d__'60''8242''63'__6210 (coe v1) (coe v0)
-- Data.Nat.Properties.m≤′m+n
d_m'8804''8242'm'43'n_6224 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_m'8804''8242'm'43'n_6224 v0 v1
  = coe
      du_'8804''8658''8804''8242'_6164 (coe addInt (coe v0) (coe v1))
      (coe du_m'8804'm'43'n_3508 (coe v0))
-- Data.Nat.Properties.n≤′m+n
d_n'8804''8242'm'43'n_6234 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_n'8804''8242'm'43'n_6234 v0 ~v1 = du_n'8804''8242'm'43'n_6234 v0
du_n'8804''8242'm'43'n_6234 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_n'8804''8242'm'43'n_6234 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (coe du_n'8804''8242'm'43'n_6234 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉≤′n
d_'8968'n'47'2'8969''8804''8242'n_6244 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8968'n'47'2'8969''8804''8242'n_6244 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_'8968'n'47'2'8969''8804''8242'n_6244 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋≤′n
d_'8970'n'47'2'8971''8804''8242'n_6250 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8970'n'47'2'8971''8804''8242'n_6250 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_344
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_'8968'n'47'2'8969''8804''8242'n_6244 (coe v1)))
-- Data.Nat.Properties.≤⇒≤″
d_'8804''8658''8804''8243'_6254 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'8804''8658''8804''8243'_6254 v0 v1 ~v2
  = du_'8804''8658''8804''8243'_6254 v0 v1
du_'8804''8658''8804''8243'_6254 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
du_'8804''8658''8804''8243'_6254 v0 v1
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0) erased
-- Data.Nat.Properties.<⇒<″
d_'60''8658''60''8243'_6258 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'60''8658''60''8243'_6258 v0 v1 v2
  = coe
      du_'8804''8658''8804''8243'_6254
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.Properties.≤″⇒≤
d_'8804''8243''8658''8804'_6260 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8243''8658''8804'_6260 v0 ~v1 v2
  = du_'8804''8243''8658''8804'_6260 v0 v2
du_'8804''8243''8658''8804'_6260 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8243''8658''8804'_6260 v0 v1
  = coe seq (coe v1) (coe du_m'8804'm'43'n_3508 (coe v0))
-- Data.Nat.Properties.≤″-proof
d_'8804''8243''45'proof_6268 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'proof_6268 = erased
-- Data.Nat.Properties.m≤n⇒∃[o]m+o≡n
d_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6274 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6274 v0 v1 ~v2
  = du_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6274 v0 v1
du_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6274 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6274 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0) erased
-- Data.Nat.Properties.guarded-∸≗∸
d_guarded'45''8760''8791''8760'_6286 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_guarded'45''8760''8791''8760'_6286 = erased
-- Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_6294 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_6294
  = erased
-- Data.Nat.Properties.m<ᵇ1+m+n
d_m'60''7495'1'43'm'43'n_6306 :: Integer -> Integer -> AgdaAny
d_m'60''7495'1'43'm'43'n_6306 v0 ~v1
  = du_m'60''7495'1'43'm'43'n_6306 v0
du_m'60''7495'1'43'm'43'n_6306 :: Integer -> AgdaAny
du_m'60''7495'1'43'm'43'n_6306 v0
  = coe
      du_'60''8658''60''7495'_2750
      (coe
         du_m'8804'm'43'n_3508 (coe addInt (coe (1 :: Integer)) (coe v0)))
-- Data.Nat.Properties.<ᵇ⇒<″
d_'60''7495''8658''60''8243'_6310 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'60''7495''8658''60''8243'_6310 v0 v1 ~v2
  = du_'60''7495''8658''60''8243'_6310 v0 v1
du_'60''7495''8658''60''8243'_6310 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
du_'60''7495''8658''60''8243'_6310 v0 v1
  = coe
      d_'60''8658''60''8243'_6258 v0 v1
      (coe du_'60''7495''8658''60'_2738 (coe v0))
-- Data.Nat.Properties.<″⇒<ᵇ
d_'60''8243''8658''60''7495'_6320 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  AgdaAny
d_'60''8243''8658''60''7495'_6320 v0 ~v1 v2
  = du_'60''8243''8658''60''7495'_6320 v0 v2
du_'60''8243''8658''60''7495'_6320 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  AgdaAny
du_'60''8243''8658''60''7495'_6320 v0 v1
  = coe
      seq (coe v1)
      (coe
         du_'60''8658''60''7495'_2750
         (coe
            du_m'8804'm'43'n_3508 (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties._<″?_
d__'60''8243''63'__6326 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8243''63'__6326 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (\ v2 -> coe du_'60''7495''8658''60''8243'_6310 (coe v0) (coe v1))
      (coe du_'60''8243''8658''60''7495'_6320 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤″?_
d__'8804''8243''63'__6332 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8243''63'__6332 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42 (coe v1)
                   erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__'60''8243''63'__6326 (coe v2) (coe v1))
-- Data.Nat.Properties._≥″?_
d__'8805''8243''63'__6340 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8243''63'__6340 v0 v1
  = coe d__'8804''8243''63'__6332 (coe v1) (coe v0)
-- Data.Nat.Properties._>″?_
d__'62''8243''63'__6342 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8243''63'__6342 v0 v1
  = coe d__'60''8243''63'__6326 (coe v1) (coe v0)
-- Data.Nat.Properties.≤″-irrelevant
d_'8804''8243''45'irrelevant_6344 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'irrelevant_6344 = erased
-- Data.Nat.Properties.<″-irrelevant
d_'60''8243''45'irrelevant_6358 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''8243''45'irrelevant_6358 = erased
-- Data.Nat.Properties.>″-irrelevant
d_'62''8243''45'irrelevant_6360 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''8243''45'irrelevant_6360 = erased
-- Data.Nat.Properties.≥″-irrelevant
d_'8805''8243''45'irrelevant_6362 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8805''8243''45'irrelevant_6362 = erased
-- Data.Nat.Properties.≤‴⇒≤″
d_'8804''8244''8658''8804''8243'_6364 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'8804''8244''8658''8804''8243'_6364 ~v0 ~v1 v2
  = du_'8804''8244''8658''8804''8243'_6364 v2
du_'8804''8244''8658''8804''8243'_6364 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
du_'8804''8244''8658''8804''8243'_6364 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'reflexive_430
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42
             (coe (0 :: Integer)) erased
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_432 v1
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42
             (coe
                addInt (coe (1 :: Integer))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_38
                   (coe du_'8804''8244''8658''8804''8243'_6364 (coe v1))))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤‴m+k
d_m'8804''8244'm'43'k_6368 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
d_m'8804''8244'm'43'k_6368 ~v0 v1 ~v2
  = du_m'8804''8244'm'43'k_6368 v1
du_m'8804''8244'm'43'k_6368 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
du_m'8804''8244'm'43'k_6368 v0
  = case coe v0 of
      0 -> coe
             (\ v1 ->
                coe MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'reflexive_430)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                (\ v2 ->
                   coe
                     MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_432
                     (coe du_m'8804''8244'm'43'k_6368 v1 erased)))
-- Data.Nat.Properties.≤″⇒≤‴
d_'8804''8243''8658''8804''8244'_6370 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
d_'8804''8243''8658''8804''8244'_6370 ~v0 ~v1 v2
  = du_'8804''8243''8658''8804''8244'_6370 v2
du_'8804''8243''8658''8804''8244'_6370 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
du_'8804''8243''8658''8804''8244'_6370 v0
  = coe
      du_m'8804''8244'm'43'k_6368
      (MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_38 (coe v0))
      erased
-- Data.Nat.Properties.0≤‴n
d_0'8804''8244'n_6372 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
d_0'8804''8244'n_6372 v0
  = coe du_m'8804''8244'm'43'k_6368 v0 erased
-- Data.Nat.Properties.<ᵇ⇒<‴
d_'60''7495''8658''60''8244'_6374 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
d_'60''7495''8658''60''8244'_6374 v0 v1 ~v2
  = du_'60''7495''8658''60''8244'_6374 v0 v1
du_'60''7495''8658''60''8244'_6374 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
du_'60''7495''8658''60''8244'_6374 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_6370
      (coe du_'60''7495''8658''60''8243'_6310 (coe v0) (coe v1))
-- Data.Nat.Properties.<‴⇒<ᵇ
d_'60''8244''8658''60''7495'_6376 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 -> AgdaAny
d_'60''8244''8658''60''7495'_6376 v0 ~v1 v2
  = du_'60''8244''8658''60''7495'_6376 v0 v2
du_'60''8244''8658''60''7495'_6376 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 -> AgdaAny
du_'60''8244''8658''60''7495'_6376 v0 v1
  = coe
      du_'60''8243''8658''60''7495'_6320 (coe v0)
      (coe du_'8804''8244''8658''8804''8243'_6364 (coe v1))
-- Data.Nat.Properties._<‴?_
d__'60''8244''63'__6378 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8244''63'__6378 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (\ v2 -> coe du_'60''7495''8658''60''8244'_6374 (coe v0) (coe v1))
      (coe du_'60''8244''8658''60''7495'_6376 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤‴?_
d__'8804''8244''63'__6384 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8244''63'__6384 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe d_0'8804''8244'n_6372 (coe v1)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__'60''8244''63'__6378 (coe v2) (coe v1))
-- Data.Nat.Properties._≥‴?_
d__'8805''8244''63'__6392 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8244''63'__6392 v0 v1
  = coe d__'8804''8244''63'__6384 (coe v1) (coe v0)
-- Data.Nat.Properties._>‴?_
d__'62''8244''63'__6394 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8244''63'__6394 v0 v1
  = coe d__'60''8244''63'__6378 (coe v1) (coe v0)
-- Data.Nat.Properties.≤⇒≤‴
d_'8804''8658''8804''8244'_6396 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
d_'8804''8658''8804''8244'_6396 v0 v1 ~v2
  = du_'8804''8658''8804''8244'_6396 v0 v1
du_'8804''8658''8804''8244'_6396 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418
du_'8804''8658''8804''8244'_6396 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_6370
      (coe du_'8804''8658''8804''8243'_6254 (coe v0) (coe v1))
-- Data.Nat.Properties.≤‴⇒≤
d_'8804''8244''8658''8804'_6398 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8244''8658''8804'_6398 v0 ~v1 v2
  = du_'8804''8244''8658''8804'_6398 v0 v2
du_'8804''8244''8658''8804'_6398 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8244''8658''8804'_6398 v0 v1
  = coe
      du_'8804''8243''8658''8804'_6260 (coe v0)
      (coe du_'8804''8244''8658''8804''8243'_6364 (coe v1))
-- Data.Nat.Properties.<‴-irrefl
d_'60''8244''45'irrefl_6400 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8244''45'irrefl_6400 = erased
-- Data.Nat.Properties.≤‴-irrelevant
d_'8804''8244''45'irrelevant_6404 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8244''45'irrelevant_6404 = erased
-- Data.Nat.Properties.<‴-irrelevant
d_'60''8244''45'irrelevant_6430 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''8244''45'irrelevant_6430 = erased
-- Data.Nat.Properties.>‴-irrelevant
d_'62''8244''45'irrelevant_6432 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''8244''45'irrelevant_6432 = erased
-- Data.Nat.Properties.≥‴-irrelevant
d_'8805''8244''45'irrelevant_6434 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__418 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8805''8244''45'irrelevant_6434 = erased
-- Data.Nat.Properties.eq?
d_eq'63'_6440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_eq'63'_6440 ~v0 ~v1 v2 = du_eq'63'_6440 v2
du_eq'63'_6440 ::
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_eq'63'_6440 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_via'45'injection_168
      (coe v0) (coe d__'8799'__2710)
-- Data.Nat.Properties._.anyUpTo?
d_anyUpTo'63'_6458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_anyUpTo'63'_6458 ~v0 ~v1 v2 v3 = du_anyUpTo'63'_6458 v2 v3
du_anyUpTo'63'_6458 ::
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_anyUpTo'63'_6458 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v0 v2 in
              coe
                (let v4 = coe du_anyUpTo'63'_6458 (coe v0) (coe v2) in
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
                                                             (coe d_'8804''45'refl_2798 (coe v1))
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
d_'172'Pn'60'1'43'v_6492 ::
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
d_'172'Pn'60'1'43'v_6492 = erased
-- Data.Nat.Properties._.allUpTo?
d_allUpTo'63'_6522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allUpTo'63'_6522 ~v0 ~v1 v2 v3 = du_allUpTo'63'_6522 v2 v3
du_allUpTo'63'_6522 ::
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_allUpTo'63'_6522 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v0 v2 in
              coe
                (let v4 = coe du_allUpTo'63'_6522 (coe v0) (coe v2) in
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
                                                                            du_Pn'60'1'43'v_6554
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
d_Pn'60'1'43'v_6554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  AgdaAny ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_Pn'60'1'43'v_6554 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_Pn'60'1'43'v_6554 v3 v4 v5 v6 v7
du_Pn'60'1'43'v_6554 ::
  Integer ->
  AgdaAny ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_Pn'60'1'43'v_6554 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                     erased (\ v8 -> coe du_'8801''8658''8801''7495'_2700 (coe v3))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                        (coe eqInt (coe v3) (coe v0))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then coe seq (coe v10) (coe v1)
                       else coe
                              seq (coe v10)
                              (coe
                                 v2 v3 (coe du_'8804''8743''8802''8658''60'_2944 (coe v0) (coe v7)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒o<n
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_6580 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_6580 v0 v1 v2
  = coe
      du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3158 v0 v1
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒o≤n
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_6588 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_6588 v0 v1 v2
  = coe
      du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3186 v0 v1
-- Data.Nat.Properties.*-+-isSemiring
d_'42''45''43''45'isSemiring_6590 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'42''45''43''45'isSemiring_6590
  = coe d_'43''45''42''45'isSemiring_3780
-- Data.Nat.Properties.*-+-isCommutativeSemiring
d_'42''45''43''45'isCommutativeSemiring_6592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'42''45''43''45'isCommutativeSemiring_6592
  = coe d_'43''45''42''45'isCommutativeSemiring_3782
-- Data.Nat.Properties.*-+-semiring
d_'42''45''43''45'semiring_6594 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_'42''45''43''45'semiring_6594
  = coe d_'43''45''42''45'semiring_3794
-- Data.Nat.Properties.*-+-commutativeSemiring
d_'42''45''43''45'commutativeSemiring_6596 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'42''45''43''45'commutativeSemiring_6596
  = coe d_'43''45''42''45'commutativeSemiring_3796
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_6598 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_6598 = erased
-- Data.Nat.Properties.m≤n⇒n⊔m≡n
d_m'8804'n'8658'n'8852'm'8801'n_6600 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8852'm'8801'n_6600 = erased
-- Data.Nat.Properties.m≤n⇒n⊓m≡m
d_m'8804'n'8658'n'8851'm'8801'm_6602 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8851'm'8801'm_6602 = erased
-- Data.Nat.Properties.n⊔m≡m⇒n≤m
d_n'8852'm'8801'm'8658'n'8804'm_6604 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8852'm'8801'm'8658'n'8804'm_6604
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.n⊔m≡n⇒m≤n
d_n'8852'm'8801'n'8658'm'8804'n_6606 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8852'm'8801'n'8658'm'8804'n_6606
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.n≤m⊔n
d_n'8804'm'8852'n_6608 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'm'8852'n_6608
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊔-least
d_'8852''45'least_6610 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'least_6610
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-greatest
d_'8851''45'greatest_6612 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'greatest_6612
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊔-pres-≤m
d_'8852''45'pres'45''8804'm_6614 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'pres'45''8804'm_6614
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8852''45'operator_4472 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Nat.Properties.⊓-pres-m≤
d_'8851''45'pres'45'm'8804'_6616 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'pres'45'm'8804'_6616
  = let v0 = d_'8804''45'totalPreorder_2844 in
    coe
      (let v1 = d_'8851''45'operator_4470 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊔-abs-⊓
d_'8852''45'abs'45''8851'_6618 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'abs'45''8851'_6618 = erased
-- Data.Nat.Properties.⊓-abs-⊔
d_'8851''45'abs'45''8852'_6620 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'abs'45''8852'_6620 = erased
-- Data.Nat.Properties.suc[pred[n]]≡n
d_suc'91'pred'91'n'93''93''8801'n_6622 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'91'pred'91'n'93''93''8801'n_6622 = erased
-- Data.Nat.Properties.≤-step
d_'8804''45'step_6628 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'step_6628 ~v0 ~v1 v2 = du_'8804''45'step_6628 v2
du_'8804''45'step_6628 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'step_6628 v0 = coe v0
-- Data.Nat.Properties.≤-stepsˡ
d_'8804''45'steps'737'_6630 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'steps'737'_6630 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'737'_6630 v3
du_'8804''45'steps'737'_6630 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'steps'737'_6630 v0 = coe v0
-- Data.Nat.Properties.≤-stepsʳ
d_'8804''45'steps'691'_6632 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'steps'691'_6632 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'691'_6632 v3
du_'8804''45'steps'691'_6632 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'steps'691'_6632 v0 = coe v0
-- Data.Nat.Properties.<-step
d_'60''45'step_6634 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'step_6634 v0 v1 v2
  = coe du_m'60'n'8658'm'60'1'43'n_3088 v2
-- Data.Nat.Properties.pred-mono
d_pred'45'mono_6636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono_6636 v0 v1 v2
  = coe du_pred'45'mono'45''8804'_5708 v0 v2
-- Data.Nat.Properties.<-transʳ
d_'60''45'trans'691'_6638 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans'691'_6638 v0 v1 v2 v3 v4
  = coe du_'8804''45''60''45'trans_3012 v3 v4
-- Data.Nat.Properties.<-transˡ
d_'60''45'trans'737'_6640 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans'737'_6640 v0 v1 v2 v3 v4
  = coe du_'60''45''8804''45'trans_3018 v3 v4
