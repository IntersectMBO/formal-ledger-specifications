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
-- Data.Bool.Properties._._MiddleFourExchange_
d__MiddleFourExchange__18 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__MiddleFourExchange__18 = erased
-- Data.Bool.Properties._.Absorptive
d_Absorptive_20 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Absorptive_20 = erased
-- Data.Bool.Properties._.AlmostCancellative
d_AlmostCancellative_22 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_AlmostCancellative_22 = erased
-- Data.Bool.Properties._.AlmostLeftCancellative
d_AlmostLeftCancellative_24 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_AlmostLeftCancellative_24 = erased
-- Data.Bool.Properties._.AlmostRightCancellative
d_AlmostRightCancellative_26 ::
  Bool -> (Bool -> Bool -> Bool) -> ()
d_AlmostRightCancellative_26 = erased
-- Data.Bool.Properties._.Alternative
d_Alternative_28 :: (Bool -> Bool -> Bool) -> ()
d_Alternative_28 = erased
-- Data.Bool.Properties._.Associative
d_Associative_30 :: (Bool -> Bool -> Bool) -> ()
d_Associative_30 = erased
-- Data.Bool.Properties._.Cancellative
d_Cancellative_32 :: (Bool -> Bool -> Bool) -> ()
d_Cancellative_32 = erased
-- Data.Bool.Properties._.Commutative
d_Commutative_34 :: (Bool -> Bool -> Bool) -> ()
d_Commutative_34 = erased
-- Data.Bool.Properties._.Congruent₁
d_Congruent'8321'_36 :: (Bool -> Bool) -> ()
d_Congruent'8321'_36 = erased
-- Data.Bool.Properties._.Congruent₂
d_Congruent'8322'_38 :: (Bool -> Bool -> Bool) -> ()
d_Congruent'8322'_38 = erased
-- Data.Bool.Properties._.Conical
d_Conical_40 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Conical_40 = erased
-- Data.Bool.Properties._.Flexible
d_Flexible_42 :: (Bool -> Bool -> Bool) -> ()
d_Flexible_42 = erased
-- Data.Bool.Properties._.Idempotent
d_Idempotent_44 :: (Bool -> Bool -> Bool) -> ()
d_Idempotent_44 = erased
-- Data.Bool.Properties._.IdempotentFun
d_IdempotentFun_46 :: (Bool -> Bool) -> ()
d_IdempotentFun_46 = erased
-- Data.Bool.Properties._.Identical
d_Identical_48 :: (Bool -> Bool -> Bool) -> ()
d_Identical_48 = erased
-- Data.Bool.Properties._.Identity
d_Identity_50 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Identity_50 = erased
-- Data.Bool.Properties._.Interchangable
d_Interchangable_52 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Interchangable_52 = erased
-- Data.Bool.Properties._.Inverse
d_Inverse_54 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Inverse_54 = erased
-- Data.Bool.Properties._.Invertible
d_Invertible_56 :: Bool -> (Bool -> Bool -> Bool) -> Bool -> ()
d_Invertible_56 = erased
-- Data.Bool.Properties._.Involutive
d_Involutive_58 :: (Bool -> Bool) -> ()
d_Involutive_58 = erased
-- Data.Bool.Properties._.LeftAlternative
d_LeftAlternative_60 :: (Bool -> Bool -> Bool) -> ()
d_LeftAlternative_60 = erased
-- Data.Bool.Properties._.LeftBol
d_LeftBol_62 :: (Bool -> Bool -> Bool) -> ()
d_LeftBol_62 = erased
-- Data.Bool.Properties._.LeftCancellative
d_LeftCancellative_64 :: (Bool -> Bool -> Bool) -> ()
d_LeftCancellative_64 = erased
-- Data.Bool.Properties._.LeftCongruent
d_LeftCongruent_66 :: (Bool -> Bool -> Bool) -> ()
d_LeftCongruent_66 = erased
-- Data.Bool.Properties._.LeftConical
d_LeftConical_68 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftConical_68 = erased
-- Data.Bool.Properties._.LeftDivides
d_LeftDivides_70 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftDivides_70 = erased
-- Data.Bool.Properties._.LeftDividesʳ
d_LeftDivides'691'_72 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftDivides'691'_72 = erased
-- Data.Bool.Properties._.LeftDividesˡ
d_LeftDivides'737'_74 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftDivides'737'_74 = erased
-- Data.Bool.Properties._.LeftIdentity
d_LeftIdentity_76 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftIdentity_76 = erased
-- Data.Bool.Properties._.LeftInverse
d_LeftInverse_78 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftInverse_78 = erased
-- Data.Bool.Properties._.LeftInvertible
d_LeftInvertible_80 :: Bool -> (Bool -> Bool -> Bool) -> Bool -> ()
d_LeftInvertible_80 = erased
-- Data.Bool.Properties._.LeftSemimedial
d_LeftSemimedial_82 :: (Bool -> Bool -> Bool) -> ()
d_LeftSemimedial_82 = erased
-- Data.Bool.Properties._.LeftZero
d_LeftZero_84 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftZero_84 = erased
-- Data.Bool.Properties._.Medial
d_Medial_86 :: (Bool -> Bool -> Bool) -> ()
d_Medial_86 = erased
-- Data.Bool.Properties._.MiddleBol
d_MiddleBol_88 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_MiddleBol_88 = erased
-- Data.Bool.Properties._.RightAlternative
d_RightAlternative_90 :: (Bool -> Bool -> Bool) -> ()
d_RightAlternative_90 = erased
-- Data.Bool.Properties._.RightBol
d_RightBol_92 :: (Bool -> Bool -> Bool) -> ()
d_RightBol_92 = erased
-- Data.Bool.Properties._.RightCancellative
d_RightCancellative_94 :: (Bool -> Bool -> Bool) -> ()
d_RightCancellative_94 = erased
-- Data.Bool.Properties._.RightCongruent
d_RightCongruent_96 :: (Bool -> Bool -> Bool) -> ()
d_RightCongruent_96 = erased
-- Data.Bool.Properties._.RightConical
d_RightConical_98 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightConical_98 = erased
-- Data.Bool.Properties._.RightDivides
d_RightDivides_100 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightDivides_100 = erased
-- Data.Bool.Properties._.RightDividesʳ
d_RightDivides'691'_102 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightDivides'691'_102 = erased
-- Data.Bool.Properties._.RightDividesˡ
d_RightDivides'737'_104 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightDivides'737'_104 = erased
-- Data.Bool.Properties._.RightIdentity
d_RightIdentity_106 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightIdentity_106 = erased
-- Data.Bool.Properties._.RightInverse
d_RightInverse_108 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightInverse_108 = erased
-- Data.Bool.Properties._.RightInvertible
d_RightInvertible_110 ::
  Bool -> (Bool -> Bool -> Bool) -> Bool -> ()
d_RightInvertible_110 = erased
-- Data.Bool.Properties._.RightSemimedial
d_RightSemimedial_112 :: (Bool -> Bool -> Bool) -> ()
d_RightSemimedial_112 = erased
-- Data.Bool.Properties._.RightZero
d_RightZero_114 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightZero_114 = erased
-- Data.Bool.Properties._.Selective
d_Selective_116 :: (Bool -> Bool -> Bool) -> ()
d_Selective_116 = erased
-- Data.Bool.Properties._.SelfInverse
d_SelfInverse_118 :: (Bool -> Bool) -> ()
d_SelfInverse_118 = erased
-- Data.Bool.Properties._.Semimedial
d_Semimedial_120 :: (Bool -> Bool -> Bool) -> ()
d_Semimedial_120 = erased
-- Data.Bool.Properties._.StarDestructive
d_StarDestructive_122 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarDestructive_122 = erased
-- Data.Bool.Properties._.StarExpansive
d_StarExpansive_124 ::
  Bool ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarExpansive_124 = erased
-- Data.Bool.Properties._.StarLeftDestructive
d_StarLeftDestructive_126 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarLeftDestructive_126 = erased
-- Data.Bool.Properties._.StarLeftExpansive
d_StarLeftExpansive_128 ::
  Bool ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarLeftExpansive_128 = erased
