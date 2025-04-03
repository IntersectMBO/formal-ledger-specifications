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
import qualified MAlonzo.Code.Algebra.Bundles.Raw
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

-- Data.Integer.Properties._._Absorbs_
d__Absorbs__8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__Absorbs__8 = erased
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
-- Data.Integer.Properties._._IdempotentOn_
d__IdempotentOn__16 ::
  (Integer -> Integer -> Integer) -> Integer -> ()
d__IdempotentOn__16 = erased
-- Data.Integer.Properties._._MiddleFourExchange_
d__MiddleFourExchange__18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__MiddleFourExchange__18 = erased
-- Data.Integer.Properties._.Absorptive
d_Absorptive_20 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Absorptive_20 = erased
-- Data.Integer.Properties._.AlmostCancellative
d_AlmostCancellative_22 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostCancellative_22 = erased
-- Data.Integer.Properties._.AlmostLeftCancellative
d_AlmostLeftCancellative_24 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostLeftCancellative_24 = erased
-- Data.Integer.Properties._.AlmostRightCancellative
d_AlmostRightCancellative_26 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostRightCancellative_26 = erased
-- Data.Integer.Properties._.Alternative
d_Alternative_28 :: (Integer -> Integer -> Integer) -> ()
d_Alternative_28 = erased
-- Data.Integer.Properties._.Associative
d_Associative_30 :: (Integer -> Integer -> Integer) -> ()
d_Associative_30 = erased
-- Data.Integer.Properties._.Cancellative
d_Cancellative_32 :: (Integer -> Integer -> Integer) -> ()
d_Cancellative_32 = erased
-- Data.Integer.Properties._.Commutative
d_Commutative_34 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_34 = erased
-- Data.Integer.Properties._.Congruent₁
d_Congruent'8321'_36 :: (Integer -> Integer) -> ()
d_Congruent'8321'_36 = erased
-- Data.Integer.Properties._.Congruent₂
d_Congruent'8322'_38 :: (Integer -> Integer -> Integer) -> ()
d_Congruent'8322'_38 = erased
-- Data.Integer.Properties._.Conical
d_Conical_40 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Conical_40 = erased
-- Data.Integer.Properties._.Flexible
d_Flexible_42 :: (Integer -> Integer -> Integer) -> ()
d_Flexible_42 = erased
-- Data.Integer.Properties._.Idempotent
d_Idempotent_44 :: (Integer -> Integer -> Integer) -> ()
d_Idempotent_44 = erased
-- Data.Integer.Properties._.IdempotentFun
d_IdempotentFun_46 :: (Integer -> Integer) -> ()
d_IdempotentFun_46 = erased
-- Data.Integer.Properties._.Identical
d_Identical_48 :: (Integer -> Integer -> Integer) -> ()
d_Identical_48 = erased
-- Data.Integer.Properties._.Identity
d_Identity_50 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_50 = erased
-- Data.Integer.Properties._.Interchangable
d_Interchangable_52 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Interchangable_52 = erased
-- Data.Integer.Properties._.Inverse
d_Inverse_54 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_54 = erased
-- Data.Integer.Properties._.Invertible
d_Invertible_56 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_Invertible_56 = erased
-- Data.Integer.Properties._.Involutive
d_Involutive_58 :: (Integer -> Integer) -> ()
d_Involutive_58 = erased
-- Data.Integer.Properties._.LeftAlternative
d_LeftAlternative_60 :: (Integer -> Integer -> Integer) -> ()
d_LeftAlternative_60 = erased
-- Data.Integer.Properties._.LeftBol
d_LeftBol_62 :: (Integer -> Integer -> Integer) -> ()
d_LeftBol_62 = erased
-- Data.Integer.Properties._.LeftCancellative
d_LeftCancellative_64 :: (Integer -> Integer -> Integer) -> ()
d_LeftCancellative_64 = erased
-- Data.Integer.Properties._.LeftCongruent
d_LeftCongruent_66 :: (Integer -> Integer -> Integer) -> ()
d_LeftCongruent_66 = erased
-- Data.Integer.Properties._.LeftConical
d_LeftConical_68 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftConical_68 = erased
-- Data.Integer.Properties._.LeftDivides
d_LeftDivides_70 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides_70 = erased
-- Data.Integer.Properties._.LeftDividesʳ
d_LeftDivides'691'_72 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'691'_72 = erased
-- Data.Integer.Properties._.LeftDividesˡ
d_LeftDivides'737'_74 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'737'_74 = erased
-- Data.Integer.Properties._.LeftIdentity
d_LeftIdentity_76 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_76 = erased
-- Data.Integer.Properties._.LeftInverse
d_LeftInverse_78 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_78 = erased
-- Data.Integer.Properties._.LeftInvertible
d_LeftInvertible_80 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_LeftInvertible_80 = erased
-- Data.Integer.Properties._.LeftSemimedial
d_LeftSemimedial_82 :: (Integer -> Integer -> Integer) -> ()
d_LeftSemimedial_82 = erased
-- Data.Integer.Properties._.LeftZero
d_LeftZero_84 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_84 = erased
-- Data.Integer.Properties._.Medial
d_Medial_86 :: (Integer -> Integer -> Integer) -> ()
d_Medial_86 = erased
-- Data.Integer.Properties._.MiddleBol
d_MiddleBol_88 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_MiddleBol_88 = erased
-- Data.Integer.Properties._.RightAlternative
d_RightAlternative_90 :: (Integer -> Integer -> Integer) -> ()
d_RightAlternative_90 = erased
-- Data.Integer.Properties._.RightBol
d_RightBol_92 :: (Integer -> Integer -> Integer) -> ()
d_RightBol_92 = erased
-- Data.Integer.Properties._.RightCancellative
d_RightCancellative_94 :: (Integer -> Integer -> Integer) -> ()
d_RightCancellative_94 = erased
-- Data.Integer.Properties._.RightCongruent
d_RightCongruent_96 :: (Integer -> Integer -> Integer) -> ()
d_RightCongruent_96 = erased
-- Data.Integer.Properties._.RightConical
d_RightConical_98 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightConical_98 = erased
-- Data.Integer.Properties._.RightDivides
d_RightDivides_100 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides_100 = erased
-- Data.Integer.Properties._.RightDividesʳ
d_RightDivides'691'_102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'691'_102 = erased
-- Data.Integer.Properties._.RightDividesˡ
d_RightDivides'737'_104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'737'_104 = erased
-- Data.Integer.Properties._.RightIdentity
d_RightIdentity_106 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_106 = erased
-- Data.Integer.Properties._.RightInverse
d_RightInverse_108 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_108 = erased
-- Data.Integer.Properties._.RightInvertible
d_RightInvertible_110 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_RightInvertible_110 = erased
-- Data.Integer.Properties._.RightSemimedial
d_RightSemimedial_112 :: (Integer -> Integer -> Integer) -> ()
d_RightSemimedial_112 = erased
-- Data.Integer.Properties._.RightZero
d_RightZero_114 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_114 = erased
-- Data.Integer.Properties._.Selective
d_Selective_116 :: (Integer -> Integer -> Integer) -> ()
d_Selective_116 = erased
-- Data.Integer.Properties._.SelfInverse
d_SelfInverse_118 :: (Integer -> Integer) -> ()
d_SelfInverse_118 = erased
-- Data.Integer.Properties._.Semimedial
d_Semimedial_120 :: (Integer -> Integer -> Integer) -> ()
d_Semimedial_120 = erased
-- Data.Integer.Properties._.StarDestructive
d_StarDestructive_122 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarDestructive_122 = erased
-- Data.Integer.Properties._.StarExpansive
d_StarExpansive_124 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarExpansive_124 = erased
-- Data.Integer.Properties._.StarLeftDestructive
d_StarLeftDestructive_126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftDestructive_126 = erased
-- Data.Integer.Properties._.StarLeftExpansive
d_StarLeftExpansive_128 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftExpansive_128 = erased
-- Data.Integer.Properties._.StarRightDestructive
d_StarRightDestructive_130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightDestructive_130 = erased
-- Data.Integer.Properties._.StarRightExpansive
d_StarRightExpansive_132 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightExpansive_132 = erased
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
-- Data.Integer.Properties._.IsCommutativeBand
d_IsCommutativeBand_146 a0 = ()
-- Data.Integer.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_148 a0 = ()
-- Data.Integer.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_150 a0 a1 = ()
-- Data.Integer.Properties._.IsCommutativeRing
d_IsCommutativeRing_152 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_154 a0 = ()
-- Data.Integer.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_156 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_158 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_160 a0 = ()
-- Data.Integer.Properties._.IsGroup
d_IsGroup_162 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_164 a0 a1 = ()
-- Data.Integer.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_166 a0 = ()
-- Data.Integer.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_168 a0 a1 = ()
-- Data.Integer.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_170 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_172 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_174 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_176 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_178 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsLoop
d_IsLoop_180 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsMagma
d_IsMagma_182 a0 = ()
-- Data.Integer.Properties._.IsMedialMagma
d_IsMedialMagma_184 a0 = ()
-- Data.Integer.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_186 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsMonoid
d_IsMonoid_188 a0 a1 = ()
-- Data.Integer.Properties._.IsMoufangLoop
d_IsMoufangLoop_190 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsNearSemiring
d_IsNearSemiring_192 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsNearring
d_IsNearring_194 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_196 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsQuasigroup
d_IsQuasigroup_198 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsQuasiring
d_IsQuasiring_200 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsRightBolLoop
d_IsRightBolLoop_202 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsRing
d_IsRing_204 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_206 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_208 a0 = ()
-- Data.Integer.Properties._.IsSemigroup
d_IsSemigroup_210 a0 = ()
-- Data.Integer.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_212 a0 = ()
-- Data.Integer.Properties._.IsSemiring
d_IsSemiring_214 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_216 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_218 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsSuccessorSet
d_IsSuccessorSet_220 a0 a1 = ()
-- Data.Integer.Properties._.IsUnitalMagma
d_IsUnitalMagma_222 a0 a1 = ()
-- Data.Integer.Properties._.IsAbelianGroup._//_
d__'47''47'__226 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> Integer -> Integer
d__'47''47'__226 v0 ~v1 v2 ~v3 = du__'47''47'__226 v0 v2
du__'47''47'__226 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__226 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsAbelianGroup.assoc
d_assoc_228 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_228 = erased
-- Data.Integer.Properties._.IsAbelianGroup.comm
d_comm_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_230 = erased
-- Data.Integer.Properties._.IsAbelianGroup.identity
d_identity_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Integer.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_234 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_234 = erased
-- Data.Integer.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_236 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_236 = erased
-- Data.Integer.Properties._.IsAbelianGroup.inverse
d_inverse_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_240 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_240 = erased
-- Data.Integer.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_242 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_242 = erased
-- Data.Integer.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_244 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_244 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_244 v3
du_isCommutativeMagma_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_244 v0
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
-- Data.Integer.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_246 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204 v3
-- Data.Integer.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_248 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_248 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_248 v3
du_isCommutativeSemigroup_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
         (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))))
-- Data.Integer.Properties._.IsAbelianGroup.isGroup
d_isGroup_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_252 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Data.Integer.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_254 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_254 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_254 v3
du_isInvertibleMagma_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_256 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_256 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_256 v3
du_isInvertibleUnitalMagma_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isMagma
d_isMagma_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))))
-- Data.Integer.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_260 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_262 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_262 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_262 v3
du_isPartialEquivalence_262 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_262 v0
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
-- Data.Integer.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Integer.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_266 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_266 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_266 v3
du_isUnitalMagma_266 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_266 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1)))
-- Data.Integer.Properties._.IsAbelianGroup.refl
d_refl_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_268 = erased
-- Data.Integer.Properties._.IsAbelianGroup.reflexive
d_reflexive_270 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_270 = erased
-- Data.Integer.Properties._.IsAbelianGroup.setoid
d_setoid_272 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_272 ~v0 ~v1 ~v2 v3 = du_setoid_272 v3
du_setoid_272 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_272 v0
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
-- Data.Integer.Properties._.IsAbelianGroup.sym
d_sym_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_274 = erased
-- Data.Integer.Properties._.IsAbelianGroup.trans
d_trans_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_276 = erased
-- Data.Integer.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_278 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_278 = erased
-- Data.Integer.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_280 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_280 = erased
-- Data.Integer.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_282 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_282 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_284 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_284 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_286 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_286 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_288 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_288 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.alter
d_alter_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_292 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_294 (coe v0)
-- Data.Integer.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_294 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_294 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_296 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_296 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_298 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Integer.Properties._.IsAlternativeMagma.isMagma
d_isMagma_300 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_300 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0)
-- Data.Integer.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_302 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_302 ~v0 v1 = du_isPartialEquivalence_302 v1
du_isPartialEquivalence_302 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_302 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsAlternativeMagma.refl
d_refl_304 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_304 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.reflexive
d_reflexive_306 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_306 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.setoid
d_setoid_308 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_308 ~v0 v1 = du_setoid_308 v1
du_setoid_308 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Integer.Properties._.IsAlternativeMagma.sym
d_sym_310 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_310 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.trans
d_trans_312 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_312 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_314 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_314 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_316 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_316 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_318 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_318 = erased
-- Data.Integer.Properties._.IsBand.assoc
d_assoc_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_322 = erased
-- Data.Integer.Properties._.IsBand.idem
d_idem_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_324 = erased
-- Data.Integer.Properties._.IsBand.isEquivalence
d_isEquivalence_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)))
-- Data.Integer.Properties._.IsBand.isMagma
d_isMagma_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0))
-- Data.Integer.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_330 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_330 ~v0 v1 = du_isPartialEquivalence_330 v1
du_isPartialEquivalence_330 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_330 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Integer.Properties._.IsBand.isSemigroup
d_isSemigroup_332 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_332 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)
-- Data.Integer.Properties._.IsBand.refl
d_refl_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_334 = erased
-- Data.Integer.Properties._.IsBand.reflexive
d_reflexive_336 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_336 = erased
-- Data.Integer.Properties._.IsBand.setoid
d_setoid_338 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_338 ~v0 v1 = du_setoid_338 v1
du_setoid_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_338 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Integer.Properties._.IsBand.sym
d_sym_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_340 = erased
-- Data.Integer.Properties._.IsBand.trans
d_trans_342 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_342 = erased
-- Data.Integer.Properties._.IsBand.∙-cong
d_'8729''45'cong_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_344 = erased
-- Data.Integer.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_346 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_346 = erased
-- Data.Integer.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_348 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_348 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_352 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_354 ::
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
d_'42''45'cancel'691''45'nonZero_354 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_356 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_356 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_358 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_360 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_360 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_362 ::
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
d_'8729''45'cong'691'_362 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_364 ::
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
d_'8729''45'cong'737'_364 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_366 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_368 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_368 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_370 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_370 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_372 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_372 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_372 v4
du_isCommutativeMagma_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_372 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_374 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_374 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_374 v4
du_'42''45'isCommutativeMonoid_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_376 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_376 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_376 v4
du_'42''45'isCommutativeSemigroup_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_376 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe v1)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_378 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_378 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_378 v4
du_'42''45'isMagma_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_378 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_380 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_380 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_380 v4
du_'42''45'isMonoid_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_380 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_382 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_382 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_382 v4
du_'42''45'isSemigroup_382 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_382 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_384 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_384 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_386 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_386 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_388 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_390 ::
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
d_'8729''45'cong'691'_390 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_392 ::
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
d_'8729''45'cong'737'_392 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_394 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_396 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_396 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_398 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_398 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_400 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_400 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_400 v4
du_isCommutativeMagma_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_400 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_402 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_404 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_404 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_404 v4
du_isCommutativeSemigroup_404 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_404 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_406 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_408 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_408 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_410 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_410 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_412 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_412 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_412 v4
du_isUnitalMagma_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_412 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_414 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
               (coe v0))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_416 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_418 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_418 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
      (coe v0)
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_422 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_422 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_422 v4
du_isCommutativeSemiringWithoutOne_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_424 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_426 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_426 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_426 v4
du_isNearSemiring_426 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_426 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_428 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_428 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_428 v4
du_isPartialEquivalence_428 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_428 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_432 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
            (coe v0)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_434 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_434 v4
du_isSemiringWithoutOne_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_434 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_436 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_438 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_438 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_440 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_440 v4
du_setoid_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_440 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_442 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_442 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_444 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
            (coe v0)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_448 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_448 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_450 = erased
-- Data.Integer.Properties._.IsCommutativeBand.assoc
d_assoc_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_454 = erased
-- Data.Integer.Properties._.IsCommutativeBand.comm
d_comm_456 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_456 = erased
-- Data.Integer.Properties._.IsCommutativeBand.idem
d_idem_458 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_458 = erased
-- Data.Integer.Properties._.IsCommutativeBand.isBand
d_isBand_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Integer.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_462 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_462 ~v0 v1 = du_isCommutativeMagma_462 v1
du_isCommutativeMagma_462 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_464 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_464 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632 v1
-- Data.Integer.Properties._.IsCommutativeBand.isEquivalence
d_isEquivalence_466 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeBand.isMagma
d_isMagma_468 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_470 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_470 ~v0 v1 = du_isPartialEquivalence_470 v1
du_isPartialEquivalence_470 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_470 v0
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
-- Data.Integer.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Integer.Properties._.IsCommutativeBand.refl
d_refl_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_474 = erased
-- Data.Integer.Properties._.IsCommutativeBand.reflexive
d_reflexive_476 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_476 = erased
-- Data.Integer.Properties._.IsCommutativeBand.setoid
d_setoid_478 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_478 ~v0 v1 = du_setoid_478 v1
du_setoid_478 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_478 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeBand.sym
d_sym_480 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_480 = erased
-- Data.Integer.Properties._.IsCommutativeBand.trans
d_trans_482 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_482 = erased
-- Data.Integer.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_484 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_484 = erased
-- Data.Integer.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_486 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_486 = erased
-- Data.Integer.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_488 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_488 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.comm
d_comm_492 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_492 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMagma.isMagma
d_isMagma_496 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_496 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0)
-- Data.Integer.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_498 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_498 ~v0 v1 = du_isPartialEquivalence_498 v1
du_isPartialEquivalence_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_498 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsCommutativeMagma.refl
d_refl_500 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_500 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.reflexive
d_reflexive_502 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_502 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.setoid
d_setoid_504 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_504 ~v0 v1 = du_setoid_504 v1
du_setoid_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMagma.sym
d_sym_506 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_506 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.trans
d_trans_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_508 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_510 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_510 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_512 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_512 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_514 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_514 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.assoc
d_assoc_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_518 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.comm
d_comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_520 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.identity
d_identity_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_524 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_524 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_526 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_526 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_528 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_528 ~v0 ~v1 v2 = du_isCommutativeMagma_528 v2
du_isCommutativeMagma_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_530 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_530 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786 v2
-- Data.Integer.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_534 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_536 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_536 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Data.Integer.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_538 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_538 ~v0 ~v1 v2
  = du_isPartialEquivalence_538 v2
du_isPartialEquivalence_538 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_538 v0
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
-- Data.Integer.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_540 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_542 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_542 ~v0 ~v1 v2 = du_isUnitalMagma_542 v2
du_isUnitalMagma_542 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.refl
d_refl_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_544 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_546 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_546 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.setoid
d_setoid_548 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_548 ~v0 ~v1 v2 = du_setoid_548 v2
du_setoid_548 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_548 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeMonoid.sym
d_sym_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_550 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.trans
d_trans_552 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_552 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_554 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_554 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_556 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_556 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_558 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_558 = erased
-- Data.Integer.Properties._.IsCommutativeRing._//_
d__'47''47'__562 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> Integer -> Integer
d__'47''47'__562 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__562 v0 v2
du__'47''47'__562 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__562 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_564 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_564 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_566 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_566 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_568 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_568 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_570 ::
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
d_'8729''45'cong'691'_570 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_572 ::
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
d_'8729''45'cong'737'_572 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_574 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_574 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_576 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_578 = erased
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_580 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_580 v0 v1 v2 v3 v5
du_isCommutativeMagma_580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_580 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_582 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_582 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_582 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_584 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_584 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_584 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_586 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_586 v0 v1 v2 v3 v5
du_'42''45'isMagma_586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_586 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_588 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_588 v0 v1 v2 v3 v5
du_'42''45'isMonoid_588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_588 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_590 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_590 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_590 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.assoc
d_assoc_592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_592 = erased
-- Data.Integer.Properties._.IsCommutativeRing.comm
d_comm_594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_594 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_596 ::
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
d_'8729''45'cong_596 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_598 ::
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
d_'8729''45'cong'691'_598 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_600 ::
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
d_'8729''45'cong'737'_600 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identity
d_identity_602 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_602 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_602 v5
du_identity_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_602 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_604 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_604 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_606 = erased
-- Data.Integer.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_610 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_610 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_610 v5
du_isCommutativeMagma_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_610 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_612 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_612 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_612 v5
du_isCommutativeMonoid_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_612 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_614 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_614 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_614 v5
du_isCommutativeSemigroup_614 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_614 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isGroup
d_isGroup_616 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_616 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_616 v5
du_isGroup_616 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_isGroup_616 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_618 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_618 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_618 v5
du_isInvertibleMagma_618 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_618 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_620 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_620 v5
du_isInvertibleUnitalMagma_620 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_620 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isMagma
d_isMagma_622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_622 v5
du_isMagma_622 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_622 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_624 v5
du_isMonoid_624 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_624 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_626 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_626 v5
du_isSemigroup_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_626 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_628 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_628 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_628 v5
du_isUnitalMagma_628 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_628 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_630 ::
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
d_'8315''185''45'cong_630 = erased
-- Data.Integer.Properties._.IsCommutativeRing.inverse
d_inverse_632 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_632 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_632 v5
du_inverse_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_632 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_634 = erased
-- Data.Integer.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_636 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_636 = erased
-- Data.Integer.Properties._.IsCommutativeRing.distrib
d_distrib_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2702
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_640 = erased
-- Data.Integer.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_642 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_642 = erased
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_644 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_644 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948 v0 v1
      v2 v3 v5
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_646 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_646 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_646 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_648 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_648 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_648 v5
du_isEquivalence_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_648 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_650 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_650 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_650 v0 v1 v2 v3 v5
du_isNearSemiring_650 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_650 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v5)))
-- Data.Integer.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_652 v5
du_isPartialEquivalence_652 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_652 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isRing
d_isRing_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_654 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0)
-- Data.Integer.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_656 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_656 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_656 v5
du_isRingWithoutOne_656 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
du_isRingWithoutOne_656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_658 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_658 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_658 v0 v1 v2 v3 v5
du_isSemiring_658 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_isSemiring_658 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_660 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_660 v5
du_isSemiringWithoutAnnihilatingZero_660 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
du_isSemiringWithoutAnnihilatingZero_660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_662 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_662 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_662 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_662 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_662 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Integer.Properties._.IsCommutativeRing.refl
d_refl_664 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_664 = erased
-- Data.Integer.Properties._.IsCommutativeRing.reflexive
d_reflexive_666 ::
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
d_reflexive_666 = erased
-- Data.Integer.Properties._.IsCommutativeRing.setoid
d_setoid_668 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_668 v5
du_setoid_668 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_668 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.sym
d_sym_670 ::
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
d_sym_670 = erased
-- Data.Integer.Properties._.IsCommutativeRing.trans
d_trans_672 ::
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
d_trans_672 = erased
-- Data.Integer.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_674 ::
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
d_unique'691''45''8315''185'_674 = erased
-- Data.Integer.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_676 ::
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
d_unique'737''45''8315''185'_676 = erased
-- Data.Integer.Properties._.IsCommutativeRing.zero
d_zero_678 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_678 v0 v1 v2 v3 ~v4 v5 = du_zero_678 v0 v1 v2 v3 v5
du_zero_678 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_678 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v5)))
-- Data.Integer.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_680 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_680 = erased
-- Data.Integer.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_682 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_682 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.assoc
d_assoc_686 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_686 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.comm
d_comm_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_688 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_690 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_690 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586 v1
-- Data.Integer.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_692 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_692 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_694 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_696 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_696 ~v0 v1 = du_isPartialEquivalence_696 v1
du_isPartialEquivalence_696 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_696 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_698 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemigroup.refl
d_refl_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_700 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_702 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_702 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.setoid
d_setoid_704 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_704 ~v0 v1 = du_setoid_704 v1
du_setoid_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_704 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemigroup.sym
d_sym_706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_706 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.trans
d_trans_708 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_708 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_710 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_712 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_712 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_714 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_714 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_718 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_720 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_720 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_722 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_724 ::
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
d_'8729''45'cong'691'_724 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_726 ::
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
d_'8729''45'cong'737'_726 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_730 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_730 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_732 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_732 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_734 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_734 v4
du_isCommutativeMagma_734 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_734 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_736 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_736 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      v4
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_738 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_738 v4
du_'42''45'isCommutativeSemigroup_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_740 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_740 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_740 v4
du_'42''45'isMagma_740 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_740 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_742 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_742 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_742 v4
du_'42''45'isMonoid_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_742 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_744 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_744 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_744 v4
du_'42''45'isSemigroup_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_744 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.assoc
d_assoc_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_746 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.comm
d_comm_748 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_748 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_750 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_750 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_752 ::
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
d_'8729''45'cong'691'_752 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_754 ::
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
d_'8729''45'cong'737'_754 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identity
d_identity_756 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))
-- Data.Integer.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_758 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_758 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_760 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_762 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_762 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_762 v4
du_isCommutativeMagma_762 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_762 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_766 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_766 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_766 v4
du_isCommutativeSemigroup_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_766 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_768 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_772 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))))
-- Data.Integer.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_774 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_774 v4
du_isUnitalMagma_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_774 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.distrib
d_distrib_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_778 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_778 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_780 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_782 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_782 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      v4
-- Data.Integer.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_784 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_784 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_786 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_786 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_786 v4
du_isNearSemiring_786 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_786 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_788 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_788 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_788 v4
du_isPartialEquivalence_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_788 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_790 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_794 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_794 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_794 v4
du_isSemiringWithoutOne_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.refl
d_refl_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_796 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_798 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_798 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.setoid
d_setoid_800 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_800 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_800 v4
du_setoid_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_800 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.sym
d_sym_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_802 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.trans
d_trans_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_804 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.zero
d_zero_806 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_806 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_808 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_808 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_810 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_810 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_814 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_816 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_818 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_820 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_820 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_822 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_822 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_824 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_824 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_824 v3
du_isCommutativeMagma_824 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_826 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_826 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      v3
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_828 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_828 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_828 v3
du_'42''45'isMagma_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_830 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_830 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_830 v3
du_'42''45'isSemigroup_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_832 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_834 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_836 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_838 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_838 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_840 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_840 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.identity
d_identity_842 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
               (coe v0))))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_844 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_844 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_846 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_846 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_848 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_848 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_848 v3
du_isCommutativeMagma_848 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_848 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_852 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_852 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_852 v3
du_isCommutativeSemigroup_852 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_852 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_854 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
            (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1322
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_858 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_858 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_860 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_860 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
d_isEquivalence_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_862 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_864 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_864 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_864 v3
du_isNearSemiring_864 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_866 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_866 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_866 v3
du_isPartialEquivalence_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_866 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
      (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_870 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_870 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_872 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_872 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_874 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_874 ~v0 ~v1 ~v2 v3 = du_setoid_874 v3
du_setoid_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_874 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_876 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_878 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1324
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_882 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_882 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_884 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_884 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.flex
d_flex_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_888 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Integer.Properties._.IsFlexibleMagma.isMagma
d_isMagma_892 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_892 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0)
-- Data.Integer.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_894 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_894 ~v0 v1 = du_isPartialEquivalence_894 v1
du_isPartialEquivalence_894 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_894 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsFlexibleMagma.refl
d_refl_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_896 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.reflexive
d_reflexive_898 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_898 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.setoid
d_setoid_900 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_900 ~v0 v1 = du_setoid_900 v1
du_setoid_900 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Integer.Properties._.IsFlexibleMagma.sym
d_sym_902 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_902 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.trans
d_trans_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_904 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_906 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_906 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_908 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_908 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_910 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_910 = erased
-- Data.Integer.Properties._.IsGroup._-_
d__'45'__914 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> Integer -> Integer
d__'45'__914 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1104 v0 v2
-- Data.Integer.Properties._.IsGroup._//_
d__'47''47'__916 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> Integer -> Integer
d__'47''47'__916 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 v0 v2 v4 v5
-- Data.Integer.Properties._.IsGroup._\\_
d__'92''92'__918 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> Integer -> Integer
d__'92''92'__918 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1092 v0 v2 v4 v5
-- Data.Integer.Properties._.IsGroup.assoc
d_assoc_920 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_920 = erased
-- Data.Integer.Properties._.IsGroup.identity
d_identity_922 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_922 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Integer.Properties._.IsGroup.identityʳ
d_identity'691'_924 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_924 = erased
-- Data.Integer.Properties._.IsGroup.identityˡ
d_identity'737'_926 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_926 = erased
-- Data.Integer.Properties._.IsGroup.inverse
d_inverse_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_928 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1052 (coe v0)
-- Data.Integer.Properties._.IsGroup.inverseʳ
d_inverse'691'_930 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_930 = erased
-- Data.Integer.Properties._.IsGroup.inverseˡ
d_inverse'737'_932 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_932 = erased
-- Data.Integer.Properties._.IsGroup.isEquivalence
d_isEquivalence_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_934 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))))
-- Data.Integer.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_936 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_936 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122 v3
-- Data.Integer.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_938 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_938 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124 v3
-- Data.Integer.Properties._.IsGroup.isMagma
d_isMagma_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)))
-- Data.Integer.Properties._.IsGroup.isMonoid
d_isMonoid_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_942 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)
-- Data.Integer.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_944 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_944 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_944 v3
du_isPartialEquivalence_944 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_944 v0
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
-- Data.Integer.Properties._.IsGroup.isSemigroup
d_isSemigroup_946 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Integer.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_948 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_948 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_948 v3
du_isUnitalMagma_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_948 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Integer.Properties._.IsGroup.refl
d_refl_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_950 = erased
-- Data.Integer.Properties._.IsGroup.reflexive
d_reflexive_952 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_952 = erased
-- Data.Integer.Properties._.IsGroup.setoid
d_setoid_954 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_954 ~v0 ~v1 ~v2 v3 = du_setoid_954 v3
du_setoid_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_954 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Integer.Properties._.IsGroup.sym
d_sym_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_956 = erased
-- Data.Integer.Properties._.IsGroup.trans
d_trans_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_958 = erased
-- Data.Integer.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_960 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_960 = erased
-- Data.Integer.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_962 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_962 = erased
-- Data.Integer.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_964 = erased
-- Data.Integer.Properties._.IsGroup.∙-cong
d_'8729''45'cong_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_966 = erased
-- Data.Integer.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_968 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_968 = erased
-- Data.Integer.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_970 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_970 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_974 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_974 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_976 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_978 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_978 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_980 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_980 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_982 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_982 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_984 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_984 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_986 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_986 ~v0 ~v1 v2 = du_isBand_986 v2
du_isBand_986 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_846
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_988 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_988 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 v2
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_990 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_990 ~v0 ~v1 v2 = du_isCommutativeMagma_990 v2
du_isCommutativeMagma_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_990 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_992 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0)
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_994 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_994 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_994 v2
du_isCommutativeSemigroup_994 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_994 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_996 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_996 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_998 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_998 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 v2
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_1000 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
               (coe v0))))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_1002 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1002 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_1004 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1004 ~v0 ~v1 v2
  = du_isPartialEquivalence_1004 v2
du_isPartialEquivalence_1004 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1004 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_1006 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1008 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1008 ~v0 ~v1 v2 = du_isUnitalMagma_1008 v2
du_isUnitalMagma_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1008 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1010 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1012 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1012 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1014 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1014 ~v0 ~v1 v2 = du_setoid_1014 v2
du_setoid_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1014 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1016 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1018 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1020 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1022 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1022 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1024 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1024 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.idem
d_idem_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1028 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1032 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0)
-- Data.Integer.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1034 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1034 ~v0 v1
  = du_isPartialEquivalence_1034 v1
du_isPartialEquivalence_1034 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1034 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsIdempotentMagma.refl
d_refl_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1036 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1038 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1038 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.setoid
d_setoid_1040 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1040 ~v0 v1 = du_setoid_1040 v1
du_setoid_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMagma.sym
d_sym_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1042 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.trans
d_trans_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1044 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1046 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1046 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1048 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1048 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1050 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1050 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.assoc
d_assoc_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1054 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.idem
d_idem_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1056 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.identity
d_identity_1058 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1058 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1060 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1060 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1062 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1062 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.isBand
d_isBand_1064 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1064 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_846 v2
-- Data.Integer.Properties._.IsIdempotentMonoid.isEquivalence
d_isEquivalence_1066 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1066 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))))
-- Data.Integer.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1070 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)
-- Data.Integer.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1072 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1072 ~v0 ~v1 v2
  = du_isPartialEquivalence_1072 v2
du_isPartialEquivalence_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1072 v0
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
-- Data.Integer.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1074 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1074 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1076 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1076 ~v0 ~v1 v2 = du_isUnitalMagma_1076 v2
du_isUnitalMagma_1076 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1076 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMonoid.refl
d_refl_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1078 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1080 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1080 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.setoid
d_setoid_1082 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1082 ~v0 ~v1 v2 = du_setoid_1082 v2
du_setoid_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1082 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Integer.Properties._.IsIdempotentMonoid.sym
d_sym_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1084 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.trans
d_trans_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1086 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1088 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1088 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1090 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1090 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1092 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1092 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1096 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1096 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1098 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1100 ::
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
d_'8729''45'cong'691'_1100 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1102 ::
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
d_'8729''45'cong'737'_1102 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1104 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1106 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1106 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1108 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1108 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1110 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1110 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1110 v4
du_'42''45'isMagma_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1110 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1112 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1112 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1112 v4
du_'42''45'isMonoid_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1112 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1114 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1114 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1114 v4
du_'42''45'isSemigroup_1114 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1114 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.assoc
d_assoc_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1116 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.comm
d_comm_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1118 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1120 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1122 ::
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
d_'8729''45'cong'691'_1122 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1124 ::
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
d_'8729''45'cong'737'_1124 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1126 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identity
d_identity_1128 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))
-- Data.Integer.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1130 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1132 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.isBand
d_isBand_1134 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1134 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_1134 v4
du_isBand_1134 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_1134 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1136 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_1136 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeBand_1136 v4
du_isCommutativeBand_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_1136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
         (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1138 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1138 v4
du_isCommutativeMagma_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1138 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1142 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1142 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1142 v4
du_isCommutativeSemigroup_1142 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1142 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1144 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1144 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      v4
-- Data.Integer.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1146 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_1146 ~v0 ~v1 ~v2 ~v3 v4
  = du_isIdempotentMonoid_1146 v4
du_isIdempotentMonoid_1146 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_1146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
         (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1148 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1148 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))))
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))))
-- Data.Integer.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1154 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1154 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1154 v4
du_isUnitalMagma_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1154 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.distrib
d_distrib_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1158 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1158 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1160 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1162 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1162 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1164 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1164 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1164 v4
du_isNearSemiring_1164 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1164 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1166 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1166 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1166 v4
du_isPartialEquivalence_1166 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1166 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1168 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1172 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1172 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1172 v4
du_isSemiringWithoutOne_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.refl
d_refl_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1174 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1176 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1176 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.setoid
d_setoid_1178 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1178 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1178 v4
du_setoid_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1178 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.sym
d_sym_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1180 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.trans
d_trans_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1182 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.zero
d_zero_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1186 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1186 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1188 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.inverse
d_inverse_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1192 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_940 (coe v0)
-- Data.Integer.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1194 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1194 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1196 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1196 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Integer.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1200 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1200 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0)
-- Data.Integer.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1202 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1202 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1202 v3
du_isPartialEquivalence_1202 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1202 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsInvertibleMagma.refl
d_refl_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1204 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1206 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1206 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.setoid
d_setoid_1208 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1208 ~v0 ~v1 ~v2 v3 = du_setoid_1208 v3
du_setoid_1208 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1208 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Integer.Properties._.IsInvertibleMagma.sym
d_sym_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1210 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.trans
d_trans_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1212 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1214 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1214 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1216 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1218 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1218 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1220 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1220 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1224 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_990 (coe v0)
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1226 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1226 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1228 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1228 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_940
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1232 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1232 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1234 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1234 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1236 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_938
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1238 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1240 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_938
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1242 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1242 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1242 v3
du_isPartialEquivalence_1242 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1242 v0
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
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1244 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1244 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1028 v3
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1246 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1246 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1248 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1248 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1250 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1250 ~v0 ~v1 ~v2 v3 = du_setoid_1250 v3
du_setoid_1250 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1250 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v1)))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1252 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1252 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1254 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1254 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1256 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1256 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1258 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1260 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1260 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1262 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1262 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1266 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1268 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1270 ::
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
d_'8729''45'cong'691'_1270 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1272 ::
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
d_'8729''45'cong'737'_1272 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1276 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1276 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1278 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1278 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1280 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1280 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1280 v5
du_'42''45'isMagma_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1280 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1282 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1282 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1282 v5
du_'42''45'isMonoid_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1282 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1284 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1284 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1284 v5
du_'42''45'isSemigroup_1284 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1284 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.assoc
d_assoc_1286 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1286 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.comm
d_comm_1288 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1288 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1290 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1290 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1292 ::
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
d_'8729''45'cong'691'_1292 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1294 ::
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
d_'8729''45'cong'737'_1294 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1296 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1296 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identity
d_identity_1298 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1298 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1300 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1300 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1302 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1302 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.isBand
d_isBand_1304 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1304 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isBand_1304 v5
du_isBand_1304 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_1304 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1306 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_1306 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeBand_1306 v5
du_isCommutativeBand_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_1306 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
            (coe v1)))
-- Data.Integer.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1308 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1308 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1308 v5
du_isCommutativeMagma_1308 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1308 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1310 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1312 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1312 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1312 v5
du_isCommutativeSemigroup_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1312 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1314 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1314 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'isIdempotentCommutativeMonoid_1314 v5
du_'43''45'isIdempotentCommutativeMonoid_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
du_'43''45'isIdempotentCommutativeMonoid_1314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Integer.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1316 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_1316 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isIdempotentMonoid_1316 v5
du_isIdempotentMonoid_1316 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_1316 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
            (coe v1)))
-- Data.Integer.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1318 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1320 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1320 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1322 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1322 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1324 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1324 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1324 v5
du_isUnitalMagma_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1324 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.distrib
d_distrib_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1328 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1328 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1330 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1330 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1332 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942
d_isIdempotentSemiring_1334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
      (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1336 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1336 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_1336 v5
du_isNearSemiring_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1336 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1338 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1338 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1338 v5
du_isPartialEquivalence_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1338 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1342 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
            (coe v0)))
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1344 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1344 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_1344 v5
du_isSemiringWithoutOne_1344 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1344 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v1)))
-- Data.Integer.Properties._.IsKleeneAlgebra.refl
d_refl_1346 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1346 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1348 ::
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
d_reflexive_1348 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.setoid
d_setoid_1350 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1350 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1350 v5
du_setoid_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1350 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2086 (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1354 ::
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
d_starDestructive'691'_1354 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1356 ::
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
d_starDestructive'737'_1356 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1358 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2084 (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1360 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1360 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1362 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1362 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.sym
d_sym_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1364 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.trans
d_trans_1366 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1366 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.zero
d_zero_1368 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
            (coe v0)))
-- Data.Integer.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1370 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1370 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1372 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1372 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1376 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1376 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1378 ::
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
d_'47''47''45'cong'691'_1378 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1380 ::
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
d_'47''47''45'cong'737'_1380 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1382 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1384 ::
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
d_'92''92''45'cong'691'_1384 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1386 ::
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
d_'92''92''45'cong'737'_1386 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.identity
d_identity_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Integer.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1390 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1390 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1392 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1392 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))))
-- Data.Integer.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1396 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)
-- Data.Integer.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1400 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1400 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1400 v4
du_isPartialEquivalence_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1400 v0
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
-- Data.Integer.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1402 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Integer.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1404 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1408 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1408 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1410 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1410 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.refl
d_refl_1412 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1412 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1414 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1414 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1416 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1418 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1418 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1420 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1420 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.setoid
d_setoid_1422 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1422 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1422 v4
du_setoid_1422 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1422 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Integer.Properties._.IsLeftBolLoop.sym
d_sym_1424 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1424 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.trans
d_trans_1426 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1426 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1428 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1430 ::
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
d_'8729''45'cong'691'_1430 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1432 ::
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
d_'8729''45'cong'737'_1432 = erased
-- Data.Integer.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1436 = erased
-- Data.Integer.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1438 ::
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
d_'47''47''45'cong'691'_1438 = erased
-- Data.Integer.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1440 ::
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
d_'47''47''45'cong'737'_1440 = erased
-- Data.Integer.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1442 = erased
-- Data.Integer.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1444 ::
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
d_'92''92''45'cong'691'_1444 = erased
-- Data.Integer.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1446 ::
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
d_'92''92''45'cong'737'_1446 = erased
-- Data.Integer.Properties._.IsLoop.identity
d_identity_1448 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1448 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3064 (coe v0)
-- Data.Integer.Properties._.IsLoop.identityʳ
d_identity'691'_1450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1450 = erased
-- Data.Integer.Properties._.IsLoop.identityˡ
d_identity'737'_1452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1452 = erased
-- Data.Integer.Properties._.IsLoop.isEquivalence
d_isEquivalence_1454 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)))
-- Data.Integer.Properties._.IsLoop.isMagma
d_isMagma_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Integer.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1458 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1458 v4
du_isPartialEquivalence_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1458 v0
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
-- Data.Integer.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1460 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)
-- Data.Integer.Properties._.IsLoop.leftDivides
d_leftDivides_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Integer.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1464 = erased
-- Data.Integer.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1466 = erased
-- Data.Integer.Properties._.IsLoop.refl
d_refl_1468 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1468 = erased
-- Data.Integer.Properties._.IsLoop.reflexive
d_reflexive_1470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1470 = erased
-- Data.Integer.Properties._.IsLoop.rightDivides
d_rightDivides_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Integer.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1474 = erased
-- Data.Integer.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1476 = erased
-- Data.Integer.Properties._.IsLoop.setoid
d_setoid_1478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1478 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1478 v4
du_setoid_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1478 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v1)))
-- Data.Integer.Properties._.IsLoop.sym
d_sym_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1480 = erased
-- Data.Integer.Properties._.IsLoop.trans
d_trans_1482 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1482 = erased
-- Data.Integer.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1484 = erased
-- Data.Integer.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1486 ::
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
d_'8729''45'cong'691'_1486 = erased
-- Data.Integer.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1488 ::
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
d_'8729''45'cong'737'_1488 = erased
-- Data.Integer.Properties._.IsMagma.isEquivalence
d_isEquivalence_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1492 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Data.Integer.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1494 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1494 ~v0 v1
  = du_isPartialEquivalence_1494 v1