-- Data.Bool.Properties._.StarRightDestructive
d_StarRightDestructive_130 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarRightDestructive_130 = erased
-- Data.Bool.Properties._.StarRightExpansive
d_StarRightExpansive_132 ::
  Bool ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarRightExpansive_132 = erased
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
-- Data.Bool.Properties._.IsCommutativeBand
d_IsCommutativeBand_146 a0 = ()
-- Data.Bool.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_148 a0 = ()
-- Data.Bool.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_150 a0 a1 = ()
-- Data.Bool.Properties._.IsCommutativeRing
d_IsCommutativeRing_152 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_154 a0 = ()
-- Data.Bool.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_156 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_158 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_160 a0 = ()
-- Data.Bool.Properties._.IsGroup
d_IsGroup_162 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_164 a0 a1 = ()
-- Data.Bool.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_166 a0 = ()
-- Data.Bool.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_168 a0 a1 = ()
-- Data.Bool.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_170 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_172 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_174 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_176 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_178 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsLoop
d_IsLoop_180 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsMagma
d_IsMagma_182 a0 = ()
-- Data.Bool.Properties._.IsMedialMagma
d_IsMedialMagma_184 a0 = ()
-- Data.Bool.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_186 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsMonoid
d_IsMonoid_188 a0 a1 = ()
-- Data.Bool.Properties._.IsMoufangLoop
d_IsMoufangLoop_190 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsNearSemiring
d_IsNearSemiring_192 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsNearring
d_IsNearring_194 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_196 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsQuasigroup
d_IsQuasigroup_198 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsQuasiring
d_IsQuasiring_200 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsRightBolLoop
d_IsRightBolLoop_202 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsRing
d_IsRing_204 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_206 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_208 a0 = ()
-- Data.Bool.Properties._.IsSemigroup
d_IsSemigroup_210 a0 = ()
-- Data.Bool.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_212 a0 = ()
-- Data.Bool.Properties._.IsSemiring
d_IsSemiring_214 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_216 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_218 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsSuccessorSet
d_IsSuccessorSet_220 a0 a1 = ()
-- Data.Bool.Properties._.IsUnitalMagma
d_IsUnitalMagma_222 a0 a1 = ()
-- Data.Bool.Properties._.IsAbelianGroup._//_
d__'47''47'__226 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> Bool -> Bool
d__'47''47'__226 v0 ~v1 v2 ~v3 = du__'47''47'__226 v0 v2
du__'47''47'__226 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__226 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsAbelianGroup.assoc
d_assoc_228 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_228 = erased
-- Data.Bool.Properties._.IsAbelianGroup.comm
d_comm_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_230 = erased
-- Data.Bool.Properties._.IsAbelianGroup.identity
d_identity_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Bool.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_234 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_234 = erased
-- Data.Bool.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_236 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_236 = erased
-- Data.Bool.Properties._.IsAbelianGroup.inverse
d_inverse_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Bool.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_240 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_240 = erased
-- Data.Bool.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_242 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_242 = erased
-- Data.Bool.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_244 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_246 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204 v3
-- Data.Bool.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_248 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isEquivalence
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
-- Data.Bool.Properties._.IsAbelianGroup.isGroup
d_isGroup_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_252 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Data.Bool.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_254 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_256 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isMagma
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
-- Data.Bool.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_260 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Data.Bool.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_262 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)))
-- Data.Bool.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_266 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.refl
d_refl_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_268 = erased
-- Data.Bool.Properties._.IsAbelianGroup.reflexive
d_reflexive_270 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_270 = erased
-- Data.Bool.Properties._.IsAbelianGroup.setoid
d_setoid_272 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.sym
d_sym_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_274 = erased
-- Data.Bool.Properties._.IsAbelianGroup.trans
d_trans_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_276 = erased
-- Data.Bool.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_278 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_278 = erased
-- Data.Bool.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_280 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_280 = erased
-- Data.Bool.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_282 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_282 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_284 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_284 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_286 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_286 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_288 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_288 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.alter
d_alter_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_292 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_294 (coe v0)
-- Data.Bool.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_294 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_294 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_296 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_296 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_298 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0))
-- Data.Bool.Properties._.IsAlternativeMagma.isMagma
d_isMagma_300 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_300 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_292 (coe v0)
-- Data.Bool.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_302 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAlternativeMagma.refl
d_refl_304 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_304 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.reflexive
d_reflexive_306 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_306 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.setoid
d_setoid_308 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAlternativeMagma.sym
d_sym_310 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_310 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.trans
d_trans_312 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_312 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_314 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_314 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_316 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_316 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_318 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_284 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_318 = erased
-- Data.Bool.Properties._.IsBand.assoc
d_assoc_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_322 = erased
-- Data.Bool.Properties._.IsBand.idem
d_idem_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_324 = erased
-- Data.Bool.Properties._.IsBand.isEquivalence
d_isEquivalence_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)))
-- Data.Bool.Properties._.IsBand.isMagma
d_isMagma_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0))
-- Data.Bool.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_330 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsBand.isSemigroup
d_isSemigroup_332 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_332 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)
-- Data.Bool.Properties._.IsBand.refl
d_refl_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_334 = erased
-- Data.Bool.Properties._.IsBand.reflexive
d_reflexive_336 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_336 = erased
-- Data.Bool.Properties._.IsBand.setoid
d_setoid_338 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsBand.sym
d_sym_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_340 = erased
-- Data.Bool.Properties._.IsBand.trans
d_trans_342 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_342 = erased
-- Data.Bool.Properties._.IsBand.∙-cong
d_'8729''45'cong_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_344 = erased
-- Data.Bool.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_346 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_346 = erased
-- Data.Bool.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_348 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_348 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_352 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_354 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45'nonZero_354 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_356 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_356 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_358 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_360 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_360 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_362 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_362 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_364 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_364 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-identity
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_368 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_368 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_370 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_370 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_372 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_374 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_376 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_378 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_380 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_382 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_384 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_384 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_386 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_386 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_388 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_390 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_390 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_392 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_392 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identity
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_396 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_396 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_398 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_398 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_400 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_404 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isMagma
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isMonoid
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_412 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distrib
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_416 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_416 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_418 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_418 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
      (coe v0)
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_422 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_426 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_428 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1832
         (coe v0))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_434 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_436 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_438 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_438 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_440 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_442 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_442 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_444 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zero
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_448 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_448 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_450 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_450 = erased
-- Data.Bool.Properties._.IsCommutativeBand.assoc
d_assoc_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_454 = erased
-- Data.Bool.Properties._.IsCommutativeBand.comm
d_comm_456 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_456 = erased
-- Data.Bool.Properties._.IsCommutativeBand.idem
d_idem_458 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_458 = erased
-- Data.Bool.Properties._.IsCommutativeBand.isBand
d_isBand_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Bool.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_462 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_464 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_464 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_632 v1
-- Data.Bool.Properties._.IsCommutativeBand.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeBand.isMagma
d_isMagma_468 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_470 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Bool.Properties._.IsCommutativeBand.refl
d_refl_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_474 = erased
-- Data.Bool.Properties._.IsCommutativeBand.reflexive
d_reflexive_476 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_476 = erased
-- Data.Bool.Properties._.IsCommutativeBand.setoid
d_setoid_478 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeBand.sym
d_sym_480 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_480 = erased
-- Data.Bool.Properties._.IsCommutativeBand.trans
d_trans_482 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_482 = erased
-- Data.Bool.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_484 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_484 = erased
-- Data.Bool.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_486 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_486 = erased
-- Data.Bool.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_488 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_488 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.comm
d_comm_492 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_492 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMagma.isMagma
d_isMagma_496 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_496 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_220 (coe v0)
-- Data.Bool.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_498 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeMagma.refl
d_refl_500 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_500 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.reflexive
d_reflexive_502 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_502 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.setoid
d_setoid_504 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeMagma.sym
d_sym_506 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_506 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.trans
d_trans_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_508 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_510 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_510 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_512 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_512 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_514 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_514 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.assoc
d_assoc_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_518 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.comm
d_comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_520 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.identity
d_identity_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_524 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_524 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_526 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_526 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_528 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_530 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_530 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786 v2
-- Data.Bool.Properties._.IsCommutativeMonoid.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_534 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_536 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_536 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Data.Bool.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_538 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_540 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_542 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.refl
d_refl_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_544 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_546 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_546 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.setoid
d_setoid_548 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.sym
d_sym_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_550 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.trans
d_trans_552 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_552 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_554 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_554 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_556 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_556 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_558 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_558 = erased
-- Data.Bool.Properties._.IsCommutativeRing._//_
d__'47''47'__562 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> Bool -> Bool
d__'47''47'__562 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__562 v0 v2
du__'47''47'__562 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__562 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_564 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_564 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_566 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_566 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_568 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_568 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_570 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_570 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_572 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_572 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_574 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_574 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_576 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_576 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_578 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_578 = erased
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_580 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_580 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_580 v0 v1 v2 v3 v5
du_isCommutativeMagma_580 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_582 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_582 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_582 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_582 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_582 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_584 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_584 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_584 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_584 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_586 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_586 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_586 v0 v1 v2 v3 v5
du_'42''45'isMagma_586 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_588 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_588 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_588 v0 v1 v2 v3 v5
du_'42''45'isMonoid_588 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_588 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_590 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_590 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_590 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_590 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.assoc
d_assoc_592 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_592 = erased
-- Data.Bool.Properties._.IsCommutativeRing.comm
d_comm_594 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_594 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_596 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_596 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_598 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_598 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_600 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_600 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identity
d_identity_602 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_604 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_604 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_606 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_606 = erased
-- Data.Bool.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_610 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_612 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_614 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isGroup
d_isGroup_616 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_618 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_620 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isMagma
d_isMagma_622 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_624 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_626 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_628 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_630 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_630 = erased
-- Data.Bool.Properties._.IsCommutativeRing.inverse
d_inverse_632 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_634 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_634 = erased
-- Data.Bool.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_636 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_636 = erased
-- Data.Bool.Properties._.IsCommutativeRing.distrib
d_distrib_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2702
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_640 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_640 = erased
-- Data.Bool.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_642 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_642 = erased
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_644 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_644 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948 v0 v1
      v2 v3 v5
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_646 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_646 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_646 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_646 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_646 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_648 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_650 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_650 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_650 v0 v1 v2 v3 v5
du_isNearSemiring_650 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_652 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isRing
d_isRing_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_654 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0)
-- Data.Bool.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_656 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_658 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_658 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_658 v0 v1 v2 v3 v5
du_isSemiring_658 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_isSemiring_658 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_660 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_662 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_662 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_662 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_662 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.refl
d_refl_664 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_664 = erased
-- Data.Bool.Properties._.IsCommutativeRing.reflexive
d_reflexive_666 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_666 = erased
-- Data.Bool.Properties._.IsCommutativeRing.setoid
d_setoid_668 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.sym
d_sym_670 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_670 = erased
-- Data.Bool.Properties._.IsCommutativeRing.trans
d_trans_672 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_672 = erased
-- Data.Bool.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_674 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_674 = erased
-- Data.Bool.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_676 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_676 = erased
-- Data.Bool.Properties._.IsCommutativeRing.zero
d_zero_678 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_678 v0 v1 v2 v3 ~v4 v5 = du_zero_678 v0 v1 v2 v3 v5
du_zero_678 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_680 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_680 = erased
-- Data.Bool.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_682 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_682 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.assoc
d_assoc_686 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_686 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.comm
d_comm_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_688 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_690 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_690 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586 v1
-- Data.Bool.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_692 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_692 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_694 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_696 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_698 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemigroup.refl
d_refl_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_700 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_702 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_702 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.setoid
d_setoid_704 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeSemigroup.sym
d_sym_706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_706 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.trans
d_trans_708 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_708 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_710 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_712 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_712 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_714 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_714 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_718 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_720 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_720 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_722 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_724 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_724 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_726 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_726 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_730 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_730 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_732 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_732 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_734 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_736 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_736 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      v4
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_738 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_740 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_742 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_744 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.assoc
d_assoc_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_746 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.comm
d_comm_748 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_748 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_750 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_750 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_752 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_752 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_754 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_754 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identity
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
-- Data.Bool.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_758 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_758 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_760 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_760 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_762 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_766 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isMagma
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isMonoid
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_774 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.distrib
d_distrib_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_778 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_778 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_780 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_780 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_782 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_782 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      v4
-- Data.Bool.Properties._.IsCommutativeSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_786 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_788 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_790 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_794 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.refl
d_refl_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_796 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_798 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_798 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.setoid
d_setoid_800 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.sym
d_sym_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_802 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.trans
d_trans_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_804 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.zero
d_zero_806 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_806 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_808 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_808 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_810 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_810 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_814 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_816 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_818 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_820 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_820 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_822 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_822 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_824 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_826 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_826 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
      v3
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_828 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_830 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_832 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_834 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_836 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_838 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_838 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_840 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_840 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.identity
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_844 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_844 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_846 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_846 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_848 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_852 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1322
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_858 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_858 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_860 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_860 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_864 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_866 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
      (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_870 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_870 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_872 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_872 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_874 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_876 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_878 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1324
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1404
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_882 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_882 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_884 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_884 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.flex
d_flex_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_888 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0))
-- Data.Bool.Properties._.IsFlexibleMagma.isMagma
d_isMagma_892 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_892 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_332 (coe v0)
-- Data.Bool.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_894 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsFlexibleMagma.refl
d_refl_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_896 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.reflexive
d_reflexive_898 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_898 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.setoid
d_setoid_900 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsFlexibleMagma.sym
d_sym_902 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_902 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.trans
d_trans_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_904 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_906 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_906 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_908 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_908 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_910 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_324 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_910 = erased
-- Data.Bool.Properties._.IsGroup._-_
d__'45'__914 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> Bool -> Bool
d__'45'__914 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1104 v0 v2
-- Data.Bool.Properties._.IsGroup._//_
d__'47''47'__916 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> Bool -> Bool
d__'47''47'__916 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 v0 v2 v4 v5
-- Data.Bool.Properties._.IsGroup._\\_
d__'92''92'__918 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> Bool -> Bool
d__'92''92'__918 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1092 v0 v2 v4 v5
-- Data.Bool.Properties._.IsGroup.assoc
d_assoc_920 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_920 = erased
-- Data.Bool.Properties._.IsGroup.identity
d_identity_922 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_922 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Bool.Properties._.IsGroup.identityʳ
d_identity'691'_924 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_924 = erased
-- Data.Bool.Properties._.IsGroup.identityˡ
d_identity'737'_926 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_926 = erased
-- Data.Bool.Properties._.IsGroup.inverse
d_inverse_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_928 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1052 (coe v0)
-- Data.Bool.Properties._.IsGroup.inverseʳ
d_inverse'691'_930 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_930 = erased
-- Data.Bool.Properties._.IsGroup.inverseˡ
d_inverse'737'_932 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_932 = erased
-- Data.Bool.Properties._.IsGroup.isEquivalence
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
-- Data.Bool.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_936 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_936 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122 v3
-- Data.Bool.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_938 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_938 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124 v3
-- Data.Bool.Properties._.IsGroup.isMagma
d_isMagma_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)))
-- Data.Bool.Properties._.IsGroup.isMonoid
d_isMonoid_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_942 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)
-- Data.Bool.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_944 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsGroup.isSemigroup
d_isSemigroup_946 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0))
-- Data.Bool.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_948 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsGroup.refl
d_refl_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_950 = erased
-- Data.Bool.Properties._.IsGroup.reflexive
d_reflexive_952 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_952 = erased
-- Data.Bool.Properties._.IsGroup.setoid
d_setoid_954 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsGroup.sym
d_sym_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_956 = erased
-- Data.Bool.Properties._.IsGroup.trans
d_trans_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_958 = erased
-- Data.Bool.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_960 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_960 = erased
-- Data.Bool.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_962 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_962 = erased
-- Data.Bool.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_964 = erased
-- Data.Bool.Properties._.IsGroup.∙-cong
d_'8729''45'cong_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_966 = erased
-- Data.Bool.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_968 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_968 = erased
-- Data.Bool.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_970 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_970 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_974 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_974 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_976 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_978 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_978 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identity
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_982 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_982 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_984 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_984 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_986 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_988 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_988 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 v2
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_990 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_992 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0)
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_994 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_998 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_998 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 v2
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isMagma
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_1002 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1002 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_1004 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1008 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1010 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1012 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1012 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1014 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1016 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1018 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1020 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1022 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1022 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1024 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1024 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.idem
d_idem_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1028 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1032 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_256 (coe v0)
-- Data.Bool.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1034 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsIdempotentMagma.refl
d_refl_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1036 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1038 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1038 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.setoid
d_setoid_1040 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsIdempotentMagma.sym
d_sym_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1042 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.trans
d_trans_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1044 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1046 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1046 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1048 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1048 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1050 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_248 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1050 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.assoc
d_assoc_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1054 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.idem
d_idem_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1056 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.identity
d_identity_1058 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1058 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1060 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1060 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1062 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1062 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.isBand
d_isBand_1064 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_1064 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_846 v2
-- Data.Bool.Properties._.IsIdempotentMonoid.isEquivalence
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
-- Data.Bool.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1070 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0)
-- Data.Bool.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1072 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1074 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1074 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_806 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1076 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentMonoid.refl
d_refl_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1078 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1080 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1080 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.setoid
d_setoid_1082 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentMonoid.sym
d_sym_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1084 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.trans
d_trans_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1086 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1088 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1088 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1090 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1090 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1092 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1092 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1096 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1096 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1098 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1100 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1100 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1102 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1102 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1104 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1106 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1106 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1108 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1108 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1110 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1112 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1114 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.assoc
d_assoc_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1116 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.comm
d_comm_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1118 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1120 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1122 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1122 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1124 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1124 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1126 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identity
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
-- Data.Bool.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1130 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1130 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1132 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1132 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.isBand
d_isBand_1134 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1136 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1138 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1142 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1144 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'43''45'isIdempotentCommutativeMonoid_1144 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2044
      v4