du_isPartialEquivalence_1494 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1494 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0))
-- Data.Integer.Properties._.IsMagma.refl
d_refl_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1496 = erased
-- Data.Integer.Properties._.IsMagma.reflexive
d_reflexive_1498 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1498 = erased
-- Data.Integer.Properties._.IsMagma.setoid
d_setoid_1500 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1500 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_200 v1
-- Data.Integer.Properties._.IsMagma.sym
d_sym_1502 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1502 = erased
-- Data.Integer.Properties._.IsMagma.trans
d_trans_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1504 = erased
-- Data.Integer.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1506 = erased
-- Data.Integer.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1508 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1508 = erased
-- Data.Integer.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1510 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1510 = erased
-- Data.Integer.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1514 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Integer.Properties._.IsMedialMagma.isMagma
d_isMagma_1516 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1516 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0)
-- Data.Integer.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1518 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1518 ~v0 v1
  = du_isPartialEquivalence_1518 v1
du_isPartialEquivalence_1518 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1518 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsMedialMagma.medial
d_medial_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1520 = erased
-- Data.Integer.Properties._.IsMedialMagma.refl
d_refl_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1522 = erased
-- Data.Integer.Properties._.IsMedialMagma.reflexive
d_reflexive_1524 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1524 = erased
-- Data.Integer.Properties._.IsMedialMagma.setoid
d_setoid_1526 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1526 ~v0 v1 = du_setoid_1526 v1
du_setoid_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Integer.Properties._.IsMedialMagma.sym
d_sym_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1528 = erased
-- Data.Integer.Properties._.IsMedialMagma.trans
d_trans_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1530 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1532 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1534 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1534 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1536 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1536 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1540 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1542 ::
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
d_'47''47''45'cong'691'_1542 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1544 ::
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
d_'47''47''45'cong'737'_1544 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1546 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1548 ::
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
d_'92''92''45'cong'691'_1548 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1550 ::
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
d_'92''92''45'cong'737'_1550 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.identity
d_identity_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Integer.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1554 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1554 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1556 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1556 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))))
-- Data.Integer.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1560 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)
-- Data.Integer.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1564 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1564 v4
du_isPartialEquivalence_1564 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1564 v0
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
-- Data.Integer.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1566 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1566 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1568 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1570 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1572 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1574 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.refl
d_refl_1576 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1576 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1578 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1582 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1584 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.setoid
d_setoid_1586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1586 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1586 v4
du_setoid_1586 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1586 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Integer.Properties._.IsMiddleBolLoop.sym
d_sym_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1588 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.trans
d_trans_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1590 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1592 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1594 ::
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
d_'8729''45'cong'691'_1594 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1596 ::
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
d_'8729''45'cong'737'_1596 = erased
-- Data.Integer.Properties._.IsMonoid.assoc
d_assoc_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1600 = erased
-- Data.Integer.Properties._.IsMonoid.identity
d_identity_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1602 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Data.Integer.Properties._.IsMonoid.identityʳ
d_identity'691'_1604 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1604 = erased
-- Data.Integer.Properties._.IsMonoid.identityˡ
d_identity'737'_1606 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1606 = erased
-- Data.Integer.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)))
-- Data.Integer.Properties._.IsMonoid.isMagma
d_isMagma_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0))
-- Data.Integer.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1612 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1612 ~v0 ~v1 v2
  = du_isPartialEquivalence_1612 v2
du_isPartialEquivalence_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1612 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Data.Integer.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1614 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Data.Integer.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1616 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1616 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730 v2
-- Data.Integer.Properties._.IsMonoid.refl
d_refl_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1618 = erased
-- Data.Integer.Properties._.IsMonoid.reflexive
d_reflexive_1620 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1620 = erased
-- Data.Integer.Properties._.IsMonoid.setoid
d_setoid_1622 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1622 ~v0 ~v1 v2 = du_setoid_1622 v2
du_setoid_1622 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1622 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Data.Integer.Properties._.IsMonoid.sym
d_sym_1624 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1624 = erased
-- Data.Integer.Properties._.IsMonoid.trans
d_trans_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1626 = erased
-- Data.Integer.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1628 = erased
-- Data.Integer.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1630 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1630 = erased
-- Data.Integer.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1632 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1632 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1636 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1638 ::
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
d_'47''47''45'cong'691'_1638 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1640 ::
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
d_'47''47''45'cong'737'_1640 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1642 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1644 ::
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
d_'92''92''45'cong'691'_1644 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1646 ::
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
d_'92''92''45'cong'737'_1646 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identical
d_identical_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1648 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identity
d_identity_1650 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3140
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))
-- Data.Integer.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1652 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1654 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1654 = erased
-- Data.Integer.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1656 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1658 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126
d_isLeftBolLoop_1658 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)
-- Data.Integer.Properties._.IsMoufangLoop.isLoop
d_isLoop_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3140
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))
-- Data.Integer.Properties._.IsMoufangLoop.isMagma
d_isMagma_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1664 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1664 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1664 v4
du_isPartialEquivalence_1664 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1664 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3140
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)))
-- Data.Integer.Properties._.IsMoufangLoop.leftBol
d_leftBol_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1668 = erased
-- Data.Integer.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1670 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1670 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1672 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1672 = erased
-- Data.Integer.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1674 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1674 = erased
-- Data.Integer.Properties._.IsMoufangLoop.refl
d_refl_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1676 = erased
-- Data.Integer.Properties._.IsMoufangLoop.reflexive
d_reflexive_1678 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1678 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightBol
d_rightBol_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1680 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1682 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3140
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_1684 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1684 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_1686 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1686 = erased
-- Data.Integer.Properties._.IsMoufangLoop.setoid
d_setoid_1688 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1688 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1688 v4
du_setoid_1688 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1688 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.sym
d_sym_1690 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1690 = erased
-- Data.Integer.Properties._.IsMoufangLoop.trans
d_trans_1692 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1692 = erased
-- Data.Integer.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1694 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1694 = erased
-- Data.Integer.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_1696 ::
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
d_'8729''45'cong'691'_1696 = erased
-- Data.Integer.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_1698 ::
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
d_'8729''45'cong'737'_1698 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1702 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1702 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1704 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1706 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1706 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1708 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1708 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1710 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1710 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282 v3
-- Data.Integer.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1712 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1712 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284 v3
-- Data.Integer.Properties._.IsNearSemiring.assoc
d_assoc_1714 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1714 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1716 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1716 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1718 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1718 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1720 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1720 = erased
-- Data.Integer.Properties._.IsNearSemiring.identity
d_identity_1722 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.identityʳ
d_identity'691'_1724 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1724 = erased
-- Data.Integer.Properties._.IsNearSemiring.identityˡ
d_identity'737'_1726 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1726 = erased
-- Data.Integer.Properties._.IsNearSemiring.isMagma
d_isMagma_1728 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)))
-- Data.Integer.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1730 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)
-- Data.Integer.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1732 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_1734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1734 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1734 v3
du_isUnitalMagma_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1736 = erased
-- Data.Integer.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))))
-- Data.Integer.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_1740 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1740 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1740 v3
du_isPartialEquivalence_1740 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1740 v0
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
-- Data.Integer.Properties._.IsNearSemiring.refl
d_refl_1742 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1742 = erased
-- Data.Integer.Properties._.IsNearSemiring.reflexive
d_reflexive_1744 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1744 = erased
-- Data.Integer.Properties._.IsNearSemiring.setoid
d_setoid_1746 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1746 ~v0 ~v1 ~v2 v3 = du_setoid_1746 v3
du_setoid_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1746 v0
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
-- Data.Integer.Properties._.IsNearSemiring.sym
d_sym_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1748 = erased
-- Data.Integer.Properties._.IsNearSemiring.trans
d_trans_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1750 = erased
-- Data.Integer.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1752 = erased
-- Data.Integer.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1756 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1756 = erased
-- Data.Integer.Properties._.IsNearring.*-cong
d_'42''45'cong_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1758 = erased
-- Data.Integer.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1760 ::
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
d_'8729''45'cong'691'_1760 = erased
-- Data.Integer.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1762 ::
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
d_'8729''45'cong'737'_1762 = erased
-- Data.Integer.Properties._.IsNearring.*-identity
d_'42''45'identity_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.identityʳ
d_identity'691'_1766 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1766 = erased
-- Data.Integer.Properties._.IsNearring.identityˡ
d_identity'737'_1768 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1768 = erased
-- Data.Integer.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_1770 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1770 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1770 v5
du_'42''45'isMagma_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_1772 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1772 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1772 v5
du_'42''45'isMonoid_1772 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1772 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_1774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1774 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1774 v5
du_'42''45'isSemigroup_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1774 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.assoc
d_assoc_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1776 = erased
-- Data.Integer.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1778 = erased
-- Data.Integer.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1780 ::
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
d_'8729''45'cong'691'_1780 = erased
-- Data.Integer.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1782 ::
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
d_'8729''45'cong'737'_1782 = erased
-- Data.Integer.Properties._.IsNearring.identity
d_identity_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Integer.Properties._.IsNearring.identityʳ
d_identity'691'_1786 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1786 = erased
-- Data.Integer.Properties._.IsNearring.identityˡ
d_identity'737'_1788 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1788 = erased
-- Data.Integer.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2580 (coe v0)
-- Data.Integer.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_1792 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_1792 = erased
-- Data.Integer.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_1794 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_1794 = erased
-- Data.Integer.Properties._.IsNearring.isMagma
d_isMagma_1796 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))))
-- Data.Integer.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.isSemigroup
d_isSemigroup_1800 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Integer.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_1802 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1802 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1802 v5
du_isUnitalMagma_1802 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1802 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v1)))
-- Data.Integer.Properties._.IsNearring.distrib
d_distrib_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2230
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.distribʳ
d_distrib'691'_1806 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1806 = erased
-- Data.Integer.Properties._.IsNearring.distribˡ
d_distrib'737'_1808 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1808 = erased
-- Data.Integer.Properties._.IsNearring.identityʳ
d_identity'691'_1810 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1810 = erased
-- Data.Integer.Properties._.IsNearring.identityˡ
d_identity'737'_1812 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1812 = erased
-- Data.Integer.Properties._.IsNearring.isEquivalence
d_isEquivalence_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1814 v0
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
-- Data.Integer.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_1816 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1816 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1816 v5
du_isPartialEquivalence_1816 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1816 v0
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
-- Data.Integer.Properties._.IsNearring.isQuasiring
d_isQuasiring_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200
d_isQuasiring_1818 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)
-- Data.Integer.Properties._.IsNearring.refl
d_refl_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1820 = erased
-- Data.Integer.Properties._.IsNearring.reflexive
d_reflexive_1822 ::
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
d_reflexive_1822 = erased
-- Data.Integer.Properties._.IsNearring.setoid
d_setoid_1824 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1824 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1824 v5
du_setoid_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1824 v0
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
-- Data.Integer.Properties._.IsNearring.sym
d_sym_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1826 = erased
-- Data.Integer.Properties._.IsNearring.trans
d_trans_1828 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1828 = erased
-- Data.Integer.Properties._.IsNearring.zero
d_zero_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2232
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Integer.Properties._.IsNearring.zeroʳ
d_zero'691'_1832 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1832 = erased
-- Data.Integer.Properties._.IsNearring.zeroˡ
d_zero'737'_1834 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1834 = erased
-- Data.Integer.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1836 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing._//_
d__'47''47'__1840 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> Integer -> Integer
d__'47''47'__1840 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__1840 v0 v2
du__'47''47'__1840 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__1840 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1842 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1844 ::
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
d_'8729''45'cong'691'_1844 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1846 ::
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
d_'8729''45'cong'737'_1846 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2456 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_1850 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_1850 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_1852 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_1852 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_1854 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1854 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2536 v5
-- Data.Integer.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_1856 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_'42''45'isUnitalMagma_1856 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542 v5
-- Data.Integer.Properties._.IsNonAssociativeRing.assoc
d_assoc_1858 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1858 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.comm
d_comm_1860 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1860 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1862 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1864 ::
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
d_'8729''45'cong'691'_1864 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1866 ::
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
d_'8729''45'cong'737'_1866 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.identity
d_identity_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
               (coe v0))))
-- Data.Integer.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_1870 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1870 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_1872 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1872 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
      (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_1876 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1876 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1876 v5
du_isCommutativeMagma_1876 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1876 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_1878 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_1878 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_1878 v5
du_isCommutativeMonoid_1878 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_1878 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Integer.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_1880 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1880 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1880 v5
du_isCommutativeSemigroup_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1880 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_1882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Integer.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_1884 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1884 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_1884 v5
du_isInvertibleMagma_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_1884 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1886 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_1886 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_1886 v5
du_isInvertibleUnitalMagma_1886 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_1886 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1888 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
            (coe v0)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_1892 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1892 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
               (coe v0))))
-- Data.Integer.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_1894 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1894 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1894 v5
du_isUnitalMagma_1894 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1894 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1896 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.inverse
d_inverse_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1898 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
            (coe v0)))
-- Data.Integer.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_1900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1900 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_1902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1902 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.distrib
d_distrib_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1904 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2458 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_1906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1906 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_1908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1908 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_1910 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1910 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_1912 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1912 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1912 v5
du_isPartialEquivalence_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1912 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.refl
d_refl_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1914 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_1916 ::
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
d_reflexive_1916 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.setoid
d_setoid_1918 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1918 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1918 v5
du_setoid_1918 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1918 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.sym
d_sym_1920 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1920 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.trans
d_trans_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1922 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1924 ::
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
d_unique'691''45''8315''185'_1924 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1926 ::
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
d_unique'737''45''8315''185'_1926 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.zero
d_zero_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1928 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2460 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_1930 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1930 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_1932 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1932 = erased
-- Data.Integer.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1936 = erased
-- Data.Integer.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_1938 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1938 = erased
-- Data.Integer.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_1940 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1940 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1942 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_1944 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1944 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_1946 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1946 = erased
-- Data.Integer.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1948 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Integer.Properties._.IsQuasigroup.isMagma
d_isMagma_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1950 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_1952 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1952 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1952 v3
du_isPartialEquivalence_1952 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1952 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1954 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2990 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_1956 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1956 = erased
-- Data.Integer.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_1958 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1958 = erased
-- Data.Integer.Properties._.IsQuasigroup.refl
d_refl_1960 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1960 = erased
-- Data.Integer.Properties._.IsQuasigroup.reflexive
d_reflexive_1962 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1962 = erased
-- Data.Integer.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1964 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2992 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_1966 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1966 = erased
-- Data.Integer.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_1968 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1968 = erased
-- Data.Integer.Properties._.IsQuasigroup.setoid
d_setoid_1970 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1970 ~v0 ~v1 ~v2 v3 = du_setoid_1970 v3
du_setoid_1970 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1970 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Integer.Properties._.IsQuasigroup.sym
d_sym_1972 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1972 = erased
-- Data.Integer.Properties._.IsQuasigroup.trans
d_trans_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1974 = erased
-- Data.Integer.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1976 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1976 = erased
-- Data.Integer.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_1978 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1978 = erased
-- Data.Integer.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_1980 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1980 = erased
-- Data.Integer.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1984 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1984 = erased
-- Data.Integer.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1986 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_1988 ::
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
d_'8729''45'cong'691'_1988 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_1990 ::
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
d_'8729''45'cong'737'_1990 = erased
-- Data.Integer.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.identityʳ
d_identity'691'_1994 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1994 = erased
-- Data.Integer.Properties._.IsQuasiring.identityˡ
d_identity'737'_1996 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1996 = erased
-- Data.Integer.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_1998 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1998 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282 v4
-- Data.Integer.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2000 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2000 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286 v4
-- Data.Integer.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2002 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2002 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284 v4
-- Data.Integer.Properties._.IsQuasiring.assoc
d_assoc_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2004 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2006 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2008 ::
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
d_'8729''45'cong'691'_2008 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2010 ::
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
d_'8729''45'cong'737'_2010 = erased
-- Data.Integer.Properties._.IsQuasiring.identity
d_identity_2012 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2012 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.identityʳ
d_identity'691'_2014 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2014 = erased
-- Data.Integer.Properties._.IsQuasiring.identityˡ
d_identity'737'_2016 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2016 = erased
-- Data.Integer.Properties._.IsQuasiring.isMagma
d_isMagma_2018 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2018 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)))
-- Data.Integer.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_2020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2022 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2024 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2024 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2024 v4
du_isUnitalMagma_2024 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2024 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.distrib
d_distrib_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2026 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2230 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2028 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2028 = erased
-- Data.Integer.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2030 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2030 = erased
-- Data.Integer.Properties._.IsQuasiring.identityʳ
d_identity'691'_2032 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2032 = erased
-- Data.Integer.Properties._.IsQuasiring.identityˡ
d_identity'737'_2034 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2034 = erased
-- Data.Integer.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_2036 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2036 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))))
-- Data.Integer.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2038 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2038 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2038 v4
du_isPartialEquivalence_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2038 v0
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
-- Data.Integer.Properties._.IsQuasiring.refl
d_refl_2040 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2040 = erased
-- Data.Integer.Properties._.IsQuasiring.reflexive
d_reflexive_2042 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2042 = erased
-- Data.Integer.Properties._.IsQuasiring.setoid
d_setoid_2044 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2044 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2044 v4
du_setoid_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2044 v0
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
-- Data.Integer.Properties._.IsQuasiring.sym
d_sym_2046 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2046 = erased
-- Data.Integer.Properties._.IsQuasiring.trans
d_trans_2048 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2048 = erased
-- Data.Integer.Properties._.IsQuasiring.zero
d_zero_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2050 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2232 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2052 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2052 = erased
-- Data.Integer.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2054 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2054 = erased
-- Data.Integer.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2058 = erased
-- Data.Integer.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2060 ::
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
d_'47''47''45'cong'691'_2060 = erased
-- Data.Integer.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2062 ::
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
d_'47''47''45'cong'737'_2062 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2064 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2066 ::
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
d_'92''92''45'cong'691'_2066 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2068 ::
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
d_'92''92''45'cong'737'_2068 = erased
-- Data.Integer.Properties._.IsRightBolLoop.identity
d_identity_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Integer.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2072 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2072 = erased
-- Data.Integer.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2074 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2074 = erased
-- Data.Integer.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_2076 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2076 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))))
-- Data.Integer.Properties._.IsRightBolLoop.isLoop
d_isLoop_2078 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_2078 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)
-- Data.Integer.Properties._.IsRightBolLoop.isMagma
d_isMagma_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2082 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2082 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2082 v4
du_isPartialEquivalence_2082 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2082 v0
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
-- Data.Integer.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2084 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_2084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Integer.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2088 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2088 = erased
-- Data.Integer.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2090 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2090 = erased
-- Data.Integer.Properties._.IsRightBolLoop.refl
d_refl_2092 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2092 = erased
-- Data.Integer.Properties._.IsRightBolLoop.reflexive
d_reflexive_2094 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2094 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightBol
d_rightBol_2096 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2096 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2098 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2100 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2100 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2102 = erased
-- Data.Integer.Properties._.IsRightBolLoop.setoid
d_setoid_2104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2104 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2104 v4
du_setoid_2104 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2104 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v2))))
-- Data.Integer.Properties._.IsRightBolLoop.sym
d_sym_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2106 = erased
-- Data.Integer.Properties._.IsRightBolLoop.trans
d_trans_2108 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2108 = erased
-- Data.Integer.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2110 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2110 = erased
-- Data.Integer.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2112 ::
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
d_'8729''45'cong'691'_2112 = erased
-- Data.Integer.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2114 ::
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
d_'8729''45'cong'737'_2114 = erased
-- Data.Integer.Properties._.IsRing._//_
d__'47''47'__2118 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> Integer -> Integer
d__'47''47'__2118 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2118 v0 v2
du__'47''47'__2118 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2118 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsRing.*-assoc
d_'42''45'assoc_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2120 = erased
-- Data.Integer.Properties._.IsRing.*-cong
d_'42''45'cong_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2122 = erased
-- Data.Integer.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2124 ::
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
d_'8729''45'cong'691'_2124 = erased
-- Data.Integer.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2126 ::
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
d_'8729''45'cong'737'_2126 = erased
-- Data.Integer.Properties._.IsRing.*-identity
d_'42''45'identity_2128 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700 (coe v0)
-- Data.Integer.Properties._.IsRing.identityʳ
d_identity'691'_2130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2130 = erased
-- Data.Integer.Properties._.IsRing.identityˡ
d_identity'737'_2132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2132 = erased
-- Data.Integer.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2134 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2134 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2134 v0 v1 v2 v3 v5
du_'42''45'isMagma_2134 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_2134 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2136 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2136 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 v0 v1 v2
      v3 v5
-- Data.Integer.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2138 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2138 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_2138 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsRing.assoc
d_assoc_2140 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2140 = erased
-- Data.Integer.Properties._.IsRing.comm
d_comm_2142 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2142 = erased
-- Data.Integer.Properties._.IsRing.∙-cong
d_'8729''45'cong_2144 ::
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
d_'8729''45'cong_2144 = erased
-- Data.Integer.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2146 ::
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
d_'8729''45'cong'691'_2146 = erased
-- Data.Integer.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2148 ::
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
d_'8729''45'cong'737'_2148 = erased
-- Data.Integer.Properties._.IsRing.identity
d_identity_2150 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2150 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2150 v5
du_identity_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v0))))
-- Data.Integer.Properties._.IsRing.identityʳ
d_identity'691'_2152 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2152 = erased
-- Data.Integer.Properties._.IsRing.identityˡ
d_identity'737'_2154 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2154 = erased
-- Data.Integer.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2156 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe v0)
-- Data.Integer.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2158 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2158 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2158 v5
du_isCommutativeMagma_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2158 v0
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
-- Data.Integer.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2160 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2160 v5
du_isCommutativeMonoid_2160 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2160 v0
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
-- Data.Integer.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2162 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2162 v5
du_isCommutativeSemigroup_2162 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2162 v0
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
-- Data.Integer.Properties._.IsRing.isGroup
d_isGroup_2164 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2164 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2164 v5
du_isGroup_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_isGroup_2164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
         (coe v0))
-- Data.Integer.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2166 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_2166 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2166 v5
du_isInvertibleMagma_2166 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_2166 v0
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
-- Data.Integer.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2168 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_2168 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2168 v5
du_isInvertibleUnitalMagma_2168 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_2168 v0
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
-- Data.Integer.Properties._.IsRing.isMagma
d_isMagma_2170 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2170 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2170 v5
du_isMagma_2170 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_2170 v0
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
-- Data.Integer.Properties._.IsRing.isMonoid
d_isMonoid_2172 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2172 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2172 v5
du_isMonoid_2172 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_2172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v0)))
-- Data.Integer.Properties._.IsRing.isSemigroup
d_isSemigroup_2174 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2174 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2174 v5
du_isSemigroup_2174 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_2174 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
               (coe v0))))
-- Data.Integer.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2176 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2176 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2176 v5
du_isUnitalMagma_2176 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2176 v0
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
-- Data.Integer.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2178 ::
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
d_'8315''185''45'cong_2178 = erased
-- Data.Integer.Properties._.IsRing.inverse
d_inverse_2180 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2180 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2180 v5
du_inverse_2180 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2180 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
            (coe v0)))
-- Data.Integer.Properties._.IsRing.inverseʳ
d_inverse'691'_2182 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2182 = erased
-- Data.Integer.Properties._.IsRing.inverseˡ
d_inverse'737'_2184 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2184 = erased
-- Data.Integer.Properties._.IsRing.distrib
d_distrib_2186 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2186 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2702 (coe v0)
-- Data.Integer.Properties._.IsRing.distribʳ
d_distrib'691'_2188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2188 = erased
-- Data.Integer.Properties._.IsRing.distribˡ
d_distrib'737'_2190 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2190 = erased
-- Data.Integer.Properties._.IsRing.isEquivalence
d_isEquivalence_2192 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2192 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2192 v5
du_isEquivalence_2192 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2192 v0
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
-- Data.Integer.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2194 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2194 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2194 v0 v1 v2 v3 v5
du_isNearSemiring_2194 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2194 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Integer.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2196 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2196 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2196 v5
du_isPartialEquivalence_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2196 v0
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
-- Data.Integer.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2198 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_2198 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 v5
-- Data.Integer.Properties._.IsRing.isSemiring
d_isSemiring_2200 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_2200 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 v0 v1 v2 v3 v5
-- Data.Integer.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2202 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2202 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      v5
-- Data.Integer.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2204 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2204 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2204 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2204 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_2204 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsRing.refl
d_refl_2206 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2206 = erased
-- Data.Integer.Properties._.IsRing.reflexive
d_reflexive_2208 ::
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
d_reflexive_2208 = erased
-- Data.Integer.Properties._.IsRing.setoid
d_setoid_2210 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2210 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2210 v5
du_setoid_2210 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2210 v0
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
-- Data.Integer.Properties._.IsRing.sym
d_sym_2212 ::
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
d_sym_2212 = erased
-- Data.Integer.Properties._.IsRing.trans
d_trans_2214 ::
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
d_trans_2214 = erased
-- Data.Integer.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2216 ::
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
d_unique'691''45''8315''185'_2216 = erased
-- Data.Integer.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2218 ::
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
d_unique'737''45''8315''185'_2218 = erased
-- Data.Integer.Properties._.IsRing.zero
d_zero_2220 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2220 v0 v1 v2 v3 ~v4 v5 = du_zero_2220 v0 v1 v2 v3 v5
du_zero_2220 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Integer.Properties._.IsRing.zeroʳ
d_zero'691'_2222 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2222 = erased
-- Data.Integer.Properties._.IsRing.zeroˡ
d_zero'737'_2224 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2224 = erased
-- Data.Integer.Properties._.IsRingWithoutOne._//_
d__'47''47'__2228 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> Integer -> Integer
d__'47''47'__2228 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2228 v0 v2
du__'47''47'__2228 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2228 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2230 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2230 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2232 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2232 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2234 ::
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
d_'8729''45'cong'691'_2234 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2236 ::
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
d_'8729''45'cong'737'_2236 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2238 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2238 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2240 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsRingWithoutOne.assoc
d_assoc_2242 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2242 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.comm
d_comm_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2244 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2246 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2248 ::
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
d_'8729''45'cong'691'_2248 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2250 ::
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
d_'8729''45'cong'737'_2250 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.identity
d_identity_2252 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v0))))
-- Data.Integer.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2254 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2254 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2256 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2256 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2258 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
      (coe v0)
-- Data.Integer.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2260 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2260 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2260 v4
du_isCommutativeMagma_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2260 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2262 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2262 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMonoid_2262 v4
du_isCommutativeMonoid_2262 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Integer.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2264 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2264 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2264 v4
du_isCommutativeSemigroup_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2264 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Data.Integer.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Integer.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2268 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_2268 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleMagma_2268 v4
du_isInvertibleMagma_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_2268 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Integer.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2270 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_2270 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleUnitalMagma_2270 v4
du_isInvertibleUnitalMagma_2270 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_2270 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Data.Integer.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2272 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2274 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v0)))
-- Data.Integer.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
               (coe v0))))
-- Data.Integer.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2278 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2278 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2278 v4
du_isUnitalMagma_2278 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2278 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2280 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2280 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.inverse
d_inverse_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2282 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
            (coe v0)))
-- Data.Integer.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2284 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2284 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2286 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2286 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.distrib
d_distrib_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2288 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2330 (coe v0)
-- Data.Integer.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2290 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2290 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2292 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2292 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2294 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2296 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2296
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408
-- Data.Integer.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2298 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2298 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2298 v4
du_isPartialEquivalence_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2298 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.refl
d_refl_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2300 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2302 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2302 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.setoid
d_setoid_2304 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2304 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2304 v4
du_setoid_2304 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2304 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.sym
d_sym_2306 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2306 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.trans
d_trans_2308 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2308 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2310 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2310 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2312 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2312 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.zero
d_zero_2314 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2314 = coe MAlonzo.Code.Algebra.Structures.du_zero_2406
-- Data.Integer.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2316 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2316 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2318 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2318 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Integer.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2324 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2324 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0)
-- Data.Integer.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2326 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2326 ~v0 v1
  = du_isPartialEquivalence_2326 v1
du_isPartialEquivalence_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2326 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsSelectiveMagma.refl
d_refl_2328 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2328 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2330 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2330 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.sel
d_sel_2332 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2332 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_446 (coe v0)
-- Data.Integer.Properties._.IsSelectiveMagma.setoid
d_setoid_2334 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2334 ~v0 v1 = du_setoid_2334 v1
du_setoid_2334 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Integer.Properties._.IsSelectiveMagma.sym
d_sym_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2336 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.trans
d_trans_2338 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2338 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2340 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2342 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2342 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2344 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2344 = erased
-- Data.Integer.Properties._.IsSemigroup.assoc
d_assoc_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2348 = erased
-- Data.Integer.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Integer.Properties._.IsSemigroup.isMagma
d_isMagma_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2352 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Data.Integer.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2354 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2354 ~v0 v1
  = du_isPartialEquivalence_2354 v1
du_isPartialEquivalence_2354 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2354 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsSemigroup.refl
d_refl_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2356 = erased
-- Data.Integer.Properties._.IsSemigroup.reflexive
d_reflexive_2358 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2358 = erased
-- Data.Integer.Properties._.IsSemigroup.setoid
d_setoid_2360 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2360 ~v0 v1 = du_setoid_2360 v1
du_setoid_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Integer.Properties._.IsSemigroup.sym
d_sym_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2362 = erased
-- Data.Integer.Properties._.IsSemigroup.trans
d_trans_2364 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2364 = erased
-- Data.Integer.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2366 = erased
-- Data.Integer.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2368 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2368 = erased
-- Data.Integer.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2370 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2370 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2374 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Integer.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2376 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2376 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0)
-- Data.Integer.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2378 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2378 ~v0 v1
  = du_isPartialEquivalence_2378 v1
du_isPartialEquivalence_2378 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2378 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsSemimedialMagma.refl
d_refl_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2380 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2382 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2382 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2384 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_406 (coe v0)
-- Data.Integer.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2386 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2386 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2388 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2388 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.setoid
d_setoid_2390 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2390 ~v0 v1 = du_setoid_2390 v1
du_setoid_2390 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Integer.Properties._.IsSemimedialMagma.sym
d_sym_2392 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2392 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.trans
d_trans_2394 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2394 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2396 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2396 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2398 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2398 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2400 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2400 = erased
-- Data.Integer.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2404 = erased
-- Data.Integer.Properties._.IsSemiring.*-cong
d_'42''45'cong_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2406 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2408 ::
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
d_'8729''45'cong'691'_2408 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2410 ::
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
d_'8729''45'cong'737'_2410 = erased
-- Data.Integer.Properties._.IsSemiring.*-identity
d_'42''45'identity_2412 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.identityʳ
d_identity'691'_2414 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2414 = erased
-- Data.Integer.Properties._.IsSemiring.identityˡ
d_identity'737'_2416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2416 = erased
-- Data.Integer.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2418 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2418 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_2418 v4
du_'42''45'isMagma_2418 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_2418 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2420 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2420 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_2420 v4
du_'42''45'isMonoid_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_2420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2422 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2422 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_2422 v4
du_'42''45'isSemigroup_2422 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_2422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.assoc
d_assoc_2424 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2424 = erased
-- Data.Integer.Properties._.IsSemiring.comm
d_comm_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2426 = erased
-- Data.Integer.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2428 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2430 ::
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
d_'8729''45'cong'691'_2430 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2432 ::
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
d_'8729''45'cong'737'_2432 = erased
-- Data.Integer.Properties._.IsSemiring.identity
d_identity_2434 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v0))))
-- Data.Integer.Properties._.IsSemiring.identityʳ
d_identity'691'_2436 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2436 = erased
-- Data.Integer.Properties._.IsSemiring.identityˡ
d_identity'737'_2438 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2438 = erased
-- Data.Integer.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2440 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2440 v4
du_isCommutativeMagma_2440 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2440 v0
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
-- Data.Integer.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2444 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2444 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2444 v4
du_isCommutativeSemigroup_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2444 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v1)))
-- Data.Integer.Properties._.IsSemiring.isMagma
d_isMagma_2446 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2446 v0
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
-- Data.Integer.Properties._.IsSemiring.isMonoid
d_isMonoid_2448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe v0)))
-- Data.Integer.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2450 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v0))))
-- Data.Integer.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2452 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2452 v4
du_isUnitalMagma_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2452 v0
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
-- Data.Integer.Properties._.IsSemiring.distrib
d_distrib_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.distribʳ
d_distrib'691'_2456 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2456 = erased
-- Data.Integer.Properties._.IsSemiring.distribˡ
d_distrib'737'_2458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2458 = erased
-- Data.Integer.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2460 v0
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
-- Data.Integer.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2462 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_2462 v4
du_isNearSemiring_2462 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2464 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2464 v4
du_isPartialEquivalence_2464 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2464 v0
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
-- Data.Integer.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2466 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe v0)
-- Data.Integer.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2468 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680 v4
-- Data.Integer.Properties._.IsSemiring.refl
d_refl_2470 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2470 = erased
-- Data.Integer.Properties._.IsSemiring.reflexive
d_reflexive_2472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2472 = erased
-- Data.Integer.Properties._.IsSemiring.setoid
d_setoid_2474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2474 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2474 v4
du_setoid_2474 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2474 v0
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
-- Data.Integer.Properties._.IsSemiring.sym
d_sym_2476 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2476 = erased
-- Data.Integer.Properties._.IsSemiring.trans
d_trans_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2478 = erased
-- Data.Integer.Properties._.IsSemiring.zero
d_zero_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2480 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1606 (coe v0)
-- Data.Integer.Properties._.IsSemiring.zeroʳ
d_zero'691'_2482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2482 = erased
-- Data.Integer.Properties._.IsSemiring.zeroˡ
d_zero'737'_2484 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2484 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2488 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2490 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2490 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2492 ::
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
d_'8729''45'cong'691'_2492 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2494 ::
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
d_'8729''45'cong'737'_2494 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2498 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2500 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2500 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2502 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2502 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566 v4
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2504 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2504 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570 v4
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2506 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2506 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568 v4
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2508 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2510 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2510 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2512 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2512 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2514 ::
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
d_'8729''45'cong'691'_2514 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2516 ::
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
d_'8729''45'cong'737'_2516 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2518 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2518 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2520 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2520 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2522 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2522 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2524 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2524 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2524 v4
du_isCommutativeMagma_2524 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2524 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2526 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2528 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2528 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2528 v4
du_isCommutativeSemigroup_2528 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2530 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe v0))))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2532 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2534 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2536 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2536 v4
du_isUnitalMagma_2536 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2536 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2538 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2538 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1516 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2540 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2542 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2544 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2544 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2546 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2546 v4
du_isPartialEquivalence_2546 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2546 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2548 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2548 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2550 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2552 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2552 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2552 v4
du_setoid_2552 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2552 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2554 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2554 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2556 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2556 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2560 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2560 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2562 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2562 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2564 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2566 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2566 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2568 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2568 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366 v3
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2570 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368 v3
-- Data.Integer.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2572 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2572 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.comm
d_comm_2574 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2574 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2576 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2576 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2578 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2580 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.identity
d_identity_2582 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2582 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2584 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2586 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2588 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_2588 v3
du_isCommutativeMagma_2588 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2588 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Integer.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2590 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2592 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_2592 v3
du_isCommutativeSemigroup_2592 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2594 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2596 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2596 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1322 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2598 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2598 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2600 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.isEquivalence
d_isEquivalence_2602 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2602 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2604 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2604 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384 v3
-- Data.Integer.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2606 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2606 v3
du_isPartialEquivalence_2606 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2606 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.refl
d_refl_2608 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2608 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2610 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2610 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2612 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2612 ~v0 ~v1 ~v2 v3 = du_setoid_2612 v3
du_setoid_2612 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2612 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.sym
d_sym_2614 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2614 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.trans
d_trans_2616 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2616 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.zero
d_zero_2618 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2618 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1324 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2620 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2622 = erased
-- Data.Integer.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2626 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2626 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0)
-- Data.Integer.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2628 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2628 ~v0 ~v1 v2
  = du_isPartialEquivalence_2628 v2
du_isPartialEquivalence_2628 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2628 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0))
-- Data.Integer.Properties._.IsSuccessorSet.refl
d_refl_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2630 = erased
-- Data.Integer.Properties._.IsSuccessorSet.reflexive
d_reflexive_2632 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2632 = erased
-- Data.Integer.Properties._.IsSuccessorSet.setoid
d_setoid_2634 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2634 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_172 v2
-- Data.Integer.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2636 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2636 = erased
-- Data.Integer.Properties._.IsSuccessorSet.sym
d_sym_2638 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2638 = erased
-- Data.Integer.Properties._.IsSuccessorSet.trans
d_trans_2640 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2640 = erased
-- Data.Integer.Properties._.IsUnitalMagma.identity
d_identity_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2644 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_654 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2646 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2646 = erased
-- Data.Integer.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2648 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2648 = erased
-- Data.Integer.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Integer.Properties._.IsUnitalMagma.isMagma
d_isMagma_2652 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2652 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2654 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2654 ~v0 ~v1 v2
  = du_isPartialEquivalence_2654 v2
du_isPartialEquivalence_2654 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2654 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)))
-- Data.Integer.Properties._.IsUnitalMagma.refl
d_refl_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2656 = erased
-- Data.Integer.Properties._.IsUnitalMagma.reflexive
d_reflexive_2658 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2658 = erased
-- Data.Integer.Properties._.IsUnitalMagma.setoid
d_setoid_2660 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2660 ~v0 ~v1 v2 = du_setoid_2660 v2
du_setoid_2660 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_200
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Integer.Properties._.IsUnitalMagma.sym
d_sym_2662 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2662 = erased
-- Data.Integer.Properties._.IsUnitalMagma.trans
d_trans_2664 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2664 = erased
-- Data.Integer.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2666 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2666 = erased
-- Data.Integer.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2668 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2668 = erased
-- Data.Integer.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2670 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2670 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₀
d_Homomorphic'8320'_2674 ::
  (Integer -> Integer) -> Integer -> Integer -> ()
d_Homomorphic'8320'_2674 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₁
d_Homomorphic'8321'_2676 ::
  (Integer -> Integer) ->
  (Integer -> Integer) -> (Integer -> Integer) -> ()
d_Homomorphic'8321'_2676 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₂
d_Homomorphic'8322'_2678 ::
  (Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Homomorphic'8322'_2678 = erased
-- Data.Integer.Properties.ℤtoℕ.Morphism
d_Morphism_2680 :: ()
d_Morphism_2680 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₀
d_Homomorphic'8320'_2684 ::
  (Integer -> Integer) -> Integer -> Integer -> ()
d_Homomorphic'8320'_2684 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₁
d_Homomorphic'8321'_2686 ::
  (Integer -> Integer) ->
  (Integer -> Integer) -> (Integer -> Integer) -> ()
d_Homomorphic'8321'_2686 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₂
d_Homomorphic'8322'_2688 ::
  (Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Homomorphic'8322'_2688 = erased
-- Data.Integer.Properties.ℕtoℤ.Morphism
d_Morphism_2690 :: ()
d_Morphism_2690 = erased
-- Data.Integer.Properties.+-injective
d_'43''45'injective_2708 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'injective_2708 = erased
-- Data.Integer.Properties.-[1+-injective
d_'45''91'1'43''45'injective_2710 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''91'1'43''45'injective_2710 = erased
-- Data.Integer.Properties.+[1+-injective
d_'43''91'1'43''45'injective_2712 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''91'1'43''45'injective_2712 = erased
-- Data.Integer.Properties._≟_
d__'8799'__2714 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2714 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                  erased erased
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710 (coe v0) (coe v1))
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
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                          erased erased
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710 (coe v2)
                             (coe v3))))
-- Data.Integer.Properties.≡-setoid
d_'8801''45'setoid_2732 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2732
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Integer.Properties.≡-decSetoid
d_'8801''45'decSetoid_2734 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
d_'8801''45'decSetoid_2734
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2714)
-- Data.Integer.Properties.drop‿+≤+
d_drop'8255''43''8804''43'_2736 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''43''8804''43'_2736 ~v0 ~v1 v2
  = du_drop'8255''43''8804''43'_2736 v2
du_drop'8255''43''8804''43'_2736 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''43''8804''43'_2736 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿-≤-
d_drop'8255''45''8804''45'_2740 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''45''8804''45'_2740 ~v0 ~v1 v2
  = du_drop'8255''45''8804''45'_2740 v2
du_drop'8255''45''8804''45'_2740 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''45''8804''45'_2740 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤-reflexive
d_'8804''45'reflexive_2744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'reflexive_2744 v0 ~v1 ~v2
  = du_'8804''45'reflexive_2744 v0
du_'8804''45'reflexive_2744 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8804''45'reflexive_2744 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
            (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798 (coe v0))
      _ -> let v1 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798 (coe v1)))
-- Data.Integer.Properties.≤-refl
d_'8804''45'refl_2750 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'refl_2750 v0 = coe du_'8804''45'reflexive_2744 (coe v0)
-- Data.Integer.Properties.≤-trans
d_'8804''45'trans_2752 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'trans_2752 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_2752 v3 v4
du_'8804''45'trans_2752 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8804''45'trans_2752 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2806 (coe v7)
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
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2806 (coe v4)
                       (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤-antisym
d_'8804''45'antisym_2766 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_2766 = erased
-- Data.Integer.Properties.≤-total
d_'8804''45'total_2776 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_2776 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Sum.Base.du_map_84
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48)
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48)
                  (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_2812
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
                          (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_2812
                             (coe v3) (coe v2))))
-- Data.Integer.Properties._≤?_
d__'8804''63'__2794 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__2794 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48)
                  (coe du_drop'8255''43''8804''43'_2736)
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824 (coe v0)
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
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34)
                          (coe du_drop'8255''45''8804''45'_2740)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.≤-irrelevant
d_'8804''45'irrelevant_2812 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_2812 = erased
-- Data.Integer.Properties.≤-isPreorder
d_'8804''45'isPreorder_2822 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_2822
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_2744 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_2752 v3 v4)
-- Data.Integer.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_2824 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_2824
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8325
      (coe d_'8804''45'isPreorder_2822) (coe d_'8804''45'total_2776)
-- Data.Integer.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_2826 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_'8804''45'isPartialOrder_2826
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_11935
      (coe d_'8804''45'isPreorder_2822) erased
-- Data.Integer.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_2828 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_'8804''45'isTotalOrder_2828
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_22821
      (coe d_'8804''45'isPartialOrder_2826) (coe d_'8804''45'total_2776)