-- Data.Bool.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1146 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isMagma
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isMonoid
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1154 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.distrib
d_distrib_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1158 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1158 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1160 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1160 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1164 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1166 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1168 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0)
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1172 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.refl
d_refl_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1174 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1176 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1176 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.setoid
d_setoid_1178 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.sym
d_sym_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1180 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.trans
d_trans_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1182 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.zero
d_zero_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1956 (coe v0))
-- Data.Bool.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1186 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1186 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1188 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1188 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.inverse
d_inverse_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1192 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_940 (coe v0)
-- Data.Bool.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1194 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1194 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1196 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1196 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0))
-- Data.Bool.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1200 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1200 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_938 (coe v0)
-- Data.Bool.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1202 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleMagma.refl
d_refl_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1204 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1206 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1206 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.setoid
d_setoid_1208 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleMagma.sym
d_sym_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1210 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.trans
d_trans_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1212 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1214 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1214 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1216 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1218 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1218 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1220 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1220 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1224 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_990 (coe v0)
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1226 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1226 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1228 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1228 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_940
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1232 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1232 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1234 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1234 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isEquivalence
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
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1238 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_1238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0)
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1240 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_938
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_988 (coe v0))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1242 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1244 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1244 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1028 v3
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1246 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1246 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1248 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1248 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1250 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1252 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1252 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1254 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1254 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1256 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1256 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1258 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1260 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1260 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1262 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1262 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1266 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1268 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1270 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1270 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1272 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1272 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-identity
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
-- Data.Bool.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1276 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1276 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1278 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1278 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1280 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1282 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1284 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.assoc
d_assoc_1286 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1286 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.comm
d_comm_1288 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1288 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1290 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1290 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1292 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1292 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1294 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1294 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1296 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1296 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identity
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
-- Data.Bool.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1300 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1300 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1302 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1302 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.isBand
d_isBand_1304 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1306 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1308 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1312 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1314 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1316 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isMagma
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isMonoid
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemigroup
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1324 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.distrib
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
-- Data.Bool.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1328 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1328 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1330 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1330 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.isEquivalence
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1942
d_isIdempotentSemiring_1334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
      (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1336 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1338 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1956
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2082
         (coe v0))
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1344 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.refl
d_refl_1346 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1346 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1348 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1348 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.setoid
d_setoid_1350 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2086 (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1354 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'691'_1354 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1356 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'737'_1356 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1358 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2084 (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1360 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1360 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1362 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1362 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.sym
d_sym_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1364 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.trans
d_trans_1366 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1366 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.zero
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
-- Data.Bool.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1370 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1370 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1372 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2064 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1372 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1376 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1376 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1378 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1378 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1380 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1380 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1382 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1384 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1384 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1386 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1386 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.identity
d_identity_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Bool.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1390 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1390 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1392 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1392 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.isEquivalence
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
-- Data.Bool.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1396 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)
-- Data.Bool.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1400 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1402 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0))
-- Data.Bool.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1404 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1408 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1408 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1410 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1410 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.refl
d_refl_1412 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1412 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1414 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1414 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1416 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3140 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1418 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1418 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1420 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1420 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.setoid
d_setoid_1422 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLeftBolLoop.sym
d_sym_1424 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1424 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.trans
d_trans_1426 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1426 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1428 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1430 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1430 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1432 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1432 = erased
-- Data.Bool.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1436 = erased
-- Data.Bool.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1438 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1438 = erased
-- Data.Bool.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1440 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1440 = erased
-- Data.Bool.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1442 = erased
-- Data.Bool.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1444 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1444 = erased
-- Data.Bool.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1446 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1446 = erased
-- Data.Bool.Properties._.IsLoop.identity
d_identity_1448 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1448 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3064 (coe v0)
-- Data.Bool.Properties._.IsLoop.identityʳ
d_identity'691'_1450 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1450 = erased
-- Data.Bool.Properties._.IsLoop.identityˡ
d_identity'737'_1452 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1452 = erased
-- Data.Bool.Properties._.IsLoop.isEquivalence
d_isEquivalence_1454 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2984
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)))
-- Data.Bool.Properties._.IsLoop.isMagma
d_isMagma_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Bool.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1458 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1460 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0)
-- Data.Bool.Properties._.IsLoop.leftDivides
d_leftDivides_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Bool.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1464 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1464 = erased
-- Data.Bool.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1466 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1466 = erased
-- Data.Bool.Properties._.IsLoop.refl
d_refl_1468 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1468 = erased
-- Data.Bool.Properties._.IsLoop.reflexive
d_reflexive_1470 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1470 = erased
-- Data.Bool.Properties._.IsLoop.rightDivides
d_rightDivides_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v0))
-- Data.Bool.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1474 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1474 = erased
-- Data.Bool.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1476 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1476 = erased
-- Data.Bool.Properties._.IsLoop.setoid
d_setoid_1478 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLoop.sym
d_sym_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1480 = erased
-- Data.Bool.Properties._.IsLoop.trans
d_trans_1482 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1482 = erased
-- Data.Bool.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1484 = erased
-- Data.Bool.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1486 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1486 = erased
-- Data.Bool.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1488 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1488 = erased
-- Data.Bool.Properties._.IsMagma.isEquivalence
d_isEquivalence_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1492 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Data.Bool.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1494 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsMagma.refl
d_refl_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1496 = erased
-- Data.Bool.Properties._.IsMagma.reflexive
d_reflexive_1498 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1498 = erased
-- Data.Bool.Properties._.IsMagma.setoid
d_setoid_1500 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1500 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_200 v1
-- Data.Bool.Properties._.IsMagma.sym
d_sym_1502 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1502 = erased
-- Data.Bool.Properties._.IsMagma.trans
d_trans_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1504 = erased
-- Data.Bool.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1506 = erased
-- Data.Bool.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1508 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1508 = erased
-- Data.Bool.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1510 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1510 = erased
-- Data.Bool.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1514 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0))
-- Data.Bool.Properties._.IsMedialMagma.isMagma
d_isMagma_1516 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1516 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_368 (coe v0)
-- Data.Bool.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1518 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsMedialMagma.medial
d_medial_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1520 = erased
-- Data.Bool.Properties._.IsMedialMagma.refl
d_refl_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1522 = erased
-- Data.Bool.Properties._.IsMedialMagma.reflexive
d_reflexive_1524 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1524 = erased
-- Data.Bool.Properties._.IsMedialMagma.setoid
d_setoid_1526 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsMedialMagma.sym
d_sym_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1528 = erased
-- Data.Bool.Properties._.IsMedialMagma.trans
d_trans_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1530 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1532 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1534 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1534 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1536 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_360 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1536 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1540 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1542 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1542 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1544 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1544 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1546 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1548 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1548 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1550 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1550 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.identity
d_identity_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Bool.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1554 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1554 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1556 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1556 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.isEquivalence
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
-- Data.Bool.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1560 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)
-- Data.Bool.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1564 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1566 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_1566 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0))
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1568 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1570 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1570 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1572 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1572 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1574 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.refl
d_refl_1576 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1576 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1578 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1578 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3394 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1582 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1582 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1584 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1584 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.setoid
d_setoid_1586 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMiddleBolLoop.sym
d_sym_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1588 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.trans
d_trans_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1590 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1592 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1594 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1594 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1596 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3380 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1596 = erased
-- Data.Bool.Properties._.IsMonoid.assoc
d_assoc_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1600 = erased
-- Data.Bool.Properties._.IsMonoid.identity
d_identity_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1602 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Data.Bool.Properties._.IsMonoid.identityʳ
d_identity'691'_1604 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1604 = erased
-- Data.Bool.Properties._.IsMonoid.identityˡ
d_identity'737'_1606 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1606 = erased
-- Data.Bool.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)))
-- Data.Bool.Properties._.IsMonoid.isMagma
d_isMagma_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0))
-- Data.Bool.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1612 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1614 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Data.Bool.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1616 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1616 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730 v2
-- Data.Bool.Properties._.IsMonoid.refl
d_refl_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1618 = erased
-- Data.Bool.Properties._.IsMonoid.reflexive
d_reflexive_1620 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1620 = erased
-- Data.Bool.Properties._.IsMonoid.setoid
d_setoid_1622 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMonoid.sym
d_sym_1624 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1624 = erased
-- Data.Bool.Properties._.IsMonoid.trans
d_trans_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1626 = erased
-- Data.Bool.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1628 = erased
-- Data.Bool.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1630 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1630 = erased
-- Data.Bool.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1632 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1632 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1636 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1638 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1638 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1640 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1640 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1642 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1644 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1644 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1646 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1646 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identical
d_identical_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1648 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identity
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
-- Data.Bool.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1652 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1652 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1654 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1654 = erased
-- Data.Bool.Properties._.IsMoufangLoop.isEquivalence
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
-- Data.Bool.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1658 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3126
d_isLeftBolLoop_1658 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0)
-- Data.Bool.Properties._.IsMoufangLoop.isLoop
d_isLoop_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_1660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3140
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3306 (coe v0))
-- Data.Bool.Properties._.IsMoufangLoop.isMagma
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
-- Data.Bool.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1664 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMoufangLoop.isQuasigroup
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
-- Data.Bool.Properties._.IsMoufangLoop.leftBol
d_leftBol_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1668 = erased
-- Data.Bool.Properties._.IsMoufangLoop.leftDivides
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
-- Data.Bool.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1672 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1672 = erased
-- Data.Bool.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1674 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1674 = erased
-- Data.Bool.Properties._.IsMoufangLoop.refl
d_refl_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1676 = erased
-- Data.Bool.Properties._.IsMoufangLoop.reflexive
d_reflexive_1678 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1678 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightBol
d_rightBol_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1680 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightDivides
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
-- Data.Bool.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_1684 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1684 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_1686 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1686 = erased
-- Data.Bool.Properties._.IsMoufangLoop.setoid
d_setoid_1688 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMoufangLoop.sym
d_sym_1690 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1690 = erased
-- Data.Bool.Properties._.IsMoufangLoop.trans
d_trans_1692 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1692 = erased
-- Data.Bool.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1694 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1694 = erased
-- Data.Bool.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_1696 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1696 = erased
-- Data.Bool.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_1698 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3290 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1698 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1702 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1702 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1704 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1706 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1706 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1708 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1708 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1710 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1710 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282 v3
-- Data.Bool.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1712 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1712 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284 v3
-- Data.Bool.Properties._.IsNearSemiring.assoc
d_assoc_1714 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1714 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1716 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1716 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_1718 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1718 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_1720 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1720 = erased
-- Data.Bool.Properties._.IsNearSemiring.identity
d_identity_1722 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Bool.Properties._.IsNearSemiring.identityʳ
d_identity'691'_1724 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1724 = erased
-- Data.Bool.Properties._.IsNearSemiring.identityˡ
d_identity'737'_1726 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1726 = erased
-- Data.Bool.Properties._.IsNearSemiring.isMagma
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
-- Data.Bool.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1730 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)
-- Data.Bool.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1732 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0))
-- Data.Bool.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_1734 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1736 = erased
-- Data.Bool.Properties._.IsNearSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_1740 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsNearSemiring.refl
d_refl_1742 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1742 = erased
-- Data.Bool.Properties._.IsNearSemiring.reflexive
d_reflexive_1744 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1744 = erased
-- Data.Bool.Properties._.IsNearSemiring.setoid
d_setoid_1746 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsNearSemiring.sym
d_sym_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1748 = erased
-- Data.Bool.Properties._.IsNearSemiring.trans
d_trans_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1750 = erased
-- Data.Bool.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1752 = erased
-- Data.Bool.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1756 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1756 = erased
-- Data.Bool.Properties._.IsNearring.*-cong
d_'42''45'cong_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1758 = erased
-- Data.Bool.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1760 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1760 = erased
-- Data.Bool.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1762 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1762 = erased
-- Data.Bool.Properties._.IsNearring.*-identity
d_'42''45'identity_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Bool.Properties._.IsNearring.identityʳ
d_identity'691'_1766 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1766 = erased
-- Data.Bool.Properties._.IsNearring.identityˡ
d_identity'737'_1768 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1768 = erased
-- Data.Bool.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_1770 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_1772 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_1774 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.assoc
d_assoc_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1776 = erased
-- Data.Bool.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1778 = erased
-- Data.Bool.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_1780 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1780 = erased
-- Data.Bool.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_1782 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1782 = erased
-- Data.Bool.Properties._.IsNearring.identity
d_identity_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Bool.Properties._.IsNearring.identityʳ
d_identity'691'_1786 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1786 = erased
-- Data.Bool.Properties._.IsNearring.identityˡ
d_identity'737'_1788 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1788 = erased
-- Data.Bool.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2580 (coe v0)
-- Data.Bool.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_1792 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_1792 = erased
-- Data.Bool.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_1794 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_1794 = erased
-- Data.Bool.Properties._.IsNearring.isMagma
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
-- Data.Bool.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Bool.Properties._.IsNearring.isSemigroup
d_isSemigroup_1800 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)))
-- Data.Bool.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_1802 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.distrib
d_distrib_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2230
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Bool.Properties._.IsNearring.distribʳ
d_distrib'691'_1806 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1806 = erased
-- Data.Bool.Properties._.IsNearring.distribˡ
d_distrib'737'_1808 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1808 = erased
-- Data.Bool.Properties._.IsNearring.identityʳ
d_identity'691'_1810 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1810 = erased
-- Data.Bool.Properties._.IsNearring.identityˡ
d_identity'737'_1812 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1812 = erased
-- Data.Bool.Properties._.IsNearring.isEquivalence
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
-- Data.Bool.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_1816 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.isQuasiring
d_isQuasiring_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200
d_isQuasiring_1818 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0)
-- Data.Bool.Properties._.IsNearring.refl
d_refl_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1820 = erased
-- Data.Bool.Properties._.IsNearring.reflexive
d_reflexive_1822 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1822 = erased
-- Data.Bool.Properties._.IsNearring.setoid
d_setoid_1824 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.sym
d_sym_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1826 = erased
-- Data.Bool.Properties._.IsNearring.trans
d_trans_1828 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1828 = erased
-- Data.Bool.Properties._.IsNearring.zero
d_zero_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2232
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2578 (coe v0))
-- Data.Bool.Properties._.IsNearring.zeroʳ
d_zero'691'_1832 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1832 = erased
-- Data.Bool.Properties._.IsNearring.zeroˡ
d_zero'737'_1834 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1834 = erased
-- Data.Bool.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2560 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1836 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing._//_
d__'47''47'__1840 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> Bool -> Bool
d__'47''47'__1840 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__1840 v0 v2
du__'47''47'__1840 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__1840 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1842 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1844 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1844 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1846 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1846 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2456 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_1850 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_1850 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_1852 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_1852 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_1854 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1854 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2536 v5
-- Data.Bool.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_1856 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_'42''45'isUnitalMagma_1856 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542 v5
-- Data.Bool.Properties._.IsNonAssociativeRing.assoc
d_assoc_1858 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1858 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.comm
d_comm_1860 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1860 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1862 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_1864 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1864 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_1866 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1866 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.identity
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
-- Data.Bool.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_1870 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1870 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_1872 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1872 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
      (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_1876 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_1878 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_1880 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_1882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2452
         (coe v0))