-- Data.Integer.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_2830 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_'8804''45'isDecTotalOrder_2830
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_24961
      (coe d_'8804''45'isTotalOrder_2828) (coe d__'8799'__2714)
      (coe d__'8804''63'__2794)
-- Data.Integer.Properties.≤-preorder
d_'8804''45'preorder_2832 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_'8804''45'preorder_2832
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2331
      d_'8804''45'isPreorder_2822
-- Data.Integer.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_2834 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232
d_'8804''45'totalPreorder_2834
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4405
      d_'8804''45'isTotalPreorder_2824
-- Data.Integer.Properties.≤-poset
d_'8804''45'poset_2836 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_'8804''45'poset_2836
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_9149
      d_'8804''45'isPartialOrder_2826
-- Data.Integer.Properties.≤-totalOrder
d_'8804''45'totalOrder_2838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_'8804''45'totalOrder_2838
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_18801
      d_'8804''45'isTotalOrder_2828
-- Data.Integer.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_2840 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_'8804''45'decTotalOrder_2840
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      d_'8804''45'isDecTotalOrder_2830
-- Data.Integer.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_2842 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''7495''8658''8804'_2842 v0 v1 ~v2
  = du_'8804''7495''8658''8804'_2842 v0 v1
du_'8804''7495''8658''8804'_2842 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8804''7495''8658''8804'_2842 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2768
               (coe v0))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
             _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2768
                          (coe v2)))
-- Data.Integer.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_2850 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> AgdaAny
d_'8804''8658''8804''7495'_2850 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_2850 v2
du_'8804''8658''8804''7495'_2850 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> AgdaAny
du_'8804''8658''8804''7495'_2850 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2780
             (coe v3)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2780
             (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿+<+
d_drop'8255''43''60''43'_2856 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''43''60''43'_2856 ~v0 ~v1 v2
  = du_drop'8255''43''60''43'_2856 v2
du_drop'8255''43''60''43'_2856 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''43''60''43'_2856 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿-<-
d_drop'8255''45''60''45'_2860 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''45''60''45'_2860 ~v0 ~v1 v2
  = du_drop'8255''45''60''45'_2860 v2
du_drop'8255''45''60''45'_2860 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''45''60''45'_2860 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+≮0
d_'43''8814'0_2864 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''8814'0_2864 = erased
-- Data.Integer.Properties.+≮-
d_'43''8814''45'_2866 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''8814''45'_2866 = erased
-- Data.Integer.Properties.<⇒≤
d_'60''8658''8804'_2868 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'60''8658''8804'_2868 ~v0 ~v1 v2 = du_'60''8658''8804'_2868 v2
du_'60''8658''8804'_2868 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'60''8658''8804'_2868 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v3
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 (coe v3))
      MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v3
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<⇒≢
d_'60''8658''8802'_2874 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_2874 = erased
-- Data.Integer.Properties.<⇒≱
d_'60''8658''8817'_2880 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_2880 = erased
-- Data.Integer.Properties.≤⇒≯
d_'8804''8658''8815'_2886 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_2886 = erased
-- Data.Integer.Properties.≰⇒>
d_'8816''8658''62'_2896 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8816''8658''62'_2896 v0 v1 ~v2 = du_'8816''8658''62'_2896 v0 v1
du_'8816''8658''62'_2896 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'8816''8658''62'_2896 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2914 (coe v0)
                     (coe v1))
            _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                      erased
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2914 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.≮⇒≥
d_'8814''8658''8805'_2922 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8814''8658''8805'_2922 v0 v1 ~v2
  = du_'8814''8658''8805'_2922 v0 v1
du_'8814''8658''8805'_2922 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8814''8658''8805'_2922 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2928
                     (coe v0) (coe v1))
            _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                      erased
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2928
                             (coe v3) (coe v2))))
-- Data.Integer.Properties.>⇒≰
d_'62''8658''8816'_2948 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8816'_2948 = erased
-- Data.Integer.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_2950 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8804''8743''8802''8658''60'_2950 v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_2950 v0 v1 v2
du_'8804''8743''8802''8658''60'_2950 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'8804''8743''8802''8658''60'_2950 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
        -> let v6 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                   (coe v6) (coe v5)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                (coe v1) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_2962 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  (MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_2962 = erased
-- Data.Integer.Properties.<-irrefl
d_'60''45'irrefl_2968 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_2968 = erased
-- Data.Integer.Properties.<-asym
d_'60''45'asym_2974 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_2974 = erased
-- Data.Integer.Properties.≤-<-trans
d_'8804''45''60''45'trans_2980 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8804''45''60''45'trans_2980 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45''60''45'trans_2980 v3 v4
du_'8804''45''60''45'trans_2980 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'8804''45''60''45'trans_2980 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_3018
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
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012
                       (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<-≤-trans
d_'60''45''8804''45'trans_2994 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'60''45''8804''45'trans_2994 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45''8804''45'trans_2994 v3 v4
du_'60''45''8804''45'trans_2994 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'60''45''8804''45'trans_2994 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012
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
                       MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_3018
                       (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<-trans
d_'60''45'trans_3008 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'60''45'trans_3008 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45'trans_3008 v3 v4
du_'60''45'trans_3008 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'60''45'trans_3008 v0 v1
  = coe
      du_'8804''45''60''45'trans_2980
      (coe du_'60''8658''8804'_2868 (coe v0)) (coe v1)
-- Data.Integer.Properties.<-cmp
d_'60''45'cmp_3014 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3014 v0 v1
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
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                          erased
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
                                               (coe v3))
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe eqInt (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                                            (coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_2738
                                                                               (coe v3)))
                                                                  else coe
                                                                         seq
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                                            (coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                                                                               (coe v3)
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2928
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
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                  erased
                                  (\ v4 ->
                                     coe
                                       MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2700
                                       (coe v2))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe eqInt (coe v0) (coe v1))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
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
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                    (coe v7))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_2738
                                                                       (coe v2)))
                                                          else coe
                                                                 seq
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                    (coe v7))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                                                                       (coe v2)
                                                                       (coe
                                                                          MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2928
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
d__'60''63'__3104 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3104 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72)
                  (coe du_drop'8255''43''60''43'_2856)
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'60''63'__3056 (coe v0)
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
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58)
                          (coe du_drop'8255''45''60''45'_2860)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'60''63'__3056 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.<-irrelevant
d_'60''45'irrelevant_3122 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3122 = erased
-- Data.Integer.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3132 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_'60''45'isStrictPartialOrder_3132
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_16311
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3008 v3 v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
-- Data.Integer.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3138 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_'60''45'isStrictTotalOrder_3138
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_27253
      (coe d_'60''45'isStrictPartialOrder_3132) (coe d_'60''45'cmp_3014)
-- Data.Integer.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3140 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
d_'60''45'strictPartialOrder_3140
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_14243
      d_'60''45'isStrictPartialOrder_3132
-- Data.Integer.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
d_'60''45'strictTotalOrder_3142
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_24345
      d_'60''45'isStrictTotalOrder_3138
-- Data.Integer.Properties.i≮i
d_i'8814'i_3144 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_i'8814'i_3144 = erased
-- Data.Integer.Properties.>-irrefl
d_'62''45'irrefl_3146 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''45'irrefl_3146 = erased
-- Data.Integer.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3152 a0 a1 = ()
-- Data.Integer.Properties.≤-Reasoning._._∎
d__'8718'_3154 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3154
  = let v0 = d_'8804''45'isPreorder_2822 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Integer.Properties.≤-Reasoning._.<-go
d_'60''45'go_3156 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3156
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3008 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45''8804''45'trans_2994 v3 v4)
-- Data.Integer.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3158 a0 a1 a2 = ()
-- Data.Integer.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3160 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3160 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Integer.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3162 a0 a1 a2 = ()
-- Data.Integer.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3164 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3164 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3166 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_begin__3166
  = let v0 = d_'8804''45'isPreorder_2822 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_2868 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Integer.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3168 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3168 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3170 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3170 = erased
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_begin__3172
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Integer.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3174 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3174
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Integer.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3178 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3178 = erased
-- Data.Integer.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3180 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_extractStrict_3180 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Integer.Properties.≤-Reasoning._.start
d_start_3188 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_start_3188
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_2822)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_2868 v2)
-- Data.Integer.Properties.≤-Reasoning._.step-<
d_step'45''60'_3190 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3190
  = let v0 = \ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3008 v3 v4 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160 in
       coe
         (let v2
                = \ v2 v3 v4 v5 v6 -> coe du_'60''45''8804''45'trans_2994 v5 v6 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Integer.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3192 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3192
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3194 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3194 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3194 v2
du_step'45''8801''45''8739'_3194 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3194 v0 = coe v0
-- Data.Integer.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3196 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3196
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3198 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3198
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3200 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3200
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3202 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3202
  = let v0 = d_'8804''45'isPreorder_2822 in
    coe
      (let v1
             = \ v1 v2 v3 v4 v5 -> coe du_'8804''45''60''45'trans_2980 v4 v5 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Integer.Properties.≤-Reasoning._.stop
d_stop_3204 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3204
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_2822)
-- Data.Integer.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3208 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3208
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Integer.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3210 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3210
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_2822)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
-- Data.Integer.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3212 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3212 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3212 v4
du_'8801''45'go_3212 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3212 v0 = coe v0
-- Data.Integer.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3214 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3214
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_2822)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45''60''45'trans_2980 v3 v4)
-- Data.Integer.Properties.positive⁻¹
d_positive'8315''185'_3234 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_positive'8315''185'_3234 ~v0 ~v1 = du_positive'8315''185'_3234
du_positive'8315''185'_3234 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_positive'8315''185'_3234
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Integer.Properties.negative⁻¹
d_negative'8315''185'_3240 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_negative'8315''185'_3240 ~v0 ~v1 = du_negative'8315''185'_3240
du_negative'8315''185'_3240 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_negative'8315''185'_3240
  = coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
-- Data.Integer.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_3246 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_nonPositive'8315''185'_3246 v0 ~v1
  = du_nonPositive'8315''185'_3246 v0
du_nonPositive'8315''185'_3246 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_nonPositive'8315''185'_3246 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
-- Data.Integer.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_3252 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_nonNegative'8315''185'_3252 ~v0 ~v1
  = du_nonNegative'8315''185'_3252
du_nonNegative'8315''185'_3252 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_nonNegative'8315''185'_3252
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Integer.Properties.negative<positive
d_negative'60'positive_3260 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_negative'60'positive_3260 ~v0 ~v1 ~v2 ~v3
  = du_negative'60'positive_3260
du_negative'60'positive_3260 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_negative'60'positive_3260
  = coe
      du_'60''45'trans_3008 (coe du_negative'8315''185'_3240)
      (coe du_positive'8315''185'_3234)
-- Data.Integer.Properties.neg-involutive
d_neg'45'involutive_3268 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'involutive_3268 = erased
-- Data.Integer.Properties.neg-injective
d_neg'45'injective_3274 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'injective_3274 = erased
-- Data.Integer.Properties.neg-≤-pos
d_neg'45''8804''45'pos_3290 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45''8804''45'pos_3290 v0 ~v1
  = du_neg'45''8804''45'pos_3290 v0
du_neg'45''8804''45'pos_3290 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_neg'45''8804''45'pos_3290 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
-- Data.Integer.Properties.neg-mono-≤
d_neg'45'mono'45''8804'_3294 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45'mono'45''8804'_3294 ~v0 v1 v2
  = du_neg'45'mono'45''8804'_3294 v1 v2
du_neg'45'mono'45''8804'_3294 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_neg'45'mono'45''8804'_3294 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe du_neg'45''8804''45'pos_3290 (coe v0)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe du_neg'45''8804''45'pos_3290 (coe v0)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-cancel-≤
d_neg'45'cancel'45''8804'_3300 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45'cancel'45''8804'_3300 v0 v1 v2
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
d_neg'45'mono'45''60'_3324 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_neg'45'mono'45''60'_3324 v0 v1 v2
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
d_neg'45'cancel'45''60'_3338 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_neg'45'cancel'45''60'_3338 v0 v1 v2
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
d_'8739'i'8739''8801'0'8658'i'8801'0_3362 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'8739''8801'0'8658'i'8801'0_3362 = erased
-- Data.Integer.Properties.∣-i∣≡∣i∣
d_'8739''45'i'8739''8801''8739'i'8739'_3366 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'i'8739''8801''8739'i'8739'_3366 = erased
-- Data.Integer.Properties.0≤i⇒+∣i∣≡i
d_0'8804'i'8658''43''8739'i'8739''8801'i_3372 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'i'8658''43''8739'i'8739''8801'i_3372 = erased
-- Data.Integer.Properties.+∣i∣≡i⇒0≤i
d_'43''8739'i'8739''8801'i'8658'0'8804'i_3374 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''8739'i'8739''8801'i'8658'0'8804'i_3374 ~v0 ~v1
  = du_'43''8739'i'8739''8801'i'8658'0'8804'i_3374
du_'43''8739'i'8739''8801'i'8658'0'8804'i_3374 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'43''8739'i'8739''8801'i'8658'0'8804'i_3374
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Integer.Properties.+∣i∣≡i⊎+∣i∣≡-i
d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_3380 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_3380 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Integer.Properties.∣m⊝n∣≤m⊔n
d_'8739'm'8861'n'8739''8804'm'8852'n_3390 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'8861'n'8739''8804'm'8852'n_3390 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    coe
      (if coe v2
         then coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                   (\ v3 v4 v5 ->
                      coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 v5))
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
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v6
                              v7))
                      (subInt (coe v1) (coe v0)) v1
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                            (\ v3 v4 v5 v6 v7 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v6
                                 v7))
                         v1 (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                         (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832))
                            (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1)))
                         (let v3
                                = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_2844 in
                          coe
                            (let v4
                                   = MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4472 in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                                     (coe v3))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                                     (coe v4))
                                  (coe v0) (coe v1)))))
                      (MAlonzo.Code.Data.Nat.Properties.d_m'8760'n'8804'm_5074
                         (coe v1) (coe v0)))
                   erased)
         else coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                   (\ v3 v4 v5 ->
                      coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 v5))
                (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe subInt (coe v0) (coe v1)))
                (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                      (\ v3 v4 v5 v6 v7 ->
                         coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v6
                           v7))
                   (subInt (coe v0) (coe v1)) v0
                   (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v6
                              v7))
                      v0 (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832))
                         (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1)))
                      (let v3
                             = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_2844 in
                       coe
                         (let v4
                                = MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4472 in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
                               (coe
                                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                                  (coe v3))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                                  (coe v4))
                               (coe v0) (coe v1)))))
                   (MAlonzo.Code.Data.Nat.Properties.d_m'8760'n'8804'm_5074
                      (coe v0) (coe v1))))
-- Data.Integer.Properties.∣i+j∣≤∣i∣+∣j∣
d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3420 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3420 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798
                (coe
                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe (0 :: Integer))
                      (coe v1))))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v1)))
            _ -> coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                      (\ v2 v3 v4 ->
                         coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 v4))
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
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                         (\ v2 v3 v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v5
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
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                            (\ v2 v3 v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v5
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
                               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832))
                            (coe subInt (coe v0) (coe v1)))
                         (MAlonzo.Code.Data.Nat.Properties.d_m'8852'n'8804'm'43'n_4862
                            (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1))))
                      (d_'8739'm'8861'n'8739''8804'm'8852'n_3390
                         (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1))))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                      (\ v2 v3 v4 ->
                         coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 v4))
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
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                         (\ v2 v3 v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v5
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
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
                            (\ v2 v3 v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v5
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
                                     MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832))
                               (coe subInt (coe v1) (coe v0)))
                            erased)
                         (MAlonzo.Code.Data.Nat.Properties.d_m'8852'n'8804'm'43'n_4862
                            (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0))))
                      (d_'8739'm'8861'n'8739''8804'm'8852'n_3390
                         (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0))))
             _ -> coe
                    MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798
                    (coe subInt (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1))
-- Data.Integer.Properties.∣i-j∣≤∣i∣+∣j∣
d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_3458 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_3458 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
         (\ v2 v3 v4 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880 v4))
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
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832)
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3012 v5
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
                  (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832))
               (coe
                  addInt
                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))))
            erased)
         (d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3420
            (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))))
-- Data.Integer.Properties.◃-nonZero
d_'9667''45'nonZero_3476 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'9667''45'nonZero_3476 v0 ~v1 ~v2 = du_'9667''45'nonZero_3476 v0
du_'9667''45'nonZero_3476 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'9667''45'nonZero_3476 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Integer.Properties.◃-inverse
d_'9667''45'inverse_3480 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'inverse_3480 = erased
-- Data.Integer.Properties.◃-cong
d_'9667''45'cong_3486 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'cong_3486 = erased
-- Data.Integer.Properties.+◃n≡+n
d_'43''9667'n'8801''43'n_3502 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''9667'n'8801''43'n_3502 = erased
-- Data.Integer.Properties.-◃n≡-n
d_'45''9667'n'8801''45'n_3506 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''9667'n'8801''45'n_3506 = erased
-- Data.Integer.Properties.sign-◃
d_sign'45''9667'_3514 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''9667'_3514 = erased
-- Data.Integer.Properties.abs-◃
d_abs'45''9667'_3520 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''9667'_3520 = erased
-- Data.Integer.Properties.signᵢ◃∣i∣≡i
d_sign'7522''9667''8739'i'8739''8801'i_3528 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'7522''9667''8739'i'8739''8801'i_3528 = erased
-- Data.Integer.Properties.sign-cong
d_sign'45'cong_3538 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45'cong_3538 = erased
-- Data.Integer.Properties.sign-cong′
d_sign'45'cong'8242'_3554 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sign'45'cong'8242'_3554 v0 v1 ~v2 ~v3 ~v4
  = du_sign'45'cong'8242'_3554 v0 v1
du_sign'45'cong'8242'_3554 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sign'45'cong'8242'_3554 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> let v2
                 = coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased in
           coe (coe seq (coe v0) (coe v2))
-- Data.Integer.Properties.abs-cong
d_abs'45'cong_3588 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45'cong_3588 = erased
-- Data.Integer.Properties.∣s◃m∣*∣t◃n∣≡m*n
d_'8739's'9667'm'8739''42''8739't'9667'n'8739''8801'm'42'n_3612 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739's'9667'm'8739''42''8739't'9667'n'8739''8801'm'42'n_3612
  = erased
-- Data.Integer.Properties.+◃-mono-<
d_'43''9667''45'mono'45''60'_3622 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''9667''45'mono'45''60'_3622 v0 ~v1 v2
  = du_'43''9667''45'mono'45''60'_3622 v0 v2
du_'43''9667''45'mono'45''60'_3622 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'43''9667''45'mono'45''60'_3622 v0 v1
  = coe
      seq (coe v0)
      (coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v1)
-- Data.Integer.Properties.+◃-cancel-<
d_'43''9667''45'cancel'45''60'_3634 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''9667''45'cancel'45''60'_3634 v0 ~v1 v2
  = du_'43''9667''45'cancel'45''60'_3634 v0 v2
du_'43''9667''45'cancel'45''60'_3634 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''9667''45'cancel'45''60'_3634 v0 v1
  = coe
      seq (coe v0)
      (case coe v1 of
         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v4 -> coe v4
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.neg◃-cancel-<
d_neg'9667''45'cancel'45''60'_3648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_neg'9667''45'cancel'45''60'_3648 ~v0 v1 v2
  = du_neg'9667''45'cancel'45''60'_3648 v1 v2
du_neg'9667''45'cancel'45''60'_3648 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_neg'9667''45'cancel'45''60'_3648 v0 v1
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
d_'45''9667''60''43''9667'_3664 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'45''9667''60''43''9667'_3664 ~v0 v1 ~v2
  = du_'45''9667''60''43''9667'_3664 v1
du_'45''9667''60''43''9667'_3664 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'45''9667''60''43''9667'_3664 v0
  = coe
      seq (coe v0) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
-- Data.Integer.Properties.+◃≮-◃
d_'43''9667''8814''45''9667'_3666 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''9667''8814''45''9667'_3666 = erased
-- Data.Integer.Properties.n⊖n≡0
d_n'8854'n'8801'0_3672 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8854'n'8801'0_3672 = erased
-- Data.Integer.Properties.[1+m]⊖[1+n]≡m⊖n
d_'91'1'43'm'93''8854''91'1'43'n'93''8801'm'8854'n_3690 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'1'43'm'93''8854''91'1'43'n'93''8801'm'8854'n_3690 = erased
-- Data.Integer.Properties.⊖-swap
d_'8854''45'swap_3712 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45'swap_3712 = erased
-- Data.Integer.Properties.⊖-≥
d_'8854''45''8805'_3726 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8805'_3726 = erased
-- Data.Integer.Properties.≤-⊖
d_'8804''45''8854'_3754 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45''8854'_3754 = erased
-- Data.Integer.Properties.⊖-≤
d_'8854''45''8804'_3768 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8804'_3768 = erased
-- Data.Integer.Properties.⊖-<
d_'8854''45''60'_3804 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''60'_3804 = erased
-- Data.Integer.Properties.⊖-≰
d_'8854''45''8816'_3806 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8816'_3806 = erased
-- Data.Integer.Properties.∣⊖∣-≤
d_'8739''8854''8739''45''8804'_3808 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''8804'_3808 = erased
-- Data.Integer.Properties.∣⊖∣-<
d_'8739''8854''8739''45''60'_3820 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''60'_3820 = erased
-- Data.Integer.Properties.∣⊖∣-≰
d_'8739''8854''8739''45''8816'_3832 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''8816'_3832 = erased
-- Data.Integer.Properties.-m+n≡n⊖m
d_'45'm'43'n'8801'n'8854'm_3838 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'm'43'n'8801'n'8854'm_3838 = erased
-- Data.Integer.Properties.m-n≡m⊖n
d_m'45'n'8801'm'8854'n_3850 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'45'n'8801'm'8854'n_3850 = erased
-- Data.Integer.Properties.-[n⊖m]≡-m+n
d_'45''91'n'8854'm'93''8801''45'm'43'n_3864 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''91'n'8854'm'93''8801''45'm'43'n_3864 = erased
-- Data.Integer.Properties.∣m⊖n∣≡∣n⊖m∣
d_'8739'm'8854'n'8739''8801''8739'n'8854'm'8739'_3898 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'8854'n'8739''8801''8739'n'8854'm'8739'_3898 = erased
-- Data.Integer.Properties.+-cancelˡ-⊖
d_'43''45'cancel'737''45''8854'_3914 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8854'_3914 = erased
-- Data.Integer.Properties.m⊖n≤m
d_m'8854'n'8804'm_3934 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8854'n'8804'm_3934 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_2750
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
                             (coe d_'8804''45'isPreorder_2822)
                             (\ v4 v5 v6 -> coe du_'60''8658''8804'_2868 v6))
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
                                   (coe d_'8804''45'isPreorder_2822)
                                   (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2980 v7 v8))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v3) (coe v2))
                                v3 v0
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                      (coe d_'8804''45'isPreorder_2822)
                                      (\ v4 v5 v6 v7 v8 ->
                                         coe du_'8804''45''60''45'trans_2980 v7 v8))
                                   v3 v0 v0
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe d_'8804''45'isPreorder_2822))
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                      (MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2870
                                         (coe v3))))
                                (d_m'8854'n'8804'm_3934 (coe v3) (coe v2)))
                             erased)))