-- Data.Bool.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_1884 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1886 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isMagma
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isMonoid
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isSemigroup
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_1894 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1896 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.inverse
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
-- Data.Bool.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_1900 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1900 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_1902 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1902 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.distrib
d_distrib_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1904 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2458 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_1906 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1906 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_1908 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1908 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.isEquivalence
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_1912 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.refl
d_refl_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1914 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_1916 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1916 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.setoid
d_setoid_1918 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.sym
d_sym_1920 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1920 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.trans
d_trans_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1922 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1924 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1924 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1926 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1926 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.zero
d_zero_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1928 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2460 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_1930 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1930 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_1932 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2430 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1932 = erased
-- Data.Bool.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1936 = erased
-- Data.Bool.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_1938 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1938 = erased
-- Data.Bool.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_1940 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1940 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1942 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_1944 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1944 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_1946 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1946 = erased
-- Data.Bool.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1948 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0))
-- Data.Bool.Properties._.IsQuasigroup.isMagma
d_isMagma_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1950 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_1952 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1954 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2990 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_1956 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1956 = erased
-- Data.Bool.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_1958 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1958 = erased
-- Data.Bool.Properties._.IsQuasigroup.refl
d_refl_1960 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1960 = erased
-- Data.Bool.Properties._.IsQuasigroup.reflexive
d_reflexive_1962 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1962 = erased
-- Data.Bool.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1964 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2992 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_1966 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1966 = erased
-- Data.Bool.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_1968 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1968 = erased
-- Data.Bool.Properties._.IsQuasigroup.setoid
d_setoid_1970 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsQuasigroup.sym
d_sym_1972 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1972 = erased
-- Data.Bool.Properties._.IsQuasigroup.trans
d_trans_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1974 = erased
-- Data.Bool.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1976 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1976 = erased
-- Data.Bool.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_1978 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1978 = erased
-- Data.Bool.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_1980 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1980 = erased
-- Data.Bool.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1984 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1984 = erased
-- Data.Bool.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1986 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_1988 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1988 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_1990 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1990 = erased
-- Data.Bool.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2228 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.identityʳ
d_identity'691'_1994 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1994 = erased
-- Data.Bool.Properties._.IsQuasiring.identityˡ
d_identity'737'_1996 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1996 = erased
-- Data.Bool.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_1998 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1998 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2282 v4
-- Data.Bool.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2000 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2000 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286 v4
-- Data.Bool.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2002 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2002 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2284 v4
-- Data.Bool.Properties._.IsQuasiring.assoc
d_assoc_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2004 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2006 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2008 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2008 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2010 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2010 = erased
-- Data.Bool.Properties._.IsQuasiring.identity
d_identity_2012 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2012 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Bool.Properties._.IsQuasiring.identityʳ
d_identity'691'_2014 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2014 = erased
-- Data.Bool.Properties._.IsQuasiring.identityˡ
d_identity'737'_2016 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2016 = erased
-- Data.Bool.Properties._.IsQuasiring.isMagma
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
-- Data.Bool.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_2020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2022 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2222 (coe v0))
-- Data.Bool.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2024 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsQuasiring.distrib
d_distrib_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2026 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2230 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2028 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2028 = erased
-- Data.Bool.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2030 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2030 = erased
-- Data.Bool.Properties._.IsQuasiring.identityʳ
d_identity'691'_2032 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2032 = erased
-- Data.Bool.Properties._.IsQuasiring.identityˡ
d_identity'737'_2034 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2034 = erased
-- Data.Bool.Properties._.IsQuasiring.isEquivalence
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
-- Data.Bool.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2038 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsQuasiring.refl
d_refl_2040 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2040 = erased
-- Data.Bool.Properties._.IsQuasiring.reflexive
d_reflexive_2042 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2042 = erased
-- Data.Bool.Properties._.IsQuasiring.setoid
d_setoid_2044 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsQuasiring.sym
d_sym_2046 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2046 = erased
-- Data.Bool.Properties._.IsQuasiring.trans
d_trans_2048 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2048 = erased
-- Data.Bool.Properties._.IsQuasiring.zero
d_zero_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2050 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2232 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2052 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2052 = erased
-- Data.Bool.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2054 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2200 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2054 = erased
-- Data.Bool.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2058 = erased
-- Data.Bool.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2060 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2060 = erased
-- Data.Bool.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2062 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2062 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2064 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2066 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2066 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2068 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2068 = erased
-- Data.Bool.Properties._.IsRightBolLoop.identity
d_identity_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3064
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Bool.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2072 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2072 = erased
-- Data.Bool.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2074 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2074 = erased
-- Data.Bool.Properties._.IsRightBolLoop.isEquivalence
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
-- Data.Bool.Properties._.IsRightBolLoop.isLoop
d_isLoop_2078 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3048
d_isLoop_2078 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)
-- Data.Bool.Properties._.IsRightBolLoop.isMagma
d_isMagma_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2082 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2084 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2966
d_isQuasigroup_2084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0))
-- Data.Bool.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2088 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2088 = erased
-- Data.Bool.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2090 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2090 = erased
-- Data.Bool.Properties._.IsRightBolLoop.refl
d_refl_2092 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2092 = erased
-- Data.Bool.Properties._.IsRightBolLoop.reflexive
d_reflexive_2094 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2094 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightBol
d_rightBol_2096 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2096 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2098 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2992
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3222 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2100 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2100 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2102 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2102 = erased
-- Data.Bool.Properties._.IsRightBolLoop.setoid
d_setoid_2104 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRightBolLoop.sym
d_sym_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2106 = erased
-- Data.Bool.Properties._.IsRightBolLoop.trans
d_trans_2108 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2108 = erased
-- Data.Bool.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2110 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2110 = erased
-- Data.Bool.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2112 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2112 = erased
-- Data.Bool.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2114 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3208 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2114 = erased
-- Data.Bool.Properties._.IsRing._//_
d__'47''47'__2118 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> Bool -> Bool
d__'47''47'__2118 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2118 v0 v2
du__'47''47'__2118 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__2118 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsRing.*-assoc
d_'42''45'assoc_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2120 = erased
-- Data.Bool.Properties._.IsRing.*-cong
d_'42''45'cong_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2122 = erased
-- Data.Bool.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2124 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2124 = erased
-- Data.Bool.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2126 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2126 = erased
-- Data.Bool.Properties._.IsRing.*-identity
d_'42''45'identity_2128 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700 (coe v0)
-- Data.Bool.Properties._.IsRing.identityʳ
d_identity'691'_2130 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2130 = erased
-- Data.Bool.Properties._.IsRing.identityˡ
d_identity'737'_2132 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2132 = erased
-- Data.Bool.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2134 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2134 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2134 v0 v1 v2 v3 v5
du_'42''45'isMagma_2134 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2136 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2136 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2792 v0 v1 v2
      v3 v5
-- Data.Bool.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2138 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2138 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2138 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2138 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.assoc
d_assoc_2140 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2140 = erased
-- Data.Bool.Properties._.IsRing.comm
d_comm_2142 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2142 = erased
-- Data.Bool.Properties._.IsRing.∙-cong
d_'8729''45'cong_2144 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2144 = erased
-- Data.Bool.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2146 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2146 = erased
-- Data.Bool.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2148 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2148 = erased
-- Data.Bool.Properties._.IsRing.identity
d_identity_2150 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.identityʳ
d_identity'691'_2152 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2152 = erased
-- Data.Bool.Properties._.IsRing.identityˡ
d_identity'737'_2154 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2154 = erased
-- Data.Bool.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2156 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe v0)
-- Data.Bool.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2158 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2160 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2162 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isGroup
d_isGroup_2164 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2166 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2168 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isMagma
d_isMagma_2170 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isMonoid
d_isMonoid_2172 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isSemigroup
d_isSemigroup_2174 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2176 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2178 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2178 = erased
-- Data.Bool.Properties._.IsRing.inverse
d_inverse_2180 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.inverseʳ
d_inverse'691'_2182 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2182 = erased
-- Data.Bool.Properties._.IsRing.inverseˡ
d_inverse'737'_2184 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2184 = erased
-- Data.Bool.Properties._.IsRing.distrib
d_distrib_2186 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2186 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2702 (coe v0)
-- Data.Bool.Properties._.IsRing.distribʳ
d_distrib'691'_2188 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2188 = erased
-- Data.Bool.Properties._.IsRing.distribˡ
d_distrib'737'_2190 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2190 = erased
-- Data.Bool.Properties._.IsRing.isEquivalence
d_isEquivalence_2192 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2194 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2194 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2194 v0 v1 v2 v3 v5
du_isNearSemiring_2194 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2194 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Bool.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2196 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2198 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306
d_isRingWithoutOne_2198 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 v5
-- Data.Bool.Properties._.IsRing.isSemiring
d_isSemiring_2200 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_2200 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 v0 v1 v2 v3 v5
-- Data.Bool.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2202 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2202 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2800
      v5