-- Data.Integer.Properties.m⊖n<1+m
d_m'8854'n'60'1'43'm_3952 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_m'8854'n'60'1'43'm_3952 v0 v1
  = coe
      du_'8804''45''60''45'trans_2980
      (coe d_m'8854'n'8804'm_3934 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_m'60'n'43'm_3656 (coe v0)
            (coe
               MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
-- Data.Integer.Properties.m⊖1+n<m
d_m'8854'1'43'n'60'm_3964 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_m'8854'1'43'n'60'm_3964 v0 v1 ~v2
  = du_m'8854'1'43'n'60'm_3964 v0 v1
du_m'8854'1'43'n'60'm_3964 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_m'8854'1'43'n'60'm_3964 v0 v1
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
                               (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_3008 v8 v9)
                               (coe
                                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                               (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2994 v8 v9))
                            (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2) (coe v3))
                            v0 v0
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_2822))
                               (coe v0))
                            (d_m'8854'n'60'1'43'm_3952 (coe v2) (coe v3)))
                         erased))))
-- Data.Integer.Properties.-1+m<n⊖m
d_'45'1'43'm'60'n'8854'm_3980 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'45'1'43'm'60'n'8854'm_3980 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                       (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798 (coe v0))
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
                                   (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_3008 v8 v9)
                                   (coe
                                      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                   (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2994 v8 v9))
                                (subInt (coe (-1 :: Integer)) (coe v0))
                                (subInt (coe (0 :: Integer)) (coe v0))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1) (coe v0))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                      (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_3008 v8 v9)
                                      (coe
                                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                      (\ v5 v6 v7 v8 v9 ->
                                         coe du_'60''45''8804''45'trans_2994 v8 v9))
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
                                            (coe d_'8804''45'isPreorder_2822))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1)
                                            (coe v0)))
                                      erased)
                                   (d_'45'1'43'm'60'n'8854'm_3980 (coe v2) (coe v3)))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                                   (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798
                                      (coe v0)))))))
-- Data.Integer.Properties.-[1+m]≤n⊖m+1
d_'45''91'1'43'm'93''8804'n'8854'm'43'1_3998 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'45''91'1'43'm'93''8804'n'8854'm'43'1_3998 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_2750 (coe subInt (coe (-1 :: Integer)) (coe v0))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe d_'8804''45'isPreorder_2822)
                   (\ v3 v4 v5 -> coe du_'60''8658''8804'_2868 v5))
                (subInt (coe (-1 :: Integer)) (coe v0))
                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                   (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe d_'8804''45'isPreorder_2822)
                      (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2980 v6 v7))
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
                            (coe d_'8804''45'isPreorder_2822))
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1)
                            (coe addInt (coe (1 :: Integer)) (coe v0))))
                      erased)
                   (coe
                      du_'60''8658''8804'_2868
                      (coe d_'45'1'43'm'60'n'8854'm_3980 (coe v0) (coe v2)))))
-- Data.Integer.Properties.-1+m≤n⊖m
d_'45'1'43'm'8804'n'8854'm_4014 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'45'1'43'm'8804'n'8854'm_4014 v0 v1
  = coe
      du_'60''8658''8804'_2868
      (coe d_'45'1'43'm'60'n'8854'm_3980 (coe v0) (coe v1))
-- Data.Integer.Properties.0⊖m≤+
d_0'8854'm'8804''43'_4024 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8854'm'8804''43'_4024 v0 ~v1 = du_0'8854'm'8804''43'_4024 v0
du_0'8854'm'8804''43'_4024 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_0'8854'm'8804''43'_4024 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
-- Data.Integer.Properties.sign-⊖-<
d_sign'45''8854''45''60'_4028 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''8854''45''60'_4028 = erased
-- Data.Integer.Properties.sign-⊖-≰
d_sign'45''8854''45''8816'_4040 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''8854''45''8816'_4040 = erased
-- Data.Integer.Properties.⊖-monoʳ-≥-≤
d_'8854''45'mono'691''45''8805''45''8804'_4046 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8854''45'mono'691''45''8805''45''8804'_4046 v0 v1 v2 v3
  = case coe v0 of
      0 -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe du_0'8854'm'8804''43'_4024 (coe v1)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       seq (coe v3)
                       (coe
                          d_'8804''45'refl_2750
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
                                    (coe d_'8804''45'isPreorder_2822)
                                    (\ v7 v8 v9 -> coe du_'60''8658''8804'_2868 v9))
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
                                          (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_3008 v10 v11)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                          (\ v7 v8 v9 v10 v11 ->
                                             coe du_'60''45''8804''45'trans_2994 v10 v11))
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
                                             (coe d_'8804''45'isPreorder_2822))
                                          (coe v0))
                                       (d_m'8854'n'60'1'43'm_3952 (coe v4) (coe v5)))
                                    erased)
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                            -> let v9 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                       (coe d_'8804''45'isPreorder_2822)
                                       (\ v10 v11 v12 -> coe du_'60''8658''8804'_2868 v12))
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
                                             (coe d_'8804''45'isPreorder_2822)
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe du_'8804''45''60''45'trans_2980 v13 v14))
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
                                                   (coe d_'8804''45'isPreorder_2822))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v0) (coe v2)))
                                             erased)
                                          (d_'8854''45'mono'691''45''8805''45''8804'_4046
                                             (coe v4) (coe v5) (coe v9) (coe v8)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoˡ-≤
d_'8854''45'mono'737''45''8804'_4078 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8854''45'mono'737''45''8804'_4078 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                0 -> coe
                       seq (coe v3)
                       (coe
                          d_'8804''45'refl_2750
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
                                    (coe d_'8804''45'isPreorder_2822)
                                    (\ v7 v8 v9 -> coe du_'60''8658''8804'_2868 v9))
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
                                       (coe d_'8804''45'isPreorder_2822)
                                       (\ v7 v8 v9 v10 v11 ->
                                          coe du_'8804''45''60''45'trans_2980 v10 v11))
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
                                          (coe d_'8804''45'isPreorder_2822)
                                          (\ v7 v8 v9 v10 v11 ->
                                             coe du_'8804''45''60''45'trans_2980 v10 v11))
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
                                                (coe d_'8804''45'isPreorder_2822))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v2) (coe v0)))
                                          erased)
                                       (d_'8854''45'mono'737''45''8804'_4078
                                          (coe v4) (coe (0 :: Integer)) (coe v5)
                                          (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                                    (d_'8854''45'mono'691''45''8805''45''8804'_4046
                                       (coe (0 :: Integer)) (coe v0) (coe v4)
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2870
                                          (coe v4))))
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                            -> let v9 = subInt (coe v1) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                       (coe d_'8804''45'isPreorder_2822)
                                       (\ v10 v11 v12 -> coe du_'60''8658''8804'_2868 v12))
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
                                             (coe d_'8804''45'isPreorder_2822)
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe du_'8804''45''60''45'trans_2980 v13 v14))
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
                                                   (coe d_'8804''45'isPreorder_2822))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v2) (coe v0)))
                                             erased)
                                          (d_'8854''45'mono'737''45''8804'_4078
                                             (coe v4) (coe v9) (coe v5) (coe v8)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoʳ->-<
d_'8854''45'mono'691''45''62''45''60'_4108 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8854''45'mono'691''45''62''45''60'_4108 v0 v1 v2 v3
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
                                                coe du_'60''45'trans_3008 v14 v15)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                             (\ v11 v12 v13 v14 v15 ->
                                                coe du_'60''45''8804''45'trans_2994 v14 v15))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v4) (coe v5))
                                          v0 v0
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_2822))
                                             (coe v0))
                                          (d_m'8854'n'60'1'43'm_3952 (coe v4) (coe v5)))
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
                                                   coe du_'60''45'trans_3008 v17 v18)
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                                (\ v14 v15 v16 v17 v18 ->
                                                   coe du_'60''45''8804''45'trans_2994 v17 v18))
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
                                                      (coe d_'8804''45'isPreorder_2822))
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                      (coe v0) (coe v2)))
                                                erased)
                                             (d_'8854''45'mono'691''45''62''45''60'_4108
                                                (coe v4) (coe subInt (coe v1) (coe (1 :: Integer)))
                                                (coe v12)
                                                (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11)))
                                          erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoˡ-<
d_'8854''45'mono'737''45''60'_4136 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8854''45'mono'737''45''60'_4136 v0 v1 v2 v3
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
                                             coe du_'60''45'trans_3008 v14 v15)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe du_'60''45''8804''45'trans_2994 v14 v15))
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
                                                (coe d_'8804''45'isPreorder_2822))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v2) (coe v0)))
                                          erased)
                                       (d_'45'1'43'm'60'n'8854'm_3980 (coe v4) (coe v5))))
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
                                                   coe du_'60''45'trans_3008 v17 v18)
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                                (\ v14 v15 v16 v17 v18 ->
                                                   coe du_'60''45''8804''45'trans_2994 v17 v18))
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
                                                      (coe d_'8804''45'isPreorder_2822))
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                      (coe v2) (coe v0)))
                                                erased)
                                             (d_'8854''45'mono'737''45''60'_4136
                                                (coe v4) (coe v12)
                                                (coe subInt (coe v2) (coe (1 :: Integer)))
                                                (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11)))
                                          erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.+-comm
d_'43''45'comm_4160 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4160 = erased
-- Data.Integer.Properties.+-identityˡ
d_'43''45'identity'737'_4170 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4170 = erased
-- Data.Integer.Properties.+-identityʳ
d_'43''45'identity'691'_4172 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4172 = erased
-- Data.Integer.Properties.+-identity
d_'43''45'identity_4174 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4174
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.distribˡ-⊖-+-pos
d_distrib'737''45''8854''45''43''45'pos_4182 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737''45''8854''45''43''45'pos_4182 = erased
-- Data.Integer.Properties.distribˡ-⊖-+-neg
d_distrib'737''45''8854''45''43''45'neg_4202 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737''45''8854''45''43''45'neg_4202 = erased
-- Data.Integer.Properties.distribʳ-⊖-+-pos
d_distrib'691''45''8854''45''43''45'pos_4222 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''8854''45''43''45'pos_4222 = erased
-- Data.Integer.Properties.distribʳ-⊖-+-neg
d_distrib'691''45''8854''45''43''45'neg_4242 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''8854''45''43''45'neg_4242 = erased
-- Data.Integer.Properties.+-assoc
d_'43''45'assoc_4256 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4256 = erased
-- Data.Integer.Properties.+-inverseˡ
d_'43''45'inverse'737'_4436 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_4436 = erased
-- Data.Integer.Properties.+-inverseʳ
d_'43''45'inverse'691'_4442 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_4442 = erased
-- Data.Integer.Properties.+-inverse
d_'43''45'inverse_4444 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_4444
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.+-isMagma
d_'43''45'isMagma_4446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'43''45'isMagma_4446
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Integer.Properties.+-isSemigroup
d_'43''45'isSemigroup_4448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'43''45'isSemigroup_4448
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'43''45'isMagma_4446) erased
-- Data.Integer.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_4450 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'43''45'isCommutativeSemigroup_4450
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe d_'43''45'isSemigroup_4448) erased
-- Data.Integer.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_4452 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'0'45'isMonoid_4452
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'43''45'isSemigroup_4448) (coe d_'43''45'identity_4174)
-- Data.Integer.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4454 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'0'45'isCommutativeMonoid_4454
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'43''45'0'45'isMonoid_4452) erased
-- Data.Integer.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_4456 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_'43''45'0'45'isGroup_4456
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_26963
      (coe d_'43''45'0'45'isMonoid_4452) (coe d_'43''45'inverse_4444)
      erased
-- Data.Integer.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_4458 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'0'45'isAbelianGroup_4458
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_32441
      (coe d_'43''45'0'45'isGroup_4456) erased
-- Data.Integer.Properties.+-magma
d_'43''45'magma_4460 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'43''45'magma_4460
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 d_'43''45'isMagma_4446
-- Data.Integer.Properties.+-semigroup
d_'43''45'semigroup_4462 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'43''45'semigroup_4462
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      d_'43''45'isSemigroup_4448
-- Data.Integer.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_4464 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'43''45'commutativeSemigroup_4464
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      d_'43''45'isCommutativeSemigroup_4450
-- Data.Integer.Properties.+-0-monoid
d_'43''45'0'45'monoid_4466 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'43''45'0'45'monoid_4466
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (0 :: Integer)
      d_'43''45'0'45'isMonoid_4452
-- Data.Integer.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4468 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'0'45'commutativeMonoid_4468
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (0 :: Integer)
      d_'43''45'0'45'isCommutativeMonoid_4454
-- Data.Integer.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_4470 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640
d_'43''45'0'45'abelianGroup_4470
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_29899
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (0 :: Integer)
      MAlonzo.Code.Data.Integer.Base.d_'45'__252
      d_'43''45'0'45'isAbelianGroup_4458
-- Data.Integer.Properties.pos-+
d_pos'45''43'_4472 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''43'_4472 = erased
-- Data.Integer.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_4484 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_4484 = erased
-- Data.Integer.Properties.◃-distrib-+
d_'9667''45'distrib'45''43'_4512 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'distrib'45''43'_4512 = erased
-- Data.Integer.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4532 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'mono'691''45''8804'_4532 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v3 of
            MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
              -> coe
                   d_'8854''45'mono'691''45''8805''45''8804'_4046 (coe v0)
                   (coe subInt (coe (0 :: Integer)) (coe v1))
                   (coe subInt (coe (0 :: Integer)) (coe v2))
                   (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
            MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
              -> coe
                   du_'8804''45'trans_2752
                   (coe
                      d_m'8854'n'8804'm_3934 (coe v0)
                      (coe subInt (coe (0 :: Integer)) (coe v1)))
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508 (coe v0)))
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3580
                      (coe v0) (coe v2) (coe v6))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v3 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
               -> let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3580
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v7) (coe v6)))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
               -> coe
                    du_'8804''45'trans_2752
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508
                          (coe subInt (coe (0 :: Integer)) (coe v0))))
                    (coe
                       d_'45'1'43'm'8804'n'8854'm_4014
                       (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v2))
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
               -> coe
                    d_'8854''45'mono'737''45''8804'_4078
                    (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) (coe v2)
                    (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4562 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'mono'737''45''8804'_4562 v0 v1 v2
  = coe d_'43''45'mono'691''45''8804'_4532 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4578 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'mono'45''8804'_4578 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2822)
         (\ v6 v7 v8 -> coe du_'60''8658''8804'_2868 v8))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_2822)
            (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_2980 v9 v10))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_2822)
               (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_2980 v9 v10))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2822))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3)))
            (d_'43''45'mono'691''45''8804'_4532
               (coe v1) (coe v2) (coe v3) (coe v5)))
         (coe d_'43''45'mono'737''45''8804'_4562 v2 v0 v1 v4))
-- Data.Integer.Properties.i≤j⇒i≤k+j
d_i'8804'j'8658'i'8804'k'43'j_4600 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'8804'k'43'j_4600 v0 v1 v2 ~v3 v4
  = du_i'8804'j'8658'i'8804'k'43'j_4600 v0 v1 v2 v4
du_i'8804'j'8658'i'8804'k'43'j_4600 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'8658'i'8804'k'43'j_4600 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4578 (coe (0 :: Integer)) (coe v2)
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      (coe v3)
-- Data.Integer.Properties.i≤j+i
d_i'8804'j'43'i_4614 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'43'i_4614 v0 v1 ~v2 = du_i'8804'j'43'i_4614 v0 v1
du_i'8804'j'43'i_4614 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'43'i_4614 v0 v1
  = coe
      du_i'8804'j'8658'i'8804'k'43'j_4600 (coe v0) (coe v0) (coe v1)
      (coe d_'8804''45'refl_2750 (coe v0))
-- Data.Integer.Properties.i≤i+j
d_i'8804'i'43'j_4626 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'i'43'j_4626 v0 v1 ~v2 = du_i'8804'i'43'j_4626 v0 v1
du_i'8804'i'43'j_4626 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'i'43'j_4626 v0 v1
  = coe du_i'8804'j'43'i_4614 (coe v0) (coe v1)
-- Data.Integer.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4638 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'691''45''60'_4638 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v3 of
            MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v6
              -> coe
                   d_'8854''45'mono'691''45''62''45''60'_4108 (coe v0)
                   (coe subInt (coe (0 :: Integer)) (coe v1))
                   (coe subInt (coe (0 :: Integer)) (coe v2))
                   (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
            MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
              -> coe
                   du_'60''45''8804''45'trans_2994
                   (coe
                      du_m'8854'1'43'n'60'm_3964 (coe v0)
                      (coe subInt (coe (0 :: Integer)) (coe v1)))
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508 (coe v0)))
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v6
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3622
                      (coe v0) (coe v6))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v3 of
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v7
                  -> coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3622
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v7))
                MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
                  -> coe
                       du_'60''45''8804''45'trans_2994
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508
                             (coe subInt (coe (0 :: Integer)) (coe v0))))
                       (coe
                          d_'45''91'1'43'm'93''8804'n'8854'm'43'1_3998 (coe v4) (coe v2))
                MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v7
                  -> coe
                       d_'8854''45'mono'737''45''60'_4136
                       (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) (coe v2)
                       (coe v7)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4666 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'737''45''60'_4666 v0 v1 v2
  = coe d_'43''45'mono'691''45''60'_4638 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.+-mono-<
d_'43''45'mono'45''60'_4682 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'45''60'_4682 v0 v1 v2 v3 v4 v5
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
               (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_3008 v10 v11)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
               (\ v7 v8 v9 v10 v11 ->
                  coe du_'60''45''8804''45'trans_2994 v10 v11))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_3008 v10 v11)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                  (\ v7 v8 v9 v10 v11 ->
                     coe du_'60''45''8804''45'trans_2994 v10 v11))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_2822))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3)))
               (d_'43''45'mono'691''45''60'_4638
                  (coe v1) (coe v2) (coe v3) (coe v5)))
            (coe d_'43''45'mono'737''45''60'_4666 v2 v0 v1 v4)))
-- Data.Integer.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4700 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'45''8804''45''60'_4700 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''45''60''45'trans_2980
      (coe d_'43''45'mono'737''45''8804'_4562 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''60'_4638 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Integer.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_4712 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'45''60''45''8804'_4712 v0 v1 v2 v3 v4 v5
  = coe
      du_'60''45''8804''45'trans_2994
      (coe d_'43''45'mono'737''45''60'_4666 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''8804'_4532 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Integer.Properties.neg-minus-pos
d_neg'45'minus'45'pos_4728 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'minus'45'pos_4728 = erased
-- Data.Integer.Properties.+-minus-telescope
d_'43''45'minus'45'telescope_4744 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'minus'45'telescope_4744 = erased
-- Data.Integer.Properties.[+m]-[+n]≡m⊖n
d_'91''43'm'93''45''91''43'n'93''8801'm'8854'n_4766 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''43'm'93''45''91''43'n'93''8801'm'8854'n_4766 = erased
-- Data.Integer.Properties.∣i-j∣≡∣j-i∣
d_'8739'i'45'j'8739''8801''8739'j'45'i'8739'_4780 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'45'j'8739''8801''8739'j'45'i'8739'_4780 = erased
-- Data.Integer.Properties.∣-∣-≤
d_'8739''45''8739''45''8804'_4810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45''8804'_4810 = erased
-- Data.Integer.Properties.i≡j⇒i-j≡0
d_i'8801'j'8658'i'45'j'8801'0_4848 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8801'j'8658'i'45'j'8801'0_4848 = erased
-- Data.Integer.Properties.i-j≡0⇒i≡j
d_i'45'j'8801'0'8658'i'8801'j_4856 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'45'j'8801'0'8658'i'8801'j_4856 = erased
-- Data.Integer.Properties.i≤j⇒i-k≤j
d_i'8804'j'8658'i'45'k'8804'j_4874 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'45'k'8804'j_4874 v0 ~v1 v2 ~v3 v4
  = du_i'8804'j'8658'i'45'k'8804'j_4874 v0 v2 v4
du_i'8804'j'8658'i'45'k'8804'j_4874 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'8658'i'45'k'8804'j_4874 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
                    coe
                      du_'8804''45'trans_2752
                      (coe d_m'8854'n'8804'm_3934 (coe v0) (coe v1)) (coe v2)
                _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v0) in
                     coe
                       (coe
                          du_'8804''45'trans_2752
                          (coe
                             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2806
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508 (coe v4))
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2870
                                   (coe addInt (coe v4) (coe v3)))))
                          (coe v2)))
-- Data.Integer.Properties.i-j≤i
d_i'45'j'8804'i_4902 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'45'j'8804'i_4902 v0 v1 ~v2 = du_i'45'j'8804'i_4902 v0 v1
du_i'45'j'8804'i_4902 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'45'j'8804'i_4902 v0 v1
  = coe
      du_i'8804'j'8658'i'45'k'8804'j_4874 (coe v0) (coe v1)
      (coe d_'8804''45'refl_2750 (coe v0))
-- Data.Integer.Properties.i≤j⇒i-j≤0
d_i'8804'j'8658'i'45'j'8804'0_4908 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'45'j'8804'0_4908 v0 v1 v2
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
                      (coe d_'8804''45'isPreorder_2822)
                      (\ v8 v9 v10 -> coe du_'60''8658''8804'_2868 v10))
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
                            (coe d_'8804''45'isPreorder_2822)
                            (\ v8 v9 v10 v11 v12 ->
                               coe du_'8804''45''60''45'trans_2980 v11 v12))
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
                                  (coe d_'8804''45'isPreorder_2822))
                               (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                            erased)
                         (d_'8854''45'mono'691''45''8805''45''8804'_4046
                            (coe v7) (coe v6) (coe v7) (coe v5)))
                      erased)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             du_i'8804'j'8658'i'45'k'8804'j_4874 (coe v0) (coe v1)
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
                                    (coe d_'8804''45'isPreorder_2822)
                                    (\ v11 v12 v13 -> coe du_'60''8658''8804'_2868 v13))
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
                                          (coe d_'8804''45'isPreorder_2822)
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe du_'8804''45''60''45'trans_2980 v14 v15))
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
                                                (coe d_'8804''45'isPreorder_2822))
                                             (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                                          erased)
                                       (d_'8854''45'mono'691''45''8805''45''8804'_4046
                                          (coe v10) (coe v6) (coe v10) (coe v9)))
                                    erased))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i-j≤0⇒i≤j
d_i'45'j'8804'0'8658'i'8804'j_4934 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'45'j'8804'0'8658'i'8804'j_4934 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2822)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_2868 v5))
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
                     (coe d_'8804''45'isPreorder_2822)
                     (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2980 v6 v7))
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
                           (coe d_'8804''45'isPreorder_2822))
                        (coe v1))
                     erased)
                  (coe
                     d_'43''45'mono'737''45''8804'_4562 v1
                     (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                     MAlonzo.Code.Data.Integer.Base.d_0ℤ_12 v2))
               erased)
            erased)
         erased)
-- Data.Integer.Properties.i≤j⇒0≤j-i
d_i'8804'j'8658'0'8804'j'45'i_4946 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'0'8804'j'45'i_4946 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2822)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_2868 v5))
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
               (coe d_'8804''45'isPreorder_2822)
               (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2980 v6 v7))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v0))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2822))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0)))
            (coe
               d_'43''45'mono'737''45''8804'_4562
               (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0)) v0 v1 v2))
         erased)
-- Data.Integer.Properties.0≤i-j⇒j≤i
d_0'8804'i'45'j'8658'j'8804'i_4958 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8804'i'45'j'8658'j'8804'i_4958 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2822)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_2868 v5))
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
               (coe d_'8804''45'isPreorder_2822)
               (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2980 v6 v7))
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
                           (coe d_'8804''45'isPreorder_2822))
                        (coe v0))
                     erased)
                  erased)
               erased)
            (coe
               d_'43''45'mono'737''45''8804'_4562 v1
               MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
               (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
               v2))
         erased)
-- Data.Integer.Properties.i≤j⇒i≤1+j
d_i'8804'j'8658'i'8804'1'43'j_4970 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'8804'1'43'j_4970 v0 v1
  = coe
      du_i'8804'j'8658'i'8804'k'43'j_4600 (coe v0) (coe v1)
      (coe (1 :: Integer))
-- Data.Integer.Properties.i≤suc[i]
d_i'8804'suc'91'i'93'_4974 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'suc'91'i'93'_4974 v0
  = coe du_i'8804'j'43'i_4614 (coe v0) (coe (1 :: Integer))
-- Data.Integer.Properties.suc-+
d_suc'45''43'_4982 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''43'_4982 = erased
-- Data.Integer.Properties.i≢suc[i]
d_i'8802'suc'91'i'93'_4992 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_i'8802'suc'91'i'93'_4992 = erased
-- Data.Integer.Properties.1-[1+n]≡-n
d_1'45''91'1'43'n'93''8801''45'n_4998 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'45''91'1'43'n'93''8801''45'n_4998 = erased
-- Data.Integer.Properties.suc-mono
d_suc'45'mono_5002 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_suc'45'mono_5002 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
        -> coe
             d_'8854''45'mono'691''45''8805''45''8804'_4046 (coe (1 :: Integer))
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
                   (coe d_'8804''45'isPreorder_2822)
                   (\ v6 v7 v8 -> coe du_'60''8658''8804'_2868 v8))
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
                         (coe d_'8804''45'isPreorder_2822)
                         (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_2980 v9 v10))
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
                            (coe d_'8804''45'isPreorder_2822))
                         (coe MAlonzo.Code.Data.Integer.Base.d_suc_300 (coe v1)))
                      (coe du_0'8854'm'8804''43'_4024 (coe v5)))
                   erased))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.suc[i]≤j⇒i<j
d_suc'91'i'93''8804'j'8658'i'60'j_5016 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_suc'91'i'93''8804'j'8658'i'60'j_5016 v0 v1 v2
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
d_i'60'j'8658'suc'91'i'93''8804'j_5036 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'60'j'8658'suc'91'i'93''8804'j_5036 v0 v1 v2
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
d_suc'45'pred_5048 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_5048 = erased
-- Data.Integer.Properties.pred-suc
d_pred'45'suc_5058 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45'suc_5058 = erased
-- Data.Integer.Properties.+-pred
d_'43''45'pred_5070 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'pred_5070 = erased
-- Data.Integer.Properties.pred-+
d_pred'45''43'_5086 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45''43'_5086 = erased
-- Data.Integer.Properties.neg-suc
d_neg'45'suc_5098 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'suc_5098 = erased
-- Data.Integer.Properties.minus-suc
d_minus'45'suc_5106 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_minus'45'suc_5106 = erased
-- Data.Integer.Properties.i≤pred[j]⇒i<j
d_i'8804'pred'91'j'93''8658'i'60'j_5116 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_i'8804'pred'91'j'93''8658'i'60'j_5116 ~v0 v1 v2
  = du_i'8804'pred'91'j'93''8658'i'60'j_5116 v1 v2
du_i'8804'pred'91'j'93''8658'i'60'j_5116 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_i'8804'pred'91'j'93''8658'i'60'j_5116 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            du_'8804''45''60''45'trans_2980 (coe v1)
            (coe du_m'8854'1'43'n'60'm_3964 (coe v0) (coe (1 :: Integer)))
      _ -> coe
             du_'8804''45''60''45'trans_2980 (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798
                   (coe subInt (coe (0 :: Integer)) (coe v0))))
-- Data.Integer.Properties.i<j⇒i≤pred[j]
d_i'60'j'8658'i'8804'pred'91'j'93'_5126 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'60'j'8658'i'8804'pred'91'j'93'_5126 ~v0 v1 v2
  = du_i'60'j'8658'i'8804'pred'91'j'93'_5126 v1 v2
du_i'60'j'8658'i'8804'pred'91'j'93'_5126 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'60'j'8658'i'8804'pred'91'j'93'_5126 v0 v1
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
d_i'8804'j'8658'pred'91'i'93''8804'j_5138 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'pred'91'i'93''8804'j_5138 ~v0 ~v1 v2
  = du_i'8804'j'8658'pred'91'i'93''8804'j_5138 v2
du_i'8804'j'8658'pred'91'i'93''8804'j_5138 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'8658'pred'91'i'93''8804'j_5138 v0
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
d_pred'45'mono_5144 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_pred'45'mono_5144 v0 v1 v2
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
             d_'8854''45'mono'737''45''8804'_4078 (coe (1 :: Integer)) (coe v0)
             (coe v1) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.*-comm
d_'42''45'comm_5152 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_5152 = erased
-- Data.Integer.Properties.*-identityˡ
d_'42''45'identity'737'_5186 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_5186 = erased
-- Data.Integer.Properties.*-identityʳ
d_'42''45'identity'691'_5200 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_5200 = erased
-- Data.Integer.Properties.*-identity
d_'42''45'identity_5202 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_5202
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-zeroˡ
d_'42''45'zero'737'_5204 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_5204 = erased
-- Data.Integer.Properties.*-zeroʳ
d_'42''45'zero'691'_5206 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_5206 = erased
-- Data.Integer.Properties.*-zero
d_'42''45'zero_5208 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_5208
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-assoc
d_'42''45'assoc_5210 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_5210 = erased
-- Data.Integer.Properties.distrib-lemma
d_distrib'45'lemma_5288 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'45'lemma_5288 = erased
-- Data.Integer.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_5364 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_5364 = erased
-- Data.Integer.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_5630 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_5630 = erased
-- Data.Integer.Properties.*-distrib-+
d_'42''45'distrib'45''43'_5632 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_5632
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-isMagma
d_'42''45'isMagma_5634 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_5634
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Integer.Properties.*-isSemigroup
d_'42''45'isSemigroup_5636 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_5636
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'42''45'isMagma_5634) erased
-- Data.Integer.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_5638 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_5638
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe d_'42''45'isSemigroup_5636) erased
-- Data.Integer.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_5640 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'1'45'isMonoid_5640
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'42''45'isSemigroup_5636) (coe d_'42''45'identity_5202)
-- Data.Integer.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_5642 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'1'45'isCommutativeMonoid_5642
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'42''45'1'45'isMonoid_5640) erased
-- Data.Integer.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_5644 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'43''45''42''45'isSemiring_5644
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe d_'43''45'0'45'isCommutativeMonoid_4454) erased erased
         (coe d_'42''45'identity_5202) (coe d_'42''45'distrib'45''43'_5632))
      (coe d_'42''45'zero_5208)
-- Data.Integer.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_5646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'43''45''42''45'isCommutativeSemiring_5646
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe d_'43''45''42''45'isSemiring_5644) erased
-- Data.Integer.Properties.+-*-isRing
d_'43''45''42''45'isRing_5648 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_'43''45''42''45'isRing_5648
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_96683
      (coe d_'43''45'0'45'isAbelianGroup_4458) erased erased
      (coe d_'42''45'identity_5202) (coe d_'42''45'distrib'45''43'_5632)
-- Data.Integer.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_5650 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818
d_'43''45''42''45'isCommutativeRing_5650
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_102595
      (coe d_'43''45''42''45'isRing_5648) erased
-- Data.Integer.Properties.*-magma
d_'42''45'magma_5652 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'42''45'magma_5652
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 d_'42''45'isMagma_5634
-- Data.Integer.Properties.*-semigroup
d_'42''45'semigroup_5654 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'42''45'semigroup_5654
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      d_'42''45'isSemigroup_5636
-- Data.Integer.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_5656 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'42''45'commutativeSemigroup_5656
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      d_'42''45'isCommutativeSemigroup_5638
-- Data.Integer.Properties.*-1-monoid
d_'42''45'1'45'monoid_5658 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'1'45'monoid_5658
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16 d_'42''45'1'45'isMonoid_5640
-- Data.Integer.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_5660 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'1'45'commutativeMonoid_5660
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'42''45'1'45'isCommutativeMonoid_5642
-- Data.Integer.Properties.+-*-semiring
d_'43''45''42''45'semiring_5662 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_'43''45''42''45'semiring_5662
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_42213
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isSemiring_5644
-- Data.Integer.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_5664 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'43''45''42''45'commutativeSemiring_5664
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isCommutativeSemiring_5646
-- Data.Integer.Properties.+-*-ring
d_'43''45''42''45'ring_5666 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838
d_'43''45''42''45'ring_5666
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_69425
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_'45'__252
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isRing_5648
-- Data.Integer.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_5668 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
d_'43''45''42''45'commutativeRing_5668
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_73489
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_'45'__252
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isCommutativeRing_5650
-- Data.Integer.Properties.abs-*
d_abs'45''42'_5670 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''42'_5670 = erased
-- Data.Integer.Properties.sign-*
d_sign'45''42'_5680 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''42'_5680 = erased
-- Data.Integer.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_5698 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_5698 = erased
-- Data.Integer.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_5742 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_5742 = erased
-- Data.Integer.Properties.suc-*
d_suc'45''42'_5762 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''42'_5762 = erased
-- Data.Integer.Properties.*-suc
d_'42''45'suc_5778 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_5778 = erased
-- Data.Integer.Properties.-1*i≡-i
d_'45'1'42'i'8801''45'i_5792 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'1'42'i'8801''45'i_5792 = erased
-- Data.Integer.Properties.i*j≡0⇒i≡0∨j≡0
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5802 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5802 v0 ~v1 ~v2
  = du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5802 v0
du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5802 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5802 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3848
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
-- Data.Integer.Properties.i*j≢0
d_i'42'j'8802'0_5832 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_i'42'j'8802'0_5832 ~v0 ~v1 ~v2 ~v3 = du_i'42'j'8802'0_5832
du_i'42'j'8802'0_5832 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_i'42'j'8802'0_5832
  = coe MAlonzo.Code.Data.Nat.Properties.du_m'42'n'8802'0_3866
-- Data.Integer.Properties.^-identityʳ
d_'94''45'identity'691'_5844 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_5844 = erased
-- Data.Integer.Properties.^-zeroˡ
d_'94''45'zero'737'_5848 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_5848 = erased
-- Data.Integer.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_5862 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_5862 = erased
-- Data.Integer.Properties.^-isMagmaHomomorphism
d_'94''45'isMagmaHomomorphism_5884 ::
  Integer ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'94''45'isMagmaHomomorphism_5884 ~v0
  = du_'94''45'isMagmaHomomorphism_5884
du_'94''45'isMagmaHomomorphism_5884 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'94''45'isMagmaHomomorphism_5884
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
         erased)
      erased
-- Data.Integer.Properties.^-isMonoidHomomorphism
d_'94''45'isMonoidHomomorphism_5894 ::
  Integer ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'94''45'isMonoidHomomorphism_5894 ~v0
  = du_'94''45'isMonoidHomomorphism_5894
du_'94''45'isMonoidHomomorphism_5894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
du_'94''45'isMonoidHomomorphism_5894
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe du_'94''45'isMagmaHomomorphism_5884) erased
-- Data.Integer.Properties.^-*-assoc
d_'94''45''42''45'assoc_5904 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_5904 = erased
-- Data.Integer.Properties.i^n≡0⇒i≡0
d_i'94'n'8801'0'8658'i'8801'0_5930 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'94'n'8801'0'8658'i'8801'0_5930 = erased
-- Data.Integer.Properties.pos-*
d_pos'45''42'_5938 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''42'_5938 = erased
-- Data.Integer.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_5952 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_5952 = erased
-- Data.Integer.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_5968 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_5968 = erased
-- Data.Integer.Properties.◃-distrib-*
d_'9667''45'distrib'45''42'_5986 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'distrib'45''42'_5986 = erased
-- Data.Integer.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_6020 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'691''45''8804''45'pos_6020 v0 v1 ~v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_6020 v0 v1 v4
du_'42''45'cancel'691''45''8804''45'pos_6020 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'691''45''8804''45'pos_6020 v0 v1 v2
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
                  MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_4056
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
                             MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_4056
                             (coe subInt (coe (0 :: Integer)) (coe v1)))))
-- Data.Integer.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_6054 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'737''45''8804''45'pos_6054 v0 v1 ~v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_6054 v0 v1
du_'42''45'cancel'737''45''8804''45'pos_6054 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'737''45''8804''45'pos_6054 v0 v1
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_6020 (coe v0) (coe v1)
-- Data.Integer.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_6076 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'nonNeg_6076 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonNeg_6076 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonNeg_6076 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'691''45''8804''45'nonNeg_6076 v0 v1 v2 v3
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
                          MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'45''8804'_4086
                          (coe subInt (coe (0 :: Integer)) (coe v1)) (coe v0)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2798 (coe v0))))
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
                              MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'737''45''8804'_4096
                              (coe v0) (coe v2) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_6118 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'nonNeg_6118 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonNeg_6118 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonNeg_6118 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'737''45''8804''45'nonNeg_6118 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_6076 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_6142 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'737''45''8804''45'neg_6142 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''8804''45'neg_6142 v0 v1 v2 v4
du_'42''45'cancel'737''45''8804''45'neg_6142 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'737''45''8804''45'neg_6142 v0 v1 v2 v3
  = coe
      d_neg'45'cancel'45''8804'_3300 (coe v1) (coe v2)
      (coe
         du_'42''45'cancel'737''45''8804''45'pos_6054
         (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe d_'8804''45'isPreorder_2822)
               (\ v4 v5 v6 -> coe du_'60''8658''8804'_2868 v6))
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
                        (coe d_'8804''45'isPreorder_2822)
                        (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2980 v7 v8))
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
                                 (coe d_'8804''45'isPreorder_2822))
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
d_'42''45'cancel'691''45''8804''45'neg_6164 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'691''45''8804''45'neg_6164 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''8804''45'neg_6164 v0 v1 v2
du_'42''45'cancel'691''45''8804''45'neg_6164 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'691''45''8804''45'neg_6164 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''8804''45'neg_6142 (coe v2) (coe v0)
      (coe v1)
-- Data.Integer.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_6186 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'nonPos_6186 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonPos_6186 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonPos_6186 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'737''45''8804''45'nonPos_6186 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe d_'8804''45'isPreorder_2822)
                (\ v4 v5 v6 -> coe du_'60''8658''8804'_2868 v6))
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
                         (coe d_'8804''45'isPreorder_2822)
                         (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2980 v7 v8))
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
                                  (coe d_'8804''45'isPreorder_2822))
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1)))
                            erased)
                         erased)
                      (coe
                         du_'42''45'mono'737''45''8804''45'nonNeg_6118
                         (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                            (\ v4 v5 -> v5) MAlonzo.Code.Data.Integer.Base.d_'45'__252 v1 v2)
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                            MAlonzo.Code.Data.Integer.Base.d_'45'__252 (\ v4 v5 -> v4) v1 v2)
                         (coe du_neg'45'mono'45''8804'_3294 (coe v2) (coe v3))))
                   erased)
                erased)
-- Data.Integer.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_6214 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'nonPos_6214 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonPos_6214 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonPos_6214 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'691''45''8804''45'nonPos_6214 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_6186 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_6236 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'737''45''60''45'pos_6236 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_6236 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_6236 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'737''45''60''45'pos_6236 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v1 of
         _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
             case coe v3 of
               MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v7
                 -> coe
                      du_'43''9667''45'mono'45''60'_3622
                      (coe addInt (coe v1) (coe mulInt (coe v4) (coe v1)))
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''60''45''8804'_3586
                         (coe v7)
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_4106
                            (coe v4) (coe v2)
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880
                               (coe v7))))
               _ -> MAlonzo.RTE.mazUnreachableError
         _ -> case coe v2 of
                _ | coe geqInt (coe v2) (coe (0 :: Integer)) ->
                    coe du_'45''9667''60''43''9667'_3664 (coe mulInt (coe v0) (coe v2))
                _ -> case coe v3 of
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v7
                         -> coe
                              MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''60''45''8804'_3586
                                 (coe v7)
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_4106
                                    (coe v4) (coe subInt (coe (0 :: Integer)) (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880
                                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_6268 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'691''45''60''45'pos_6268 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_6268 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_6268 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'691''45''60''45'pos_6268 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_6236 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_6288 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'nonNeg_6288 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonNeg_6288 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonNeg_6288 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'737''45''60''45'nonNeg_6288 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d_'42''45'cancel'737''45''60'_4240
                     v2 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                     (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
                     (coe
                        du_'43''9667''45'cancel'45''60'_3634
                        (coe
                           mulInt (coe v2)
                           (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
                        (coe v3)))
            _ -> coe
                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                   erased
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
             _ -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe
                       MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d_'42''45'cancel'737''45''60'_4240
                          v2 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
                          (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                          (coe
                             du_neg'9667''45'cancel'45''60'_3648
                             (coe
                                mulInt (coe v2)
                                (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                             (coe v3))))
-- Data.Integer.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_6326 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'nonNeg_6326 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonNeg_6326 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonNeg_6326 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'691''45''60''45'nonNeg_6326 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_6288 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_6348 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'737''45''60''45'neg_6348 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_6348 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_6348 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'737''45''60''45'neg_6348 v0 v1 v2 v3
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
                     (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_3008 v8 v9)
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                     (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2994 v8 v9))
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
                              (coe d_'8804''45'isPreorder_2822))
                           (coe
                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1)))
                        erased)
                     erased)
                  (coe
                     du_'42''45'mono'737''45''60''45'pos_6236
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6) MAlonzo.Code.Data.Integer.Base.d_'45'__252 v1 v2)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Integer.Base.d_'45'__252 (\ v5 v6 -> v5) v1 v2)
                     (coe d_neg'45'mono'45''60'_3324 (coe v1) (coe v2) (coe v3))))
               erased)
            erased))