-- Data.Bool.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2204 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2204 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2204 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2204 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_2204 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2802 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsRing.refl
d_refl_2206 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2206 = erased
-- Data.Bool.Properties._.IsRing.reflexive
d_reflexive_2208 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2208 = erased
-- Data.Bool.Properties._.IsRing.setoid
d_setoid_2210 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.sym
d_sym_2212 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2212 = erased
-- Data.Bool.Properties._.IsRing.trans
d_trans_2214 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2214 = erased
-- Data.Bool.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2216 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2216 = erased
-- Data.Bool.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2218 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2218 = erased
-- Data.Bool.Properties._.IsRing.zero
d_zero_2220 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2220 v0 v1 v2 v3 ~v4 v5 = du_zero_2220 v0 v1 v2 v3 v5
du_zero_2220 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2406 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2704 (coe v4))
-- Data.Bool.Properties._.IsRing.zeroʳ
d_zero'691'_2222 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2222 = erased
-- Data.Bool.Properties._.IsRing.zeroˡ
d_zero'737'_2224 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2224 = erased
-- Data.Bool.Properties._.IsRingWithoutOne._//_
d__'47''47'__2228 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> Bool -> Bool
d__'47''47'__2228 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2228 v0 v2
du__'47''47'__2228 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__2228 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2230 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2230 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2232 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2232 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2234 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2234 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2236 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2236 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2238 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2238 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1282
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2240 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1284
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsRingWithoutOne.assoc
d_assoc_2242 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2242 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.comm
d_comm_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2244 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2246 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2248 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2248 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2250 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2250 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.identity
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
-- Data.Bool.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2254 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2254 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2256 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2256 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2258 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
      (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2260 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2262 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2264 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_2266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
         (coe v0))
-- Data.Bool.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2268 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2270 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isMagma
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
-- Data.Bool.Properties._.IsRingWithoutOne.isMonoid
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
-- Data.Bool.Properties._.IsRingWithoutOne.isSemigroup
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
-- Data.Bool.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2278 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2280 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2280 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.inverse
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
-- Data.Bool.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2284 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2284 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2286 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2286 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.distrib
d_distrib_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2288 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2330 (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2290 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2290 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2292 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2292 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.isEquivalence
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
-- Data.Bool.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2296 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2296
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2408
-- Data.Bool.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2298 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.refl
d_refl_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2300 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2302 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2302 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.setoid
d_setoid_2304 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.sym
d_sym_2306 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2306 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.trans
d_trans_2308 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2308 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2310 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2310 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2312 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2312 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.zero
d_zero_2314 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2314 = coe MAlonzo.Code.Algebra.Structures.du_zero_2406
-- Data.Bool.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2316 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2316 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2318 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2318 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0))
-- Data.Bool.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2324 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2324 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2326 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSelectiveMagma.refl
d_refl_2328 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2328 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2330 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2330 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.sel
d_sel_2332 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2332 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_446 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.setoid
d_setoid_2334 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSelectiveMagma.sym
d_sym_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2336 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.trans
d_trans_2338 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2338 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2340 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2342 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2342 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2344 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2344 = erased
-- Data.Bool.Properties._.IsSemigroup.assoc
d_assoc_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2348 = erased
-- Data.Bool.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0))
-- Data.Bool.Properties._.IsSemigroup.isMagma
d_isMagma_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2352 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Data.Bool.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2354 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemigroup.refl
d_refl_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2356 = erased
-- Data.Bool.Properties._.IsSemigroup.reflexive
d_reflexive_2358 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2358 = erased
-- Data.Bool.Properties._.IsSemigroup.setoid
d_setoid_2360 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemigroup.sym
d_sym_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2362 = erased
-- Data.Bool.Properties._.IsSemigroup.trans
d_trans_2364 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2364 = erased
-- Data.Bool.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2366 = erased
-- Data.Bool.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2368 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2368 = erased
-- Data.Bool.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2370 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2370 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2374 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0))
-- Data.Bool.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2376 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2376 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_404 (coe v0)
-- Data.Bool.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2378 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemimedialMagma.refl
d_refl_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2380 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2382 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2382 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2384 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_406 (coe v0)
-- Data.Bool.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2386 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2386 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2388 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2388 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.setoid
d_setoid_2390 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemimedialMagma.sym
d_sym_2392 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2392 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.trans
d_trans_2394 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2394 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2396 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2396 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2398 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2398 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2400 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_396 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2400 = erased
-- Data.Bool.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2404 = erased
-- Data.Bool.Properties._.IsSemiring.*-cong
d_'42''45'cong_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2406 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2408 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2408 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2410 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2410 = erased
-- Data.Bool.Properties._.IsSemiring.*-identity
d_'42''45'identity_2412 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.identityʳ
d_identity'691'_2414 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2414 = erased
-- Data.Bool.Properties._.IsSemiring.identityˡ
d_identity'737'_2416 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2416 = erased
-- Data.Bool.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2418 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2420 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2422 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.assoc
d_assoc_2424 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2424 = erased
-- Data.Bool.Properties._.IsSemiring.comm
d_comm_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2426 = erased
-- Data.Bool.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2428 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2430 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2430 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2432 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2432 = erased
-- Data.Bool.Properties._.IsSemiring.identity
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
-- Data.Bool.Properties._.IsSemiring.identityʳ
d_identity'691'_2436 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2436 = erased
-- Data.Bool.Properties._.IsSemiring.identityˡ
d_identity'737'_2438 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2438 = erased
-- Data.Bool.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2440 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2444 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.isMagma
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
-- Data.Bool.Properties._.IsSemiring.isMonoid
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
-- Data.Bool.Properties._.IsSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2452 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.distrib
d_distrib_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.distribʳ
d_distrib'691'_2456 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2456 = erased
-- Data.Bool.Properties._.IsSemiring.distribˡ
d_distrib'737'_2458 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2458 = erased
-- Data.Bool.Properties._.IsSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2462 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2464 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2466 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe v0)
-- Data.Bool.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2468 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2468 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680 v4
-- Data.Bool.Properties._.IsSemiring.refl
d_refl_2470 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2470 = erased
-- Data.Bool.Properties._.IsSemiring.reflexive
d_reflexive_2472 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2472 = erased
-- Data.Bool.Properties._.IsSemiring.setoid
d_setoid_2474 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.sym
d_sym_2476 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2476 = erased
-- Data.Bool.Properties._.IsSemiring.trans
d_trans_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2478 = erased
-- Data.Bool.Properties._.IsSemiring.zero
d_zero_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2480 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1606 (coe v0)
-- Data.Bool.Properties._.IsSemiring.zeroʳ
d_zero'691'_2482 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2482 = erased
-- Data.Bool.Properties._.IsSemiring.zeroˡ
d_zero'737'_2484 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2484 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2488 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2490 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2490 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2492 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2492 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2494 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2494 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2498 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2498 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2500 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2500 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2502 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2502 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566 v4
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2504 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2504 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570 v4
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2506 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2506 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568 v4
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2508 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2510 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2510 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2512 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2512 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2514 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2514 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2516 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2516 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identity
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2520 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2520 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2522 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2522 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2524 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2526 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2528 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2532 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe v0))
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2536 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2538 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2538 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1516 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2540 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2540 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2542 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2542 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2546 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2548 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2548 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2550 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2550 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2552 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2554 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2554 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2556 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2556 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2560 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2560 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2562 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2562 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2564 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2564 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2566 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2566 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2568 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_2568 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1366 v3
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2570 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2570 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1368 v3
-- Data.Bool.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2572 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2572 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.comm
d_comm_2574 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2574 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2576 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2576 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2578 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2578 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2580 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2580 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.identity
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2584 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2584 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2586 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2586 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2588 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2590 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2592 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2594 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
         (coe v0))
-- Data.Bool.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2596 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2596 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1322 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2598 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2598 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2600 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2600 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.isEquivalence
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2604 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2604 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384 v3
-- Data.Bool.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2606 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.refl
d_refl_2608 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2608 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2610 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2610 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2612 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.sym
d_sym_2614 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2614 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.trans
d_trans_2616 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2616 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.zero
d_zero_2618 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2618 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1324 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2620 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2620 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2622 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2622 = erased
-- Data.Bool.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2626 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2626 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_156 (coe v0)
-- Data.Bool.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2628 ::
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSuccessorSet.refl
d_refl_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2630 = erased
-- Data.Bool.Properties._.IsSuccessorSet.reflexive
d_reflexive_2632 ::
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2632 = erased
-- Data.Bool.Properties._.IsSuccessorSet.setoid
d_setoid_2634 ::
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2634 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_172 v2
-- Data.Bool.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2636 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2636 = erased
-- Data.Bool.Properties._.IsSuccessorSet.sym
d_sym_2638 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2638 = erased
-- Data.Bool.Properties._.IsSuccessorSet.trans
d_trans_2640 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_146 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2640 = erased
-- Data.Bool.Properties._.IsUnitalMagma.identity
d_identity_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2644 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_654 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2646 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2646 = erased
-- Data.Bool.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2648 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2648 = erased
-- Data.Bool.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0))
-- Data.Bool.Properties._.IsUnitalMagma.isMagma
d_isMagma_2652 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2652 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_652 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2654 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsUnitalMagma.refl
d_refl_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2656 = erased
-- Data.Bool.Properties._.IsUnitalMagma.reflexive
d_reflexive_2658 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2658 = erased
-- Data.Bool.Properties._.IsUnitalMagma.setoid
d_setoid_2660 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsUnitalMagma.sym
d_sym_2662 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2662 = erased
-- Data.Bool.Properties._.IsUnitalMagma.trans
d_trans_2664 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2664 = erased
-- Data.Bool.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2666 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2666 = erased
-- Data.Bool.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2668 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2668 = erased
-- Data.Bool.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2670 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2670 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra
d_IsBooleanAlgebra_2674 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsBoundedJoinSemilattice
d_IsBoundedJoinSemilattice_2676 ::
  (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedJoinSemilattice_2676 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice
d_IsBoundedMeetSemilattice_2678 ::
  (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedMeetSemilattice_2678 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice
d_IsBoundedSemilattice_2680 :: (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedSemilattice_2680 = erased
-- Data.Bool.Properties._.IsDistributiveLattice
d_IsDistributiveLattice_2682 a0 a1 = ()
-- Data.Bool.Properties._.IsJoinSemilattice
d_IsJoinSemilattice_2684 :: (Bool -> Bool -> Bool) -> ()
d_IsJoinSemilattice_2684 = erased
-- Data.Bool.Properties._.IsLattice
d_IsLattice_2686 a0 a1 = ()
-- Data.Bool.Properties._.IsMeetSemilattice
d_IsMeetSemilattice_2688 :: (Bool -> Bool -> Bool) -> ()
d_IsMeetSemilattice_2688 = erased
-- Data.Bool.Properties._.IsSemilattice
d_IsSemilattice_2690 :: (Bool -> Bool -> Bool) -> ()
d_IsSemilattice_2690 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.absorptive
d_absorptive_2694 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2694 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3020
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
            (coe v0)))
-- Data.Bool.Properties._.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_2696 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_isDistributiveLattice_2696 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.isEquivalence
d_isEquivalence_2698 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2698 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
            (coe v0)))
-- Data.Bool.Properties._.IsBooleanAlgebra.isLattice
d_isLattice_2700 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_isLattice_2700 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.isPartialEquivalence
d_isPartialEquivalence_2702 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2702 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2702 v5
du_isPartialEquivalence_2702 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2702 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
               (coe v2))))
-- Data.Bool.Properties._.IsBooleanAlgebra.refl
d_refl_2704 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2704 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.reflexive
d_reflexive_2706 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2706 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.sym
d_sym_2708 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2708 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.trans
d_trans_2710 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2710 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.¬-cong
d_'172''45'cong_2712 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'cong_2712 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2714 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'absorbs'45''8744'_2714 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-assoc
d_'8743''45'assoc_2716 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_2716 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-comm
d_'8743''45'comm_2718 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_2718 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_2720 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_2720 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3158
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complementʳ
d_'8743''45'complement'691'_2722 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'complement'691'_2722 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complementˡ
d_'8743''45'complement'737'_2724 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'complement'737'_2724 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-cong
d_'8743''45'cong_2726 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_2726 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-congʳ
d_'8743''45'cong'691'_2728 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'691'_2728 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-congˡ
d_'8743''45'cong'737'_2730 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'737'_2730 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distrib-∨
d_'8743''45'distrib'45''8744'_2732 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_2732 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3074
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_2734 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_2734 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_2736 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_2736 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2738 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'absorbs'45''8743'_2738 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-assoc
d_'8744''45'assoc_2740 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_2740 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-comm
d_'8744''45'comm_2742 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_2742 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_2744 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_2744 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3156
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complementʳ
d_'8744''45'complement'691'_2746 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'complement'691'_2746 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complementˡ
d_'8744''45'complement'737'_2748 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'complement'737'_2748 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-cong
d_'8744''45'cong_2750 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_2750 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-congʳ
d_'8744''45'cong'691'_2752 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'691'_2752 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-congˡ
d_'8744''45'cong'737'_2754 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'737'_2754 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distrib-∧
d_'8744''45'distrib'45''8743'_2756 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_2756 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3072
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_2758 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_2758 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_2760 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_2760 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.assoc
d_assoc_2764 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2764 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.comm
d_comm_2766 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2766 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.idem
d_idem_2768 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2768 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identity
d_identity_2770 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identityʳ
d_identity'691'_2772 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2772 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identityˡ
d_identity'737'_2774 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2774 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isBand
d_isBand_2776 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_2776 ~v0 ~v1 v2 = du_isBand_2776 v2
du_isBand_2776 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_2776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isBand_598
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 (coe v0))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isEquivalence
d_isEquivalence_2778 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2778 ~v0 ~v1 v2 = du_isEquivalence_2778 v2
du_isEquivalence_2778 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2778 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isCommutativeBand
d_isCommutativeBand_2780 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_2780 ~v0 ~v1 v2 = du_isCommutativeBand_2780 v2
du_isCommutativeBand_2780 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_2780 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 (coe v0)
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isMagma
d_isMagma_2782 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2782 ~v0 ~v1 v2 = du_isMagma_2782 v2
du_isMagma_2782 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_2782 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isPartialEquivalence
d_isPartialEquivalence_2784 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2784 ~v0 ~v1 v2
  = du_isPartialEquivalence_2784 v2
du_isPartialEquivalence_2784 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2784 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isSemigroup
d_isSemigroup_2786 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2786 ~v0 ~v1 v2 = du_isSemigroup_2786 v2
du_isSemigroup_2786 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_2786 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.refl
d_refl_2788 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2788 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.reflexive
d_reflexive_2790 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2790 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.setoid
d_setoid_2792 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2792 ~v0 ~v1 v2 = du_setoid_2792 v2
du_setoid_2792 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2792 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.sym
d_sym_2794 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2794 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.trans
d_trans_2796 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2796 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-cong
d_'8729''45'cong_2798 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2798 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-congʳ
d_'8729''45'cong'691'_2800 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2800 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-congˡ
d_'8729''45'cong'737'_2802 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2802 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.assoc
d_assoc_2806 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2806 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.comm
d_comm_2808 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2808 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.idem
d_idem_2810 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2810 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identity
d_identity_2812 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identityʳ
d_identity'691'_2814 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2814 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identityˡ
d_identity'737'_2816 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2816 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isBand
d_isBand_2818 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_2818 ~v0 ~v1 v2 = du_isBand_2818 v2
du_isBand_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_2818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isBand_598
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 (coe v0))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isEquivalence
d_isEquivalence_2820 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2820 ~v0 ~v1 v2 = du_isEquivalence_2820 v2
du_isEquivalence_2820 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2820 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isMagma
d_isMagma_2822 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2822 ~v0 ~v1 v2 = du_isMagma_2822 v2
du_isMagma_2822 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_2822 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isCommutativeBand
d_isCommutativeBand_2824 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_2824 ~v0 ~v1 v2 = du_isCommutativeBand_2824 v2
du_isCommutativeBand_2824 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_2824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 (coe v0)
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isPartialEquivalence
d_isPartialEquivalence_2826 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2826 ~v0 ~v1 v2
  = du_isPartialEquivalence_2826 v2
du_isPartialEquivalence_2826 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2826 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isSemigroup
d_isSemigroup_2828 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2828 ~v0 ~v1 v2 = du_isSemigroup_2828 v2
du_isSemigroup_2828 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_2828 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.refl
d_refl_2830 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2830 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.reflexive
d_reflexive_2832 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2832 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.setoid
d_setoid_2834 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2834 ~v0 ~v1 v2 = du_setoid_2834 v2
du_setoid_2834 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2834 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.sym
d_sym_2836 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2836 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.trans
d_trans_2838 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2838 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-cong
d_'8729''45'cong_2840 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2840 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-congʳ
d_'8729''45'cong'691'_2842 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2842 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-congˡ
d_'8729''45'cong'737'_2844 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2844 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.assoc
d_assoc_2848 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2848 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.comm
d_comm_2850 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2850 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.idem
d_idem_2852 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2852 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.identity
d_identity_2854 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedSemilattice.identityʳ
d_identity'691'_2856 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2856 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.identityˡ
d_identity'737'_2858 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2858 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.isBand
d_isBand_2860 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_2860 ~v0 ~v1 v2 = du_isBand_2860 v2
du_isBand_2860 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_isBand_2860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_846
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeMagma
d_isCommutativeMagma_2862 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_2862 ~v0 ~v1 v2
  = du_isCommutativeMagma_2862 v2
du_isCommutativeMagma_2862 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_2862 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeMonoid
d_isCommutativeMonoid_2864 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeSemigroup
d_isCommutativeSemigroup_2866 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_2866 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_2866 v2
du_isCommutativeSemigroup_2866 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_2866 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isEquivalence
d_isEquivalence_2868 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2868 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.isIdempotentMonoid
d_isIdempotentMonoid_2870 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
d_isIdempotentMonoid_2870 ~v0 ~v1 v2
  = du_isIdempotentMonoid_2870 v2
du_isIdempotentMonoid_2870 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_796
du_isIdempotentMonoid_2870 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_910 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isMagma
d_isMagma_2872 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
               (coe v0))))
-- Data.Bool.Properties._.IsBoundedSemilattice.isMonoid
d_isMonoid_2874 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_2874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isPartialEquivalence
d_isPartialEquivalence_2876 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2876 ~v0 ~v1 v2
  = du_isPartialEquivalence_2876 v2
du_isPartialEquivalence_2876 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2876 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.isSemigroup
d_isSemigroup_2878 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2878 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeBand
d_isCommutativeBand_2880 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isCommutativeBand_2880 ~v0 ~v1 v2 = du_isCommutativeBand_2880 v2
du_isCommutativeBand_2880 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_isCommutativeBand_2880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_916 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isUnitalMagma
d_isUnitalMagma_2882 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2882 ~v0 ~v1 v2 = du_isUnitalMagma_2882 v2
du_isUnitalMagma_2882 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2882 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_862
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v1)))
-- Data.Bool.Properties._.IsBoundedSemilattice.refl
d_refl_2884 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2884 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.reflexive
d_reflexive_2886 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2886 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.setoid
d_setoid_2888 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2888 ~v0 ~v1 v2 = du_setoid_2888 v2
du_setoid_2888 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2888 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.sym
d_sym_2890 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2890 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.trans
d_trans_2892 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2892 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-cong
d_'8729''45'cong_2894 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2894 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-congʳ
d_'8729''45'cong'691'_2896 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2896 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-congˡ
d_'8729''45'cong'737'_2898 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2898 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.absorptive
d_absorptive_2902 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2902 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3020
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v0))
-- Data.Bool.Properties._.IsDistributiveLattice.isEquivalence
d_isEquivalence_2904 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2904 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v0))
-- Data.Bool.Properties._.IsDistributiveLattice.isLattice
d_isLattice_2906 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_isLattice_2906 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.isPartialEquivalence
d_isPartialEquivalence_2908 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2908 ~v0 ~v1 v2
  = du_isPartialEquivalence_2908 v2
du_isPartialEquivalence_2908 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2908 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
            (coe v1)))
-- Data.Bool.Properties._.IsDistributiveLattice.refl
d_refl_2910 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2910 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.reflexive
d_reflexive_2912 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2912 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.sym
d_sym_2914 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2914 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.trans
d_trans_2916 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2916 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2918 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'absorbs'45''8744'_2918 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-assoc
d_'8743''45'assoc_2920 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_2920 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-comm
d_'8743''45'comm_2922 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_2922 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-cong
d_'8743''45'cong_2924 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_2924 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-congʳ
d_'8743''45'cong'691'_2926 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'691'_2926 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-congˡ
d_'8743''45'cong'737'_2928 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'737'_2928 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_2930 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_2930 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3074
      (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_2932 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_2932 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_2934 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_2934 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2936 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'absorbs'45''8743'_2936 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-assoc
d_'8744''45'assoc_2938 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_2938 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-comm
d_'8744''45'comm_2940 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_2940 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-cong
d_'8744''45'cong_2942 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_2942 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-congʳ
d_'8744''45'cong'691'_2944 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'691'_2944 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-congˡ
d_'8744''45'cong'737'_2946 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'737'_2946 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_2948 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_2948 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3072
      (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_2950 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_2950 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_2952 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_2952 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.assoc
d_assoc_2956 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2956 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.comm
d_comm_2958 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2958 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.idem
d_idem_2960 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2960 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.isBand
d_isBand_2962 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_2962 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Bool.Properties._.IsJoinSemilattice.isEquivalence
d_isEquivalence_2964 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2964 ~v0 v1 = du_isEquivalence_2964 v1
du_isEquivalence_2964 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Data.Bool.Properties._.IsJoinSemilattice.isMagma
d_isMagma_2966 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2966 ~v0 v1 = du_isMagma_2966 v1
du_isMagma_2966 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_2966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Bool.Properties._.IsJoinSemilattice.isPartialEquivalence
d_isPartialEquivalence_2968 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2968 ~v0 v1
  = du_isPartialEquivalence_2968 v1
du_isPartialEquivalence_2968 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2968 v0
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
-- Data.Bool.Properties._.IsJoinSemilattice.isSemigroup
d_isSemigroup_2970 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2970 ~v0 v1 = du_isSemigroup_2970 v1
du_isSemigroup_2970 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_2970 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Bool.Properties._.IsJoinSemilattice.refl
d_refl_2972 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2972 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.reflexive
d_reflexive_2974 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2974 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.setoid
d_setoid_2976 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2976 ~v0 v1 = du_setoid_2976 v1
du_setoid_2976 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2976 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Bool.Properties._.IsJoinSemilattice.sym
d_sym_2978 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2978 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.trans
d_trans_2980 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2980 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.∙-cong
d_'8729''45'cong_2982 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2982 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.∙-congʳ
d_'8729''45'cong'691'_2984 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2984 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.∙-congˡ
d_'8729''45'cong'737'_2986 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2986 = erased
-- Data.Bool.Properties._.IsLattice.absorptive
d_absorptive_2990 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2990 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3020 (coe v0)
-- Data.Bool.Properties._.IsLattice.isEquivalence
d_isEquivalence_2992 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2992 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
      (coe v0)
-- Data.Bool.Properties._.IsLattice.isPartialEquivalence
d_isPartialEquivalence_2994 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2994 ~v0 ~v1 v2
  = du_isPartialEquivalence_2994 v2
du_isPartialEquivalence_2994 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2994 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
         (coe v0))
-- Data.Bool.Properties._.IsLattice.refl
d_refl_2996 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2996 = erased
-- Data.Bool.Properties._.IsLattice.reflexive
d_reflexive_2998 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2998 = erased
-- Data.Bool.Properties._.IsLattice.sym
d_sym_3000 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3000 = erased
-- Data.Bool.Properties._.IsLattice.trans
d_trans_3002 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3002 = erased
-- Data.Bool.Properties._.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_3004 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'absorbs'45''8744'_3004 = erased
-- Data.Bool.Properties._.IsLattice.∧-assoc
d_'8743''45'assoc_3006 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3006 = erased
-- Data.Bool.Properties._.IsLattice.∧-comm
d_'8743''45'comm_3008 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3008 = erased
-- Data.Bool.Properties._.IsLattice.∧-cong
d_'8743''45'cong_3010 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_3010 = erased
-- Data.Bool.Properties._.IsLattice.∧-congʳ
d_'8743''45'cong'691'_3012 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'691'_3012 = erased
-- Data.Bool.Properties._.IsLattice.∧-congˡ
d_'8743''45'cong'737'_3014 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'737'_3014 = erased
-- Data.Bool.Properties._.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_3016 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'absorbs'45''8743'_3016 = erased
-- Data.Bool.Properties._.IsLattice.∨-assoc
d_'8744''45'assoc_3018 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3018 = erased
-- Data.Bool.Properties._.IsLattice.∨-comm
d_'8744''45'comm_3020 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3020 = erased
-- Data.Bool.Properties._.IsLattice.∨-cong
d_'8744''45'cong_3022 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_3022 = erased
-- Data.Bool.Properties._.IsLattice.∨-congʳ
d_'8744''45'cong'691'_3024 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'691'_3024 = erased
-- Data.Bool.Properties._.IsLattice.∨-congˡ
d_'8744''45'cong'737'_3026 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'737'_3026 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.assoc
d_assoc_3030 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3030 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.comm
d_comm_3032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3032 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.idem
d_idem_3034 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3034 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.isBand
d_isBand_3036 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_3036 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Bool.Properties._.IsMeetSemilattice.isEquivalence
d_isEquivalence_3038 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3038 ~v0 v1 = du_isEquivalence_3038 v1
du_isEquivalence_3038 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_3038 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Data.Bool.Properties._.IsMeetSemilattice.isMagma
d_isMagma_3040 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_3040 ~v0 v1 = du_isMagma_3040 v1
du_isMagma_3040 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_3040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Bool.Properties._.IsMeetSemilattice.isPartialEquivalence
d_isPartialEquivalence_3042 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3042 ~v0 v1
  = du_isPartialEquivalence_3042 v1
du_isPartialEquivalence_3042 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3042 v0
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
-- Data.Bool.Properties._.IsMeetSemilattice.isSemigroup
d_isSemigroup_3044 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_3044 ~v0 v1 = du_isSemigroup_3044 v1
du_isSemigroup_3044 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_3044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Bool.Properties._.IsMeetSemilattice.refl
d_refl_3046 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3046 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.reflexive
d_reflexive_3048 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3048 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.setoid
d_setoid_3050 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3050 ~v0 v1 = du_setoid_3050 v1
du_setoid_3050 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3050 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Bool.Properties._.IsMeetSemilattice.sym
d_sym_3052 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3052 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.trans
d_trans_3054 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3054 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.∙-cong
d_'8729''45'cong_3056 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3056 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.∙-congʳ
d_'8729''45'cong'691'_3058 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3058 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.∙-congˡ
d_'8729''45'cong'737'_3060 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3060 = erased
-- Data.Bool.Properties._.IsSemilattice.assoc
d_assoc_3064 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3064 = erased
-- Data.Bool.Properties._.IsSemilattice.comm
d_comm_3066 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3066 = erased
-- Data.Bool.Properties._.IsSemilattice.idem
d_idem_3068 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3068 = erased
-- Data.Bool.Properties._.IsSemilattice.isBand
d_isBand_3070 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_3070 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)
-- Data.Bool.Properties._.IsSemilattice.isEquivalence
d_isEquivalence_3072 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3072 ~v0 v1 = du_isEquivalence_3072 v1
du_isEquivalence_3072 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_3072 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Data.Bool.Properties._.IsSemilattice.isMagma
d_isMagma_3074 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_3074 ~v0 v1 = du_isMagma_3074 v1
du_isMagma_3074 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_3074 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Data.Bool.Properties._.IsSemilattice.isPartialEquivalence
d_isPartialEquivalence_3076 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3076 ~v0 v1
  = du_isPartialEquivalence_3076 v1