-- Data.Integer.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_6368 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'691''45''60''45'neg_6368 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_6368 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_6368 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'691''45''60''45'neg_6368 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_6348 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_6388 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'nonPos_6388 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_6388 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_6388 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'737''45''60''45'nonPos_6388 v0 v1 v2 v3
  = coe
      d_neg'45'cancel'45''60'_3338 (coe v0) (coe v1)
      (coe
         du_'42''45'cancel'737''45''60''45'nonNeg_6288
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
                           (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_3008 v8 v9)
                           (coe
                              MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                           (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2994 v8 v9))
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
                                    (coe d_'8804''45'isPreorder_2822))
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
d_'42''45'cancel'691''45''60''45'nonPos_6410 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'nonPos_6410 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_6410 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_6410 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'691''45''60''45'nonPos_6410 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_6388 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_6428 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'neg_6428 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_6388 (coe v0) (coe v1)
      (coe subInt (coe (-1 :: Integer)) (coe v2))
-- Data.Integer.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_6438 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'neg_6438 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''60''45'nonPos_6410 (coe v0) (coe v1)
      (coe subInt (coe (-1 :: Integer)) (coe v2))
-- Data.Integer.Properties.∣i*j∣≡∣i∣*∣j∣
d_'8739'i'42'j'8739''8801''8739'i'8739''42''8739'j'8739'_6450 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'42'j'8739''8801''8739'i'8739''42''8739'j'8739'_6450
  = erased
-- Data.Integer.Properties.i≤j⇒i⊓j≡i
d_i'8804'j'8658'i'8851'j'8801'i_6452 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8804'j'8658'i'8851'j'8801'i_6452 = erased
-- Data.Integer.Properties.i≥j⇒i⊓j≡j
d_i'8805'j'8658'i'8851'j'8801'j_6458 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8805'j'8658'i'8851'j'8801'j_6458 = erased
-- Data.Integer.Properties.i≤j⇒i⊔j≡j
d_i'8804'j'8658'i'8852'j'8801'j_6464 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8804'j'8658'i'8852'j'8801'j_6464 = erased
-- Data.Integer.Properties.i≥j⇒i⊔j≡i
d_i'8805'j'8658'i'8852'j'8801'i_6470 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8805'j'8658'i'8852'j'8801'i_6470 = erased
-- Data.Integer.Properties.⊓-operator
d_'8851''45'operator_6476 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
d_'8851''45'operator_6476
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1157
      (coe MAlonzo.Code.Data.Integer.Base.d__'8851'__340) erased erased
-- Data.Integer.Properties.⊔-operator
d_'8852''45'operator_6478 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136
d_'8852''45'operator_6478
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1701
      (coe MAlonzo.Code.Data.Integer.Base.d__'8852'__322) erased erased
-- Data.Integer.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_6482 ::
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
d_antimono'45''8804''45'distrib'45''8851'_6482 = erased
-- Data.Integer.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_6484 ::
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
d_antimono'45''8804''45'distrib'45''8852'_6484 = erased
-- Data.Integer.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_6486 ::
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
d_mono'45''8804''45'distrib'45''8851'_6486 = erased
-- Data.Integer.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_6488 ::
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
d_mono'45''8804''45'distrib'45''8852'_6488 = erased
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_6490 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'x_6490
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_6492 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'x'8851'z'8804'y_6492
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_6494 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'z'8851'x'8804'y_6494
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_6496 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'x'8851'z'8804'y_6496
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_6498 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'z'8851'x'8804'y_6498
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_6500 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'y_6500
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_6502 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'z_6502
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_6504 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'y_6504
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_6506 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'x'8658'x'8804'y_6506
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_6508 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'y'8658'y'8804'x_6508
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_6510 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'x_6510
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_6512 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'x'8852'y_6512
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3348
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_6514 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'y_6514
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_6516 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'x'8658'x'8804'y_6516
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_6518 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'y'8658'y'8804'x_6518
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_6520 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'y_6520
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_6522 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'z_6522
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_6524 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_6524 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_6526 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_6526 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_6528 :: MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_6528
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3082
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_6530 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_6530 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_6532 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_6532
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3084
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_6534 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_6534 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_6536 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_6536 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_6538 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_6538 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_6540 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_6540
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3168
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_6542 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_6542 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_6544 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_6544 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_6546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'glb_6546
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_6548 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_6548 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_6550 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_6550 ~v0 ~v1 = du_'8851''45'identity_6550
du_'8851''45'identity_6550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_6550
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_6552 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_6552 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_6554 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_6554 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_6556 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_6556
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3064
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_6558 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_6558
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3066
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_6560 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_6560
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3060
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_6562 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_6562
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3072
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_6564 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_6564
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_6566 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_6566
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_6568 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_6568
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3078
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_6570 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'45''8804'_6570
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_6572 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_6572
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3090
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_6574 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'691''45''8804'_6574
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3296
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_6576 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'737''45''8804'_6576
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3286
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-rawMagma
d_'8851''45'rawMagma_6578 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'8851''45'rawMagma_6578
  = let v0 = d_'8851''45'operator_6476 in
    coe
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3076
         (coe v0))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_6580 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_6580
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_6582 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_6582
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3086
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_6584 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_6584
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3080
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_6586 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_6586 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_6588 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_6588 ~v0 ~v1 = du_'8851''45'zero_6588
du_'8851''45'zero_6588 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_6588
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_6590 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_6590 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_6592 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_6592 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_6594 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_6594
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3248
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_6596 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_6596 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_6598 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_6598 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_6600 :: MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_6600
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3082
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_6602 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_6602 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_6604 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_6604
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3084
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_6606 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_6606 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_6608 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_6608 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_6610 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_6610 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_6612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_6612
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3200
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_6614 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_6614 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_6616 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_6616 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_6618 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_6618 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_6620 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_6620
  = let v0 = d_'8852''45'operator_6478 in
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
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_6622 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_6622 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_6624 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_6624 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_6626 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_6626
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3064
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_6628 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_6628
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3066
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_6630 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_6630
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3060
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_6632 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_6632
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3072
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_6634 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_6634
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_6636 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_6636
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_6638 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'glb_6638
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_6640 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_6640
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3078
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_6642 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'45''8804'_6642
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_6644 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_6644
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3090
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_6646 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'691''45''8804'_6646
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3296
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_6648 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'737''45''8804'_6648
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3286
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_6650 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_6650
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_6652 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_6652
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3086
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_6654 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_6654
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3080
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_6656 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_6656 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_6658 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_6658
  = let v0 = d_'8852''45'operator_6478 in
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
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_6660 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_6660 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_6662 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_6662 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_6664 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_6664
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3246
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_6668 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_6668
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_610
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_6670 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_6670
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_612
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_6672 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8851''45''8852''45'distributiveLattice_6672
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_816
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_6674 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8851''45''8852''45'isDistributiveLattice_6674
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_806
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_6676 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8851''45''8852''45'isLattice_6676
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_804
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_6678 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8851''45''8852''45'lattice_6678
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_812
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_6680 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_6680
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_610
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_6682 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_6682
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_612
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_6684 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8852''45''8851''45'distributiveLattice_6684
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_814
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_6686 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8852''45''8851''45'isDistributiveLattice_6686
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_808
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_6688 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8852''45''8851''45'isLattice_6688
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_802
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_6690 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8852''45''8851''45'lattice_6690
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_810
      (coe d_'8804''45'totalPreorder_2834)
      (coe d_'8851''45'operator_6476) (coe d_'8852''45'operator_6478)
-- Data.Integer.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_6698 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_6698 = erased
-- Data.Integer.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_6708 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_6708 = erased
-- Data.Integer.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_6718 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_6718 = erased
-- Data.Integer.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_6728 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_6728 = erased
-- Data.Integer.Properties.mono-<-distrib-⊓
d_mono'45''60''45'distrib'45''8851'_6738 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8851'_6738 = erased
-- Data.Integer.Properties.mono-<-distrib-⊔
d_mono'45''60''45'distrib'45''8852'_6786 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8852'_6786 = erased
-- Data.Integer.Properties.antimono-<-distrib-⊔
d_antimono'45''60''45'distrib'45''8852'_6834 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''60''45'distrib'45''8852'_6834 = erased
-- Data.Integer.Properties.antimono-<-distrib-⊓
d_antimono'45''60''45'distrib'45''8851'_6882 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''60''45'distrib'45''8851'_6882 = erased
-- Data.Integer.Properties.neg-distrib-⊔-⊓
d_neg'45'distrib'45''8852''45''8851'_6928 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''8852''45''8851'_6928 = erased
-- Data.Integer.Properties.neg-distrib-⊓-⊔
d_neg'45'distrib'45''8851''45''8852'_6934 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''8851''45''8852'_6934 = erased
-- Data.Integer.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_6944 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonNeg_6944 = erased
-- Data.Integer.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_6960 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonNeg_6960 = erased
-- Data.Integer.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_6976 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonPos_6976 = erased
-- Data.Integer.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_6992 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonPos_6992 = erased
-- Data.Integer.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_7008 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonNeg_7008 = erased
-- Data.Integer.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_7024 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonNeg_7024 = erased
-- Data.Integer.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_7040 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonPos_7040 = erased
-- Data.Integer.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_7056 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonPos_7056 = erased
-- Data.Integer.Properties.neg-mono-<->
d_neg'45'mono'45''60''45''62'_7064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_neg'45'mono'45''60''45''62'_7064 = coe d_neg'45'mono'45''60'_3324
-- Data.Integer.Properties.neg-mono-≤-≥
d_neg'45'mono'45''8804''45''8805'_7066 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45'mono'45''8804''45''8805'_7066 v0 v1 v2
  = coe du_neg'45'mono'45''8804'_3294 v1 v2
-- Data.Integer.Properties.*-monoʳ-≤-non-neg
d_'42''45'mono'691''45''8804''45'non'45'neg_7068 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'non'45'neg_7068 v0 v1 v2 v3 v4
  = coe du_'42''45'mono'691''45''8804''45'nonNeg_6076 v0 v2 v3 v4
-- Data.Integer.Properties.*-monoˡ-≤-non-neg
d_'42''45'mono'737''45''8804''45'non'45'neg_7070 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'non'45'neg_7070 v0 v1 v2 v3
  = coe du_'42''45'mono'737''45''8804''45'nonNeg_6118 v0 v2 v3
-- Data.Integer.Properties.*-cancelˡ-<-non-neg
d_'42''45'cancel'737''45''60''45'non'45'neg_7072 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'non'45'neg_7072 v0 v1 v2 v3 v4
  = coe du_'42''45'cancel'737''45''60''45'nonNeg_6288 v0 v1 v2 v4
-- Data.Integer.Properties.*-cancelʳ-<-non-neg
d_'42''45'cancel'691''45''60''45'non'45'neg_7074 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'non'45'neg_7074 v0 v1 v2 v3
  = coe du_'42''45'cancel'691''45''60''45'nonNeg_6326 v0 v1 v2
-- Data.Integer.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_7076 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_7076 = erased
-- Data.Integer.Properties.m⊓n≡m⇒m≤n
d_m'8851'n'8801'm'8658'm'8804'n_7078 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8801'm'8658'm'8804'n_7078
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_7080 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_7080 = erased
-- Data.Integer.Properties.m⊓n≡n⇒m≥n
d_m'8851'n'8801'n'8658'm'8805'n_7082 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8801'n'8658'm'8805'n_7082
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m⊓n≤n
d_m'8851'n'8804'n_7084 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8804'n_7084
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m⊓n≤m
d_m'8851'n'8804'm_7086 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8804'm_7086
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8851''45'operator_6476 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_7088 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_7088 = erased
-- Data.Integer.Properties.m⊔n≡n⇒m≤n
d_m'8852'n'8801'n'8658'm'8804'n_7090 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8852'n'8801'n'8658'm'8804'n_7090
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_7092 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_7092 = erased
-- Data.Integer.Properties.m⊔n≡m⇒m≥n
d_m'8852'n'8801'm'8658'm'8805'n_7094 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8852'n'8801'm'8658'm'8805'n_7094
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.m≤m⊔n
d_m'8804'm'8852'n_7096 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'm'8852'n_7096
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.n≤m⊔n
d_n'8804'm'8852'n_7098 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_n'8804'm'8852'n_7098
  = let v0 = d_'8804''45'totalPreorder_2834 in
    coe
      (let v1 = d_'8852''45'operator_6478 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v1))))
-- Data.Integer.Properties.+-pos-monoʳ-≤
d_'43''45'pos'45'mono'691''45''8804'_7102 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'pos'45'mono'691''45''8804'_7102 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
        -> coe
             d_'8854''45'mono'691''45''8805''45''8804'_4046 (coe v0)
             (coe subInt (coe (0 :: Integer)) (coe v1))
             (coe subInt (coe (0 :: Integer)) (coe v2))
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             du_'8804''45'trans_2752
             (coe
                d_m'8854'n'8804'm_3934 (coe v0)
                (coe subInt (coe (0 :: Integer)) (coe v1)))
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508 (coe v0)))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3580
                (coe v0) (coe v2) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+-neg-monoʳ-≤
d_'43''45'neg'45'mono'691''45''8804'_7118 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'neg'45'mono'691''45''8804'_7118 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
        -> let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3580
                   (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v7) (coe v6)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             du_'8804''45'trans_2752
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3508
                   (coe addInt (coe (1 :: Integer)) (coe v0))))
             (coe
                d_'45'1'43'm'8804'n'8854'm_4014
                (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v2))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
        -> coe
             d_'8854''45'mono'737''45''8804'_4078
             (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
             (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.n≮n
d_n'8814'n_7132 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'n_7132 = erased
-- Data.Integer.Properties.∣n∣≡0⇒n≡0
d_'8739'n'8739''8801'0'8658'n'8801'0_7134 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'8739''8801'0'8658'n'8801'0_7134 = erased
-- Data.Integer.Properties.∣-n∣≡∣n∣
d_'8739''45'n'8739''8801''8739'n'8739'_7136 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'n'8739''8801''8739'n'8739'_7136 = erased
-- Data.Integer.Properties.0≤n⇒+∣n∣≡n
d_0'8804'n'8658''43''8739'n'8739''8801'n_7138 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'n'8658''43''8739'n'8739''8801'n_7138 = erased
-- Data.Integer.Properties.+∣n∣≡n⇒0≤n
d_'43''8739'n'8739''8801'n'8658'0'8804'n_7140 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''8739'n'8739''8801'n'8658'0'8804'n_7140 v0 v1
  = coe du_'43''8739'i'8739''8801'i'8658'0'8804'i_3374
-- Data.Integer.Properties.+∣n∣≡n⊎+∣n∣≡-n
d_'43''8739'n'8739''8801'n'8846''43''8739'n'8739''8801''45'n_7142 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''8739'n'8739''8801'n'8846''43''8739'n'8739''8801''45'n_7142
  = coe
      d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_3380
-- Data.Integer.Properties.∣m+n∣≤∣m∣+∣n∣
d_'8739'm'43'n'8739''8804''8739'm'8739''43''8739'n'8739'_7144 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'43'n'8739''8804''8739'm'8739''43''8739'n'8739'_7144
  = coe d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3420
-- Data.Integer.Properties.∣m-n∣≤∣m∣+∣n∣
d_'8739'm'45'n'8739''8804''8739'm'8739''43''8739'n'8739'_7146 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8804''8739'm'8739''43''8739'n'8739'_7146
  = coe d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_3458
-- Data.Integer.Properties.signₙ◃∣n∣≡n
d_sign'8345''9667''8739'n'8739''8801'n_7148 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'8345''9667''8739'n'8739''8801'n_7148 = erased
-- Data.Integer.Properties.◃-≡
d_'9667''45''8801'_7150 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45''8801'_7150 = erased
-- Data.Integer.Properties.∣m-n∣≡∣n-m∣
d_'8739'm'45'n'8739''8801''8739'n'45'm'8739'_7152 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801''8739'n'45'm'8739'_7152 = erased
-- Data.Integer.Properties.m≡n⇒m-n≡0
d_m'8801'n'8658'm'45'n'8801'0_7154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658'm'45'n'8801'0_7154 = erased
-- Data.Integer.Properties.m-n≡0⇒m≡n
d_m'45'n'8801'0'8658'm'8801'n_7156 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'45'n'8801'0'8658'm'8801'n_7156 = erased
-- Data.Integer.Properties.≤-steps
d_'8804''45'steps_7158 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'steps_7158 v0 v1 v2 v3 v4
  = coe du_i'8804'j'8658'i'8804'k'43'j_4600 v0 v1 v2 v4
-- Data.Integer.Properties.≤-steps-neg
d_'8804''45'steps'45'neg_7160 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'steps'45'neg_7160 v0 v1 v2 v3 v4
  = coe du_i'8804'j'8658'i'45'k'8804'j_4874 v0 v2 v4
-- Data.Integer.Properties.≤-step
d_'8804''45'step_7162 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'step_7162 = coe d_i'8804'j'8658'i'8804'1'43'j_4970
-- Data.Integer.Properties.≤-step-neg
d_'8804''45'step'45'neg_7164 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'step'45'neg_7164 v0 v1 v2
  = coe du_i'8804'j'8658'pred'91'i'93''8804'j_5138 v2
-- Data.Integer.Properties.m≤n⇒m-n≤0
d_m'8804'n'8658'm'45'n'8804'0_7166 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'n'8658'm'45'n'8804'0_7166
  = coe d_i'8804'j'8658'i'45'j'8804'0_4908
-- Data.Integer.Properties.m-n≤0⇒m≤n
d_m'45'n'8804'0'8658'm'8804'n_7168 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'45'n'8804'0'8658'm'8804'n_7168
  = coe d_i'45'j'8804'0'8658'i'8804'j_4934
-- Data.Integer.Properties.m≤n⇒0≤n-m
d_m'8804'n'8658'0'8804'n'45'm_7170 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'n'8658'0'8804'n'45'm_7170
  = coe d_i'8804'j'8658'0'8804'j'45'i_4946
-- Data.Integer.Properties.0≤n-m⇒m≤n
d_0'8804'n'45'm'8658'm'8804'n_7172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8804'n'45'm'8658'm'8804'n_7172
  = coe d_0'8804'i'45'j'8658'j'8804'i_4958
-- Data.Integer.Properties.n≤1+n
d_n'8804'1'43'n_7174 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_n'8804'1'43'n_7174 = coe d_i'8804'suc'91'i'93'_4974
-- Data.Integer.Properties.n≢1+n
d_n'8802'1'43'n_7176 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8802'1'43'n_7176 = erased
-- Data.Integer.Properties.m≤pred[n]⇒m<n
d_m'8804'pred'91'n'93''8658'm'60'n_7178 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_m'8804'pred'91'n'93''8658'm'60'n_7178 v0 v1 v2
  = coe du_i'8804'pred'91'j'93''8658'i'60'j_5116 v1 v2
-- Data.Integer.Properties.m<n⇒m≤pred[n]
d_m'60'n'8658'm'8804'pred'91'n'93'_7180 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'60'n'8658'm'8804'pred'91'n'93'_7180 v0 v1 v2
  = coe du_i'60'j'8658'i'8804'pred'91'j'93'_5126 v1 v2
-- Data.Integer.Properties.-1*n≡-n
d_'45'1'42'n'8801''45'n_7182 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'1'42'n'8801''45'n_7182 = erased
-- Data.Integer.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_7184 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_7184 v0 v1 v2
  = coe du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5802 v0
-- Data.Integer.Properties.∣m*n∣≡∣m∣*∣n∣
d_'8739'm'42'n'8739''8801''8739'm'8739''42''8739'n'8739'_7186 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'42'n'8739''8801''8739'm'8739''42''8739'n'8739'_7186
  = erased
-- Data.Integer.Properties.n≤m+n
d_n'8804'm'43'n_7190 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_n'8804'm'43'n_7190 v0 v1
  = coe du_i'8804'j'43'i_4614 (coe v0) (coe v1)
-- Data.Integer.Properties.m≤m+n
d_m'8804'm'43'n_7198 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'm'43'n_7198 v0 v1
  = coe du_i'8804'i'43'j_4626 (coe v0) (coe v1)
-- Data.Integer.Properties.m-n≤m
d_m'45'n'8804'm_7208 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'45'n'8804'm_7208 v0 v1
  = coe du_i'45'j'8804'i_4902 (coe v0) (coe v1)
-- Data.Integer.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_7218 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'pos_7218 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_6076
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_7226 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'pos_7226 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonNeg_6118
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_7234 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'neg_7234 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_6186
      (coe subInt (coe (-1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_7242 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'neg_7242 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonPos_6214
      (coe subInt (coe (-1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.pos-+-commute
d_pos'45''43''45'commute_7246 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''43''45'commute_7246 = erased
-- Data.Integer.Properties.abs-*-commute
d_abs'45''42''45'commute_7248 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''42''45'commute_7248 = erased
-- Data.Integer.Properties.pos-distrib-*
d_pos'45'distrib'45''42'_7254 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45'distrib'45''42'_7254 = erased
-- Data.Integer.Properties.+-isAbelianGroup
d_'43''45'isAbelianGroup_7260 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_7260
  = coe d_'43''45'0'45'isAbelianGroup_4458