du_isPartialEquivalence_3076 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3076 v0
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
-- Data.Bool.Properties._.IsSemilattice.isSemigroup
d_isSemigroup_3078 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_3078 ~v0 v1 = du_isSemigroup_3078 v1
du_isSemigroup_3078 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_3078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Data.Bool.Properties._.IsSemilattice.refl
d_refl_3080 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3080 = erased
-- Data.Bool.Properties._.IsSemilattice.reflexive
d_reflexive_3082 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3082 = erased
-- Data.Bool.Properties._.IsSemilattice.setoid
d_setoid_3084 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3084 ~v0 v1 = du_setoid_3084 v1
du_setoid_3084 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3084 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Data.Bool.Properties._.IsSemilattice.sym
d_sym_3086 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3086 = erased
-- Data.Bool.Properties._.IsSemilattice.trans
d_trans_3088 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3088 = erased
-- Data.Bool.Properties._.IsSemilattice.∙-cong
d_'8729''45'cong_3090 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3090 = erased
-- Data.Bool.Properties._.IsSemilattice.∙-congʳ
d_'8729''45'cong'691'_3092 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3092 = erased
-- Data.Bool.Properties._.IsSemilattice.∙-congˡ
d_'8729''45'cong'737'_3094 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3094 = erased
-- Data.Bool.Properties._≟_
d__'8799'__3104 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__3104 v0 v1
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
d_'8801''45'setoid_3106 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_3106
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Bool.Properties.≡-decSetoid
d_'8801''45'decSetoid_3108 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
d_'8801''45'decSetoid_3108
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__3104)
-- Data.Bool.Properties.≤-reflexive
d_'8804''45'reflexive_3110 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'reflexive_3110 ~v0 ~v1 ~v2
  = du_'8804''45'reflexive_3110
du_'8804''45'reflexive_3110 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'reflexive_3110
  = coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-refl
d_'8804''45'refl_3112 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'refl_3112 ~v0 = du_'8804''45'refl_3112
du_'8804''45'refl_3112 :: MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'refl_3112 = coe du_'8804''45'reflexive_3110
-- Data.Bool.Properties.≤-trans
d_'8804''45'trans_3114 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'trans_3114 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_3114 v3 v4
du_'8804''45'trans_3114 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'trans_3114 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
        -> coe seq (coe v1) (coe v0)
      MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Bool.Properties.≤-antisym
d_'8804''45'antisym_3118 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3118 = erased
-- Data.Bool.Properties.≤-minimum
d_'8804''45'minimum_3120 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'minimum_3120 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
      else coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-maximum
d_'8804''45'maximum_3122 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'maximum_3122 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
      else coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
-- Data.Bool.Properties.≤-total
d_'8804''45'total_3124 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3124 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe d_'8804''45'maximum_3122 (coe v1))
      else coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe d_'8804''45'minimum_3120 (coe v1))
-- Data.Bool.Properties._≤?_
d__'8804''63'__3130 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3130 v0 v1
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
                (coe d_'8804''45'minimum_3120 (coe v1)))
-- Data.Bool.Properties.≤-irrelevant
d_'8804''45'irrelevant_3134 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3134 = erased
-- Data.Bool.Properties.≤-isPreorder
d_'8804''45'isPreorder_3136 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_3136
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3110)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_3114 v3 v4)
-- Data.Bool.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3138 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_'8804''45'isPartialOrder_3138
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_11935
      (coe d_'8804''45'isPreorder_3136) erased
-- Data.Bool.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3140 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_'8804''45'isTotalOrder_3140
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_22821
      (coe d_'8804''45'isPartialOrder_3138) (coe d_'8804''45'total_3124)
-- Data.Bool.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3142 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_'8804''45'isDecTotalOrder_3142
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_24961
      (coe d_'8804''45'isTotalOrder_3140) (coe d__'8799'__3104)
      (coe d__'8804''63'__3130)
-- Data.Bool.Properties.≤-poset
d_'8804''45'poset_3144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_'8804''45'poset_3144
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_9149
      d_'8804''45'isPartialOrder_3138
-- Data.Bool.Properties.≤-preorder
d_'8804''45'preorder_3146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_'8804''45'preorder_3146
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2331
      d_'8804''45'isPreorder_3136
-- Data.Bool.Properties.≤-totalOrder
d_'8804''45'totalOrder_3148 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_'8804''45'totalOrder_3148
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_18801
      d_'8804''45'isTotalOrder_3140
-- Data.Bool.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_'8804''45'decTotalOrder_3150
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      d_'8804''45'isDecTotalOrder_3142
-- Data.Bool.Properties.<-irrefl
d_'60''45'irrefl_3152 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3152 = erased
-- Data.Bool.Properties.<-asym
d_'60''45'asym_3154 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3154 = erased
-- Data.Bool.Properties.<-trans
d_'60''45'trans_3156 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans_3156 = erased
-- Data.Bool.Properties.<-transʳ
d_'60''45'trans'691'_3158 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'691'_3158 = erased
-- Data.Bool.Properties.<-transˡ
d_'60''45'trans'737'_3160 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'737'_3160 = erased
-- Data.Bool.Properties.<-cmp
d_'60''45'cmp_3162 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3162 v0 v1
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
d__'60''63'__3164 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3164 v0 v1
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
d_'60''45'resp'8322''45''8801'_3166 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_3166
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Bool.Properties.<-irrelevant
d_'60''45'irrelevant_3172 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3172 = erased
-- Data.Bool.Properties.<-wellFounded
d_'60''45'wellFounded_3174 ::
  Bool -> MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'60''45'wellFounded_3174 = erased
-- Data.Bool.Properties._.<-acc
d_'60''45'acc_3184 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'60''45'acc_3184 = erased
-- Data.Bool.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3186 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_'60''45'isStrictPartialOrder_3186
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_16311
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased d_'60''45'resp'8322''45''8801'_3166
-- Data.Bool.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3188 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_'60''45'isStrictTotalOrder_3188
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_27253
      (coe d_'60''45'isStrictPartialOrder_3186) (coe d_'60''45'cmp_3162)
-- Data.Bool.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
d_'60''45'strictPartialOrder_3190
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_14243
      d_'60''45'isStrictPartialOrder_3186
-- Data.Bool.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
d_'60''45'strictTotalOrder_3192
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_24345
      d_'60''45'isStrictTotalOrder_3188
-- Data.Bool.Properties.∨-assoc
d_'8744''45'assoc_3194 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3194 = erased
-- Data.Bool.Properties.∨-comm
d_'8744''45'comm_3204 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3204 = erased
-- Data.Bool.Properties.∨-identityˡ
d_'8744''45'identity'737'_3206 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'737'_3206 = erased
-- Data.Bool.Properties.∨-identityʳ
d_'8744''45'identity'691'_3208 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'691'_3208 = erased
-- Data.Bool.Properties.∨-identity
d_'8744''45'identity_3210 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_3210
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-zeroˡ
d_'8744''45'zero'737'_3212 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'737'_3212 = erased
-- Data.Bool.Properties.∨-zeroʳ
d_'8744''45'zero'691'_3214 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'691'_3214 = erased
-- Data.Bool.Properties.∨-zero
d_'8744''45'zero_3216 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_3216
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-inverseˡ
d_'8744''45'inverse'737'_3218 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'737'_3218 = erased
-- Data.Bool.Properties.∨-inverseʳ
d_'8744''45'inverse'691'_3220 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'691'_3220 = erased
-- Data.Bool.Properties.∨-inverse
d_'8744''45'inverse_3224 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'inverse_3224
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-idem
d_'8744''45'idem_3226 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'idem_3226 = erased
-- Data.Bool.Properties.∨-sel
d_'8744''45'sel_3228 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8744''45'sel_3228 v0 ~v1 = du_'8744''45'sel_3228 v0
du_'8744''45'sel_3228 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8744''45'sel_3228 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Bool.Properties.∨-conicalˡ
d_'8744''45'conical'737'_3234 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'conical'737'_3234 = erased
-- Data.Bool.Properties.∨-conicalʳ
d_'8744''45'conical'691'_3236 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'conical'691'_3236 = erased
-- Data.Bool.Properties.∨-conical
d_'8744''45'conical_3238 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'conical_3238
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-isMagma
d_'8744''45'isMagma_3240 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8744''45'isMagma_3240
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Bool.Properties.∨-magma
d_'8744''45'magma_3242 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8744''45'magma_3242
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isMagma_3240
-- Data.Bool.Properties.∨-isSemigroup
d_'8744''45'isSemigroup_3244 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8744''45'isSemigroup_3244
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'8744''45'isMagma_3240) erased
-- Data.Bool.Properties.∨-semigroup
d_'8744''45'semigroup_3246 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8744''45'semigroup_3246
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemigroup_3244
-- Data.Bool.Properties.∨-isBand
d_'8744''45'isBand_3248 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8744''45'isBand_3248
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_11205
      (coe d_'8744''45'isSemigroup_3244) erased
-- Data.Bool.Properties.∨-band
d_'8744''45'band_3250 :: MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8744''45'band_3250
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_10925
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isBand_3248
-- Data.Bool.Properties.∨-isSemilattice
d_'8744''45'isSemilattice_3252 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8744''45'isSemilattice_3252
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeBand'46'constructor_13109
      (coe d_'8744''45'isBand_3248) erased
-- Data.Bool.Properties.∨-semilattice
d_'8744''45'semilattice_3254 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3254
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Semilattice'46'constructor_193
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemilattice_3252
-- Data.Bool.Properties.∨-isMonoid
d_'8744''45'isMonoid_3256 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8744''45'isMonoid_3256
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'8744''45'isSemigroup_3244) (coe d_'8744''45'identity_3210)
-- Data.Bool.Properties.∨-isCommutativeMonoid
d_'8744''45'isCommutativeMonoid_3258 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'8744''45'isCommutativeMonoid_3258
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'8744''45'isMonoid_3256) erased
-- Data.Bool.Properties.∨-commutativeMonoid
d_'8744''45'commutativeMonoid_3260 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'8744''45'commutativeMonoid_3260
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isCommutativeMonoid_3258
-- Data.Bool.Properties.∨-isIdempotentCommutativeMonoid
d_'8744''45'isIdempotentCommutativeMonoid_3262 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'8744''45'isIdempotentCommutativeMonoid_3262
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_20685
      (coe d_'8744''45'isCommutativeMonoid_3258) erased
-- Data.Bool.Properties.∨-idempotentCommutativeMonoid
d_'8744''45'idempotentCommutativeMonoid_3264 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152
d_'8744''45'idempotentCommutativeMonoid_3264
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_21543
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isIdempotentCommutativeMonoid_3262
-- Data.Bool.Properties.∧-assoc
d_'8743''45'assoc_3266 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3266 = erased
-- Data.Bool.Properties.∧-comm
d_'8743''45'comm_3276 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3276 = erased
-- Data.Bool.Properties.∧-identityˡ
d_'8743''45'identity'737'_3278 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'737'_3278 = erased
-- Data.Bool.Properties.∧-identityʳ
d_'8743''45'identity'691'_3280 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'691'_3280 = erased
-- Data.Bool.Properties.∧-identity
d_'8743''45'identity_3282 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_3282
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-zeroˡ
d_'8743''45'zero'737'_3284 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'737'_3284 = erased
-- Data.Bool.Properties.∧-zeroʳ
d_'8743''45'zero'691'_3286 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'691'_3286 = erased
-- Data.Bool.Properties.∧-zero
d_'8743''45'zero_3288 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_3288
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-inverseˡ
d_'8743''45'inverse'737'_3290 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'737'_3290 = erased
-- Data.Bool.Properties.∧-inverseʳ
d_'8743''45'inverse'691'_3292 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'691'_3292 = erased
-- Data.Bool.Properties.∧-inverse
d_'8743''45'inverse_3296 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'inverse_3296
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-idem
d_'8743''45'idem_3298 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'idem_3298 = erased
-- Data.Bool.Properties.∧-sel
d_'8743''45'sel_3300 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8743''45'sel_3300 v0 ~v1 = du_'8743''45'sel_3300 v0
du_'8743''45'sel_3300 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8743''45'sel_3300 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
-- Data.Bool.Properties.∧-conicalˡ
d_'8743''45'conical'737'_3306 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'conical'737'_3306 = erased
-- Data.Bool.Properties.∧-conicalʳ
d_'8743''45'conical'691'_3308 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'conical'691'_3308 = erased
-- Data.Bool.Properties.∧-conical
d_'8743''45'conical_3310 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'conical_3310
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3312 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_3312 = erased
-- Data.Bool.Properties.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3322 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_3322 = erased
-- Data.Bool.Properties.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3330 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3330
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3332 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_3332 = erased
-- Data.Bool.Properties.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3342 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_3342 = erased
-- Data.Bool.Properties.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3350 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3350
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-abs-∨
d_'8743''45'abs'45''8744'_3352 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'abs'45''8744'_3352 = erased
-- Data.Bool.Properties.∨-abs-∧
d_'8744''45'abs'45''8743'_3358 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'abs'45''8743'_3358 = erased
-- Data.Bool.Properties.∨-∧-absorptive
d_'8744''45''8743''45'absorptive_3364 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'absorptive_3364
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-isMagma
d_'8743''45'isMagma_3366 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8743''45'isMagma_3366
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Bool.Properties.∧-magma
d_'8743''45'magma_3368 :: MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8743''45'magma_3368
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isMagma_3366
-- Data.Bool.Properties.∧-isSemigroup
d_'8743''45'isSemigroup_3370 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8743''45'isSemigroup_3370
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe d_'8743''45'isMagma_3366) erased
-- Data.Bool.Properties.∧-semigroup
d_'8743''45'semigroup_3372 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8743''45'semigroup_3372
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemigroup_3370
-- Data.Bool.Properties.∧-isBand
d_'8743''45'isBand_3374 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8743''45'isBand_3374
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_11205
      (coe d_'8743''45'isSemigroup_3370) erased
-- Data.Bool.Properties.∧-band
d_'8743''45'band_3376 :: MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8743''45'band_3376
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_10925
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isBand_3374
-- Data.Bool.Properties.∧-isSemilattice
d_'8743''45'isSemilattice_3378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8743''45'isSemilattice_3378
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeBand'46'constructor_13109
      (coe d_'8743''45'isBand_3374) erased
-- Data.Bool.Properties.∧-semilattice
d_'8743''45'semilattice_3380 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3380
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Semilattice'46'constructor_193
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemilattice_3378
-- Data.Bool.Properties.∧-isMonoid
d_'8743''45'isMonoid_3382 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8743''45'isMonoid_3382
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe d_'8743''45'isSemigroup_3370) (coe d_'8743''45'identity_3282)
-- Data.Bool.Properties.∧-isCommutativeMonoid
d_'8743''45'isCommutativeMonoid_3384 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'8743''45'isCommutativeMonoid_3384
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe d_'8743''45'isMonoid_3382) erased
-- Data.Bool.Properties.∧-commutativeMonoid
d_'8743''45'commutativeMonoid_3386 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'8743''45'commutativeMonoid_3386
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isCommutativeMonoid_3384
-- Data.Bool.Properties.∧-isIdempotentCommutativeMonoid
d_'8743''45'isIdempotentCommutativeMonoid_3388 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_852
d_'8743''45'isIdempotentCommutativeMonoid_3388
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_20685
      (coe d_'8743''45'isCommutativeMonoid_3384) erased
-- Data.Bool.Properties.∧-idempotentCommutativeMonoid
d_'8743''45'idempotentCommutativeMonoid_3390 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152
d_'8743''45'idempotentCommutativeMonoid_3390
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_21543
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isIdempotentCommutativeMonoid_3388
-- Data.Bool.Properties.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_3392 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'8744''45''8743''45'isSemiring_3392
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe d_'8744''45'isCommutativeMonoid_3258) erased erased
         (coe d_'8743''45'identity_3282)
         (coe d_'8743''45'distrib'45''8744'_3330))
      (coe d_'8743''45'zero_3288)
-- Data.Bool.Properties.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_3394 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'8744''45''8743''45'isCommutativeSemiring_3394
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe d_'8744''45''8743''45'isSemiring_3392) erased
-- Data.Bool.Properties.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_3396 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'8744''45''8743''45'commutativeSemiring_3396
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8744''45''8743''45'isCommutativeSemiring_3394
-- Data.Bool.Properties.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_3398 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'8743''45''8744''45'isSemiring_3398
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe d_'8743''45'isCommutativeMonoid_3384) erased erased
         (coe d_'8744''45'identity_3210)
         (coe d_'8744''45'distrib'45''8743'_3350))
      (coe d_'8744''45'zero_3216)
-- Data.Bool.Properties.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_3400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'8743''45''8744''45'isCommutativeSemiring_3400
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe d_'8743''45''8744''45'isSemiring_3398) erased
-- Data.Bool.Properties.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_3402 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'8743''45''8744''45'commutativeSemiring_3402
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8743''45''8744''45'isCommutativeSemiring_3400
-- Data.Bool.Properties.∨-∧-isLattice
d_'8744''45''8743''45'isLattice_3404 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8744''45''8743''45'isLattice_3404
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_36909
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased erased erased erased erased erased
      (coe d_'8744''45''8743''45'absorptive_3364)
-- Data.Bool.Properties.∨-∧-lattice
d_'8744''45''8743''45'lattice_3406 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8744''45''8743''45'lattice_3406
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Lattice'46'constructor_7925
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isLattice_3404
-- Data.Bool.Properties.∨-∧-isDistributiveLattice
d_'8744''45''8743''45'isDistributiveLattice_3408 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8744''45''8743''45'isDistributiveLattice_3408
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_41059
      (coe d_'8744''45''8743''45'isLattice_3404)
      (coe d_'8744''45'distrib'45''8743'_3350)
      (coe d_'8743''45'distrib'45''8744'_3330)
-- Data.Bool.Properties.∨-∧-distributiveLattice
d_'8744''45''8743''45'distributiveLattice_3410 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8744''45''8743''45'distributiveLattice_3410
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_DistributiveLattice'46'constructor_9515
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isDistributiveLattice_3408
-- Data.Bool.Properties.∨-∧-isBooleanAlgebra
d_'8744''45''8743''45'isBooleanAlgebra_3412 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134
d_'8744''45''8743''45'isBooleanAlgebra_3412
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsBooleanAlgebra'46'constructor_44131
      (coe d_'8744''45''8743''45'isDistributiveLattice_3408)
      (coe d_'8744''45'inverse_3224) (coe d_'8743''45'inverse_3296)
      erased
-- Data.Bool.Properties.∨-∧-booleanAlgebra
d_'8744''45''8743''45'booleanAlgebra_3414 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682
d_'8744''45''8743''45'booleanAlgebra_3414
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_BooleanAlgebra'46'constructor_11509
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d_not_22
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45''8743''45'isBooleanAlgebra_3412
-- Data.Bool.Properties.not-involutive
d_not'45'involutive_3416 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'involutive_3416 = erased
-- Data.Bool.Properties.not-injective
d_not'45'injective_3422 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'injective_3422 = erased
-- Data.Bool.Properties.not-¬
d_not'45''172'_3432 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_not'45''172'_3432 = erased
-- Data.Bool.Properties.¬-not
d_'172''45'not_3438 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'not_3438 = erased
-- Data.Bool.Properties.xor-is-ok
d_xor'45'is'45'ok_3448 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'is'45'ok_3448 = erased
-- Data.Bool.Properties.true-xor
d_true'45'xor_3456 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_true'45'xor_3456 = erased
-- Data.Bool.Properties.xor-same
d_xor'45'same_3460 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'same_3460 = erased
-- Data.Bool.Properties.not-distribˡ-xor
d_not'45'distrib'737''45'xor_3466 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'distrib'737''45'xor_3466 = erased
-- Data.Bool.Properties.not-distribʳ-xor
d_not'45'distrib'691''45'xor_3476 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'distrib'691''45'xor_3476 = erased
-- Data.Bool.Properties.xor-assoc
d_xor'45'assoc_3482 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'assoc_3482 = erased
-- Data.Bool.Properties.xor-comm
d_xor'45'comm_3492 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'comm_3492 = erased
-- Data.Bool.Properties.xor-identityˡ
d_xor'45'identity'737'_3494 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'identity'737'_3494 = erased
-- Data.Bool.Properties.xor-identityʳ
d_xor'45'identity'691'_3496 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'identity'691'_3496 = erased
-- Data.Bool.Properties.xor-identity
d_xor'45'identity_3498 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_xor'45'identity_3498
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.xor-inverseˡ
d_xor'45'inverse'737'_3500 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'inverse'737'_3500 = erased
-- Data.Bool.Properties.xor-inverseʳ
d_xor'45'inverse'691'_3502 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'inverse'691'_3502 = erased
-- Data.Bool.Properties.xor-inverse
d_xor'45'inverse_3506 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_xor'45'inverse_3506
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-distribˡ-xor
d_'8743''45'distrib'737''45'xor_3508 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45'xor_3508 = erased
-- Data.Bool.Properties.∧-distribʳ-xor
d_'8743''45'distrib'691''45'xor_3518 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45'xor_3518 = erased
-- Data.Bool.Properties.∧-distrib-xor
d_'8743''45'distrib'45'xor_3528 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45'xor_3528
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.xor-annihilates-not
d_xor'45'annihilates'45'not_3534 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'annihilates'45'not_3534 = erased
-- Data.Bool.Properties.xor-∧-commutativeRing
d_xor'45''8743''45'commutativeRing_3540 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
d_xor'45''8743''45'commutativeRing_3540
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.BooleanAlgebra.du_'8853''45''8743''45'commutativeRing_3728
      (coe d_'8744''45''8743''45'booleanAlgebra_3414)
      (coe MAlonzo.Code.Data.Bool.Base.d__xor__36) erased
-- Data.Bool.Properties.if-float
d_if'45'float_3814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'float_3814 = erased
-- Data.Bool.Properties.T-≡
d_T'45''8801'_3818 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_T'45''8801'_3818 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v2 -> v1)))
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased erased
-- Data.Bool.Properties.T-not-≡
d_T'45'not'45''8801'_3822 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_T'45'not'45''8801'_3822 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased erased
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v2 -> v1)))
-- Data.Bool.Properties.T-∧
d_T'45''8743'_3828 ::
  Bool -> Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_T'45''8743'_3828 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                    (let v2
                           = coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                     coe (coe (\ v3 -> v2)))
                    (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                     coe (coe (\ v3 -> v2)))
             else coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                    (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
             (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Data.Bool.Properties.T-∨
d_T'45''8744'_3834 ::
  Bool -> Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_T'45''8744'_3834 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
             (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
             (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v3 -> v2)))
      else (if coe v1
              then coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                     (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                      coe (coe (\ v3 -> v2)))
              else coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                     (coe
                        MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52 (coe (\ v2 -> v2))
                        (coe (\ v2 -> v2))))
-- Data.Bool.Properties.T-irrelevant
d_T'45'irrelevant_3836 ::
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_T'45'irrelevant_3836 = erased
-- Data.Bool.Properties.T?-diag
d_T'63''45'diag_3840 :: Bool -> AgdaAny -> AgdaAny
d_T'63''45'diag_3840 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_fromWitness_140
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
            (coe v0)))
-- Data.Bool.Properties.⇔→≡
d_'8660''8594''8801'_3850 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8660''8594''8801'_3850 = erased
-- Data.Bool.Properties.push-function-into-if
d_push'45'function'45'into'45'if_3864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_push'45'function'45'into'45'if_3864 = erased
