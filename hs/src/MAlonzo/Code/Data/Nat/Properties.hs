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
-- Data.Nat.Properties._.Central
d_Central_32 :: (Integer -> Integer -> Integer) -> Integer -> ()
d_Central_32 = erased
-- Data.Nat.Properties._.Commutative
d_Commutative_34 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_34 = erased
-- Data.Nat.Properties._.Congruent₁
d_Congruent'8321'_36 :: (Integer -> Integer) -> ()
d_Congruent'8321'_36 = erased
-- Data.Nat.Properties._.Congruent₂
d_Congruent'8322'_38 :: (Integer -> Integer -> Integer) -> ()
d_Congruent'8322'_38 = erased
-- Data.Nat.Properties._.Conical
d_Conical_40 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Conical_40 = erased
-- Data.Nat.Properties._.Flexible
d_Flexible_42 :: (Integer -> Integer -> Integer) -> ()
d_Flexible_42 = erased
-- Data.Nat.Properties._.Idempotent
d_Idempotent_44 :: (Integer -> Integer -> Integer) -> ()
d_Idempotent_44 = erased
-- Data.Nat.Properties._.IdempotentFun
d_IdempotentFun_46 :: (Integer -> Integer) -> ()
d_IdempotentFun_46 = erased
-- Data.Nat.Properties._.Identical
d_Identical_48 :: (Integer -> Integer -> Integer) -> ()
d_Identical_48 = erased
-- Data.Nat.Properties._.Identity
d_Identity_50 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_50 = erased
-- Data.Nat.Properties._.Interchangable
d_Interchangable_52 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Interchangable_52 = erased
-- Data.Nat.Properties._.Inverse
d_Inverse_54 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_54 = erased
-- Data.Nat.Properties._.Invertible
d_Invertible_56 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_Invertible_56 = erased
-- Data.Nat.Properties._.Involutive
d_Involutive_58 :: (Integer -> Integer) -> ()
d_Involutive_58 = erased
-- Data.Nat.Properties._.LeftAlternative
d_LeftAlternative_60 :: (Integer -> Integer -> Integer) -> ()
d_LeftAlternative_60 = erased
-- Data.Nat.Properties._.LeftBol
d_LeftBol_62 :: (Integer -> Integer -> Integer) -> ()
d_LeftBol_62 = erased
-- Data.Nat.Properties._.LeftCongruent
d_LeftCongruent_64 :: (Integer -> Integer -> Integer) -> ()
d_LeftCongruent_64 = erased
-- Data.Nat.Properties._.LeftConical
d_LeftConical_66 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftConical_66 = erased
-- Data.Nat.Properties._.LeftDivides
d_LeftDivides_68 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides_68 = erased
-- Data.Nat.Properties._.LeftDividesʳ
d_LeftDivides'691'_70 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'691'_70 = erased
-- Data.Nat.Properties._.LeftDividesˡ
d_LeftDivides'737'_72 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'737'_72 = erased
-- Data.Nat.Properties._.LeftIdentity
d_LeftIdentity_74 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_74 = erased
-- Data.Nat.Properties._.LeftInverse
d_LeftInverse_76 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_76 = erased
-- Data.Nat.Properties._.LeftInvertible
d_LeftInvertible_78 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_LeftInvertible_78 = erased
-- Data.Nat.Properties._.LeftSemimedial
d_LeftSemimedial_80 :: (Integer -> Integer -> Integer) -> ()
d_LeftSemimedial_80 = erased
-- Data.Nat.Properties._.LeftZero
d_LeftZero_82 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_82 = erased
-- Data.Nat.Properties._.Medial
d_Medial_84 :: (Integer -> Integer -> Integer) -> ()
d_Medial_84 = erased
-- Data.Nat.Properties._.MiddleBol
d_MiddleBol_86 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_MiddleBol_86 = erased
-- Data.Nat.Properties._.RightAlternative
d_RightAlternative_88 :: (Integer -> Integer -> Integer) -> ()
d_RightAlternative_88 = erased
-- Data.Nat.Properties._.RightBol
d_RightBol_90 :: (Integer -> Integer -> Integer) -> ()
d_RightBol_90 = erased
-- Data.Nat.Properties._.RightCongruent
d_RightCongruent_92 :: (Integer -> Integer -> Integer) -> ()
d_RightCongruent_92 = erased
-- Data.Nat.Properties._.RightConical
d_RightConical_94 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightConical_94 = erased
-- Data.Nat.Properties._.RightDivides
d_RightDivides_96 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides_96 = erased
-- Data.Nat.Properties._.RightDividesʳ
d_RightDivides'691'_98 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'691'_98 = erased
-- Data.Nat.Properties._.RightDividesˡ
d_RightDivides'737'_100 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'737'_100 = erased
-- Data.Nat.Properties._.RightIdentity
d_RightIdentity_102 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_102 = erased
-- Data.Nat.Properties._.RightInverse
d_RightInverse_104 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_104 = erased
-- Data.Nat.Properties._.RightInvertible
d_RightInvertible_106 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_RightInvertible_106 = erased
-- Data.Nat.Properties._.RightSemimedial
d_RightSemimedial_108 :: (Integer -> Integer -> Integer) -> ()
d_RightSemimedial_108 = erased
-- Data.Nat.Properties._.RightZero
d_RightZero_110 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_110 = erased
-- Data.Nat.Properties._.Selective
d_Selective_112 :: (Integer -> Integer -> Integer) -> ()
d_Selective_112 = erased
-- Data.Nat.Properties._.SelfInverse
d_SelfInverse_114 :: (Integer -> Integer) -> ()
d_SelfInverse_114 = erased
-- Data.Nat.Properties._.Semimedial
d_Semimedial_116 :: (Integer -> Integer -> Integer) -> ()
d_Semimedial_116 = erased
-- Data.Nat.Properties._.StarDestructive
d_StarDestructive_118 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarDestructive_118 = erased
-- Data.Nat.Properties._.StarExpansive
d_StarExpansive_120 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarExpansive_120 = erased
-- Data.Nat.Properties._.StarLeftDestructive
d_StarLeftDestructive_122 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftDestructive_122 = erased
-- Data.Nat.Properties._.StarLeftExpansive
d_StarLeftExpansive_124 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftExpansive_124 = erased
-- Data.Nat.Properties._.StarRightDestructive
d_StarRightDestructive_126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightDestructive_126 = erased
-- Data.Nat.Properties._.StarRightExpansive
d_StarRightExpansive_128 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightExpansive_128 = erased
-- Data.Nat.Properties._.Zero
d_Zero_130 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_130 = erased
-- Data.Nat.Properties._.IsAbelianGroup
d_IsAbelianGroup_134 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_138 a0 = ()
-- Data.Nat.Properties._.IsBand
d_IsBand_142 a0 = ()
-- Data.Nat.Properties._.IsBooleanRing
d_IsBooleanRing_146 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsBooleanSemiring
d_IsBooleanSemiring_150 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_154 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCommutativeBand
d_IsCommutativeBand_158 a0 = ()
-- Data.Nat.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_162 a0 = ()
-- Data.Nat.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_166 a0 a1 = ()
-- Data.Nat.Properties._.IsCommutativeRing
d_IsCommutativeRing_170 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_174 a0 = ()
-- Data.Nat.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_178 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_182 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_186 a0 = ()
-- Data.Nat.Properties._.IsGroup
d_IsGroup_190 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_194 a0 a1 = ()
-- Data.Nat.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_198 a0 = ()
-- Data.Nat.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_202 a0 a1 = ()
-- Data.Nat.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_206 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_210 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_214 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_218 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_222 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsLoop
d_IsLoop_226 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsMagma
d_IsMagma_230 a0 = ()
-- Data.Nat.Properties._.IsMedialMagma
d_IsMedialMagma_234 a0 = ()
-- Data.Nat.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_238 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsMonoid
d_IsMonoid_242 a0 a1 = ()
-- Data.Nat.Properties._.IsMoufangLoop
d_IsMoufangLoop_246 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsNearSemiring
d_IsNearSemiring_250 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsNearring
d_IsNearring_254 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_258 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsQuasigroup
d_IsQuasigroup_262 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsQuasiring
d_IsQuasiring_266 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsRightBolLoop
d_IsRightBolLoop_270 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsRing
d_IsRing_274 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_278 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_282 a0 = ()
-- Data.Nat.Properties._.IsSemigroup
d_IsSemigroup_286 a0 = ()
-- Data.Nat.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_290 a0 = ()
-- Data.Nat.Properties._.IsSemiring
d_IsSemiring_294 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_298 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_302 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsSuccessorSet
d_IsSuccessorSet_306 a0 a1 = ()
-- Data.Nat.Properties._.IsUnitalMagma
d_IsUnitalMagma_310 a0 a1 = ()
-- Data.Nat.Properties._.IsAbelianGroup._//_
d__'47''47'__316 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> Integer -> Integer
d__'47''47'__316 v0 ~v1 v2 ~v3 = du__'47''47'__316 v0 v2
du__'47''47'__316 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__316 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsAbelianGroup.assoc
d_assoc_318 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_318 = erased
-- Data.Nat.Properties._.IsAbelianGroup.comm
d_comm_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_320 = erased
-- Data.Nat.Properties._.IsAbelianGroup.identity
d_identity_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Nat.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_324 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_324 = erased
-- Data.Nat.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_326 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_326 = erased
-- Data.Nat.Properties._.IsAbelianGroup.inverse
d_inverse_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_330 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_330 = erased
-- Data.Nat.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_332 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_332 = erased
-- Data.Nat.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_334 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_334 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_334 v3
du_isCommutativeMagma_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_334 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Nat.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_336 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_336 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246 v3
-- Data.Nat.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_338 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_338 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_338 v3
du_isCommutativeSemigroup_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
         (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))))
-- Data.Nat.Properties._.IsAbelianGroup.isGroup
d_isGroup_342 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_342 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)
-- Data.Nat.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_344 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_344 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_344 v3
du_isInvertibleMagma_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_346 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_346 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_346 v3
du_isInvertibleUnitalMagma_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isMagma
d_isMagma_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_348 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))))
-- Data.Nat.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_352 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_352 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_352 v3
du_isPartialEquivalence_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_352 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Nat.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_354 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_354 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Nat.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_356 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_356 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_356 v3
du_isUnitalMagma_356 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_356 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1)))
-- Data.Nat.Properties._.IsAbelianGroup.refl
d_refl_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_358 = erased
-- Data.Nat.Properties._.IsAbelianGroup.reflexive
d_reflexive_360 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_360 = erased
-- Data.Nat.Properties._.IsAbelianGroup.setoid
d_setoid_362 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_362 ~v0 ~v1 ~v2 v3 = du_setoid_362 v3
du_setoid_362 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_362 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Nat.Properties._.IsAbelianGroup.sym
d_sym_364 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_364 = erased
-- Data.Nat.Properties._.IsAbelianGroup.trans
d_trans_366 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_366 = erased
-- Data.Nat.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_368 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_368 = erased
-- Data.Nat.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_370 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_370 = erased
-- Data.Nat.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_372 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_374 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_376 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_376 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_378 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_378 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.alter
d_alter_382 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_382 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_302 (coe v0)
-- Data.Nat.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_384 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_384 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_386 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_386 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Nat.Properties._.IsAlternativeMagma.isMagma
d_isMagma_390 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_390 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Nat.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_392 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_392 ~v0 v1 = du_isPartialEquivalence_392 v1
du_isPartialEquivalence_392 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_392 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsAlternativeMagma.refl
d_refl_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_394 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.reflexive
d_reflexive_396 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_396 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.setoid
d_setoid_398 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_398 ~v0 v1 = du_setoid_398 v1
du_setoid_398 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Nat.Properties._.IsAlternativeMagma.sym
d_sym_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_400 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.trans
d_trans_402 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_402 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_404 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_404 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_406 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_406 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_408 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_408 = erased
-- Data.Nat.Properties._.IsBand.assoc
d_assoc_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_412 = erased
-- Data.Nat.Properties._.IsBand.idem
d_idem_414 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_414 = erased
-- Data.Nat.Properties._.IsBand.isEquivalence
d_isEquivalence_416 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)))
-- Data.Nat.Properties._.IsBand.isMagma
d_isMagma_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_418 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0))
-- Data.Nat.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_420 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_420 ~v0 v1 = du_isPartialEquivalence_420 v1
du_isPartialEquivalence_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_420 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Nat.Properties._.IsBand.isSemigroup
d_isSemigroup_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_422 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)
-- Data.Nat.Properties._.IsBand.refl
d_refl_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_424 = erased
-- Data.Nat.Properties._.IsBand.reflexive
d_reflexive_426 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_426 = erased
-- Data.Nat.Properties._.IsBand.setoid
d_setoid_428 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_428 ~v0 v1 = du_setoid_428 v1
du_setoid_428 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_428 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Nat.Properties._.IsBand.sym
d_sym_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_430 = erased
-- Data.Nat.Properties._.IsBand.trans
d_trans_432 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_432 = erased
-- Data.Nat.Properties._.IsBand.∙-cong
d_'8729''45'cong_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_434 = erased
-- Data.Nat.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_436 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_436 = erased
-- Data.Nat.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_438 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_438 = erased
-- Data.Nat.Properties._.IsBooleanRing._//_
d__'47''47'__442 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> Integer -> Integer
d__'47''47'__442 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__442 v0 v2
du__'47''47'__442 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__442 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsBooleanRing.*-assoc
d_'42''45'assoc_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_444 = erased
-- Data.Nat.Properties._.IsBooleanRing.*-comm
d_'42''45'comm_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_446 = erased
-- Data.Nat.Properties._.IsBooleanRing.*-cong
d_'42''45'cong_448 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_448 = erased
-- Data.Nat.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_450 = erased
-- Data.Nat.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_452 = erased
-- Data.Nat.Properties._.IsBooleanRing.*-idem
d_'42''45'idem_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_454 = erased
-- Data.Nat.Properties._.IsBooleanRing.*-identity
d_'42''45'identity_456 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Nat.Properties._.IsBooleanRing.identityʳ
d_identity'691'_458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_458 = erased
-- Data.Nat.Properties._.IsBooleanRing.identityˡ
d_identity'737'_460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_460 = erased
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_462 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_462 v0 v1 v2 v3 v5
du_isCommutativeMagma_462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_462 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
                  (coe v7)))))
-- Data.Nat.Properties._.IsBooleanRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_464 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_464 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_464 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsBooleanRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_466 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_466 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_466 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
               (coe v6))))
-- Data.Nat.Properties._.IsBooleanRing.*-isMagma
d_'42''45'isMagma_468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_468 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_468 v0 v1 v2 v3 v5
du_'42''45'isMagma_468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_468 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Data.Nat.Properties._.IsBooleanRing.*-isMonoid
d_'42''45'isMonoid_470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_470 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_470 v0 v1 v2 v3 v5
du_'42''45'isMonoid_470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_470 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5)))
-- Data.Nat.Properties._.IsBooleanRing.*-isSemigroup
d_'42''45'isSemigroup_472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_472 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_472 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_472 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Data.Nat.Properties._.IsBooleanRing.assoc
d_assoc_474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_474 = erased
-- Data.Nat.Properties._.IsBooleanRing.comm
d_comm_476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_476 = erased
-- Data.Nat.Properties._.IsBooleanRing.∙-cong
d_'8729''45'cong_478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_478 = erased
-- Data.Nat.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_480 = erased
-- Data.Nat.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_482 = erased
-- Data.Nat.Properties._.IsBooleanRing.identity
d_identity_484 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_484 v5
du_identity_484 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_484 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_identity_726
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v2))))))
-- Data.Nat.Properties._.IsBooleanRing.identityʳ
d_identity'691'_486 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_486 = erased
-- Data.Nat.Properties._.IsBooleanRing.identityˡ
d_identity'737'_488 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_488 = erased
-- Data.Nat.Properties._.IsBooleanRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_490 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_492 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_492 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_492 v5
du_isCommutativeMagma_492 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_492 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                        (coe v5)))))))
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeMonoid
d_isCommutativeMonoid_494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_494 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_494 v5
du_isCommutativeMonoid_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_494 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                  (coe v3)))))
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeSemigroup
d_isCommutativeSemigroup_496 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_496 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_496 v5
du_isCommutativeSemigroup_496 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_496 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                     (coe v4))))))
-- Data.Nat.Properties._.IsBooleanRing.isGroup
d_isGroup_498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_498 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_498 v5
du_isGroup_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_498 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v2))))
-- Data.Nat.Properties._.IsBooleanRing.isInvertibleMagma
d_isInvertibleMagma_500 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_500 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_500 v5
du_isInvertibleMagma_500 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_500 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4))))))
-- Data.Nat.Properties._.IsBooleanRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_502 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_502 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_502 v5
du_isInvertibleUnitalMagma_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_502 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4))))))
-- Data.Nat.Properties._.IsBooleanRing.isMagma
d_isMagma_504 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_504 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_504 v5
du_isMagma_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_504 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                        (coe v2)))))))
-- Data.Nat.Properties._.IsBooleanRing.isMonoid
d_isMonoid_506 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_506 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_506 v5
du_isMonoid_506 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_506 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v2)))))
-- Data.Nat.Properties._.IsBooleanRing.isSemigroup
d_isSemigroup_508 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_508 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_508 v5
du_isSemigroup_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_508 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v2))))))
-- Data.Nat.Properties._.IsBooleanRing.isUnitalMagma
d_isUnitalMagma_510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_510 v5
du_isUnitalMagma_510 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_510 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v5)))))))
-- Data.Nat.Properties._.IsBooleanRing.⁻¹-cong
d_'8315''185''45'cong_512 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_512 = erased
-- Data.Nat.Properties._.IsBooleanRing.inverse
d_inverse_514 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_514 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_514 v5
du_inverse_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_514 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_inverse_1092
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v2)))))
-- Data.Nat.Properties._.IsBooleanRing.inverseʳ
d_inverse'691'_516 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_516 = erased
-- Data.Nat.Properties._.IsBooleanRing.inverseˡ
d_inverse'737'_518 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_518 = erased
-- Data.Nat.Properties._.IsBooleanRing.distrib
d_distrib_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Nat.Properties._.IsBooleanRing.distribʳ
d_distrib'691'_522 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_522 = erased
-- Data.Nat.Properties._.IsBooleanRing.distribˡ
d_distrib'737'_524 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_524 = erased
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeRing
d_isCommutativeRing_526 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_isCommutativeRing_526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeSemiring
d_isCommutativeSemiring_528 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_528 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiring_528 v0 v1 v2 v3 v5
du_isCommutativeSemiring_528 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_528 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v4))
-- Data.Nat.Properties._.IsBooleanRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_530 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_530 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_530 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_530 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_530 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsBooleanRing.isEquivalence
d_isEquivalence_532 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_532 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_532 v5
du_isEquivalence_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_532 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                           (coe v2))))))))
-- Data.Nat.Properties._.IsBooleanRing.isNearSemiring
d_isNearSemiring_534 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_534 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_534 v0 v1 v2 v3 v5
du_isNearSemiring_534 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_534 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
            (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
               (coe v6))))
-- Data.Nat.Properties._.IsBooleanRing.isPartialEquivalence
d_isPartialEquivalence_536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_536 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_536 v5
du_isPartialEquivalence_536 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_536 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe v8))))))))))
-- Data.Nat.Properties._.IsBooleanRing.isRing
d_isRing_538 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_3032
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0))
-- Data.Nat.Properties._.IsBooleanRing.isRingWithoutOne
d_isRingWithoutOne_540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_540 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_540 v5
du_isRingWithoutOne_540 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
du_isRingWithoutOne_540 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1)))
-- Data.Nat.Properties._.IsBooleanRing.isSemiring
d_isSemiring_542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_542 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_542 v0 v1 v2 v3 v5
du_isSemiring_542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_542 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5)))
-- Data.Nat.Properties._.IsBooleanRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_544 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_544 v5
du_isSemiringWithoutAnnihilatingZero_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_544 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1)))
-- Data.Nat.Properties._.IsBooleanRing.isSemiringWithoutOne
d_isSemiringWithoutOne_546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_546 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_546 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_546 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Nat.Properties._.IsBooleanRing.refl
d_refl_548 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_548 = erased
-- Data.Nat.Properties._.IsBooleanRing.reflexive
d_reflexive_550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_550 = erased
-- Data.Nat.Properties._.IsBooleanRing.setoid
d_setoid_552 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_552 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_552 v5
du_setoid_552 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_552 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_204
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v7)))))))))
-- Data.Nat.Properties._.IsBooleanRing.sym
d_sym_554 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_554 = erased
-- Data.Nat.Properties._.IsBooleanRing.trans
d_trans_556 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_556 = erased
-- Data.Nat.Properties._.IsBooleanRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_558 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_558 = erased
-- Data.Nat.Properties._.IsBooleanRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_560 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_560 = erased
-- Data.Nat.Properties._.IsBooleanRing.zero
d_zero_562 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_562 v0 v1 v2 v3 ~v4 v5 = du_zero_562 v0 v1 v2 v3 v5
du_zero_562 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_562 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
            (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
               (coe v6))))
-- Data.Nat.Properties._.IsBooleanRing.zeroʳ
d_zero'691'_564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_564 = erased
-- Data.Nat.Properties._.IsBooleanRing.zeroˡ
d_zero'737'_566 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_566 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.*-assoc
d_'42''45'assoc_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_570 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.*-cong
d_'42''45'cong_572 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_572 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_574 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_574 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_576 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.*-idem
d_'42''45'idem_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_578 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.*-identity
d_'42''45'identity_580 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Nat.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_582 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_584 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.isBand
d_isBand_586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_586 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_586 v4
du_isBand_586 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
         (coe v0))
-- Data.Nat.Properties._.IsBooleanSemiring.*-isIdempotentMonoid
d_'42''45'isIdempotentMonoid_588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_'42''45'isIdempotentMonoid_588 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
      v4
-- Data.Nat.Properties._.IsBooleanSemiring.*-isMagma
d_'42''45'isMagma_590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_590 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_590 v4
du_'42''45'isMagma_590 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_590 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsBooleanSemiring.*-isMonoid
d_'42''45'isMonoid_592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_592 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_592 v4
du_'42''45'isMonoid_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_592 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsBooleanSemiring.*-isSemigroup
d_'42''45'isSemigroup_594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_594 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_594 v4
du_'42''45'isSemigroup_594 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_594 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsBooleanSemiring.assoc
d_assoc_596 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_596 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.+-cancel
d_'43''45'cancel_598 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel_598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'cancel_2388 (coe v0)
-- Data.Nat.Properties._.IsBooleanSemiring.+-cancelʳ
d_'43''45'cancel'691'_600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691'_600 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.+-cancelˡ
d_'43''45'cancel'737'_602 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737'_602 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.comm
d_comm_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_604 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.∙-cong
d_'8729''45'cong_606 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_606 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_608 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_608 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_610 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_610 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.identity
d_identity_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_612 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))
-- Data.Nat.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_614 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_614 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_616 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_616 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.isCommutativeMagma
d_isCommutativeMagma_618 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_618 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_618 v4
du_isCommutativeMagma_618 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_618 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Nat.Properties._.IsBooleanSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_620 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_620 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Nat.Properties._.IsBooleanSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_622 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_622 v4
du_isCommutativeSemigroup_622 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_622 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v2))))
-- Data.Nat.Properties._.IsBooleanSemiring.isMagma
d_isMagma_624 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))))))
-- Data.Nat.Properties._.IsBooleanSemiring.isMonoid
d_isMonoid_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))))
-- Data.Nat.Properties._.IsBooleanSemiring.isSemigroup
d_isSemigroup_628 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))
-- Data.Nat.Properties._.IsBooleanSemiring.isUnitalMagma
d_isUnitalMagma_630 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_630 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_630 v4
du_isUnitalMagma_630 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_630 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3)))))
-- Data.Nat.Properties._.IsBooleanSemiring.distrib
d_distrib_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Nat.Properties._.IsBooleanSemiring.distribʳ
d_distrib'691'_634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_634 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.distribˡ
d_distrib'737'_636 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_636 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.isEquivalence
d_isEquivalence_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))))
-- Data.Nat.Properties._.IsBooleanSemiring.isNearSemiring
d_isNearSemiring_640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_640 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_640 v4
du_isNearSemiring_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_640 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Nat.Properties._.IsBooleanSemiring.isPartialEquivalence
d_isPartialEquivalence_642 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_642 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_642 v4
du_isPartialEquivalence_642 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_642 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Nat.Properties._.IsBooleanSemiring.isSemiring
d_isSemiring_644 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_644 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)
-- Data.Nat.Properties._.IsBooleanSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Nat.Properties._.IsBooleanSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_648 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_648 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_648 v4
du_isSemiringWithoutOne_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_648 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Nat.Properties._.IsBooleanSemiring.refl
d_refl_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_650 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.reflexive
d_reflexive_652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_652 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.setoid
d_setoid_654 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_654 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_654 v4
du_setoid_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_654 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Nat.Properties._.IsBooleanSemiring.sym
d_sym_656 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_656 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.trans
d_trans_658 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_658 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.zero
d_zero_660 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Nat.Properties._.IsBooleanSemiring.zeroʳ
d_zero'691'_662 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_662 = erased
-- Data.Nat.Properties._.IsBooleanSemiring.zeroˡ
d_zero'737'_664 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_664 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_668 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_668 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_670 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45'nonZero_670 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_672 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_674 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_676 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_676 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_678 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_678 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_680 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_680 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_684 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_684 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_686 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_686 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_688 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_688 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_688 v4
du_isCommutativeMagma_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_688 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_690 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_690 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_690 v4
du_'42''45'isCommutativeMonoid_690 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_692 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_692 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_692 v4
du_'42''45'isCommutativeSemigroup_692 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_692 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
            (coe v1)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_694 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_694 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_694 v4
du_'42''45'isMagma_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_694 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_696 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_696 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_696 v4
du_'42''45'isMonoid_696 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_696 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_698 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_698 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_698 v4
du_'42''45'isSemigroup_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_698 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_700 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_702 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_704 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_706 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_706 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_708 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_708 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                     (coe v0))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_712 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_712 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_714 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_714 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_716 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_716 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_716 v4
du_isCommutativeMagma_716 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_716 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                     (coe v4))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_720 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_720 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_720 v4
du_isCommutativeSemigroup_720 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_720 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe v3)))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                        (coe v0)))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                  (coe v0)))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_726 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                     (coe v0))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_728 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_728 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_728 v4
du_isUnitalMagma_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_728 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_730 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_732 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_732 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_734 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_736 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_736 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
      (coe v0)
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_738 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_738 v4
du_isCommutativeSemiringWithoutOne_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_740 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
                           (coe v0))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_742 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_742 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_742 v4
du_isNearSemiring_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_742 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
               (coe v2))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_744 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_744 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_744 v4
du_isPartialEquivalence_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_744 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe v7)))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_748 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
            (coe v0)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_750 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_750 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_750 v4
du_isSemiringWithoutOne_750 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_750 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_752 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_752 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_754 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_754 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_756 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_756 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_756 v4
du_setoid_756 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_756 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_204
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_758 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_760 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_760 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_762 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
            (coe v0)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_764 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_764 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_766 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_766 = erased
-- Data.Nat.Properties._.IsCommutativeBand.assoc
d_assoc_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_770 = erased
-- Data.Nat.Properties._.IsCommutativeBand.comm
d_comm_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_772 = erased
-- Data.Nat.Properties._.IsCommutativeBand.idem
d_idem_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_774 = erased
-- Data.Nat.Properties._.IsCommutativeBand.isBand
d_isBand_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_776 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Nat.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_778 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_778 ~v0 v1 = du_isCommutativeMagma_778 v1
du_isCommutativeMagma_778 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_780 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_780 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656 v1
-- Data.Nat.Properties._.IsCommutativeBand.isEquivalence
d_isEquivalence_782 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_782 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeBand.isMagma
d_isMagma_784 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_786 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_786 ~v0 v1 = du_isPartialEquivalence_786 v1
du_isPartialEquivalence_786 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_786 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Nat.Properties._.IsCommutativeBand.refl
d_refl_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_790 = erased
-- Data.Nat.Properties._.IsCommutativeBand.reflexive
d_reflexive_792 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_792 = erased
-- Data.Nat.Properties._.IsCommutativeBand.setoid
d_setoid_794 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_794 ~v0 v1 = du_setoid_794 v1
du_setoid_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_794 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Nat.Properties._.IsCommutativeBand.sym
d_sym_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_796 = erased
-- Data.Nat.Properties._.IsCommutativeBand.trans
d_trans_798 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_798 = erased
-- Data.Nat.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_800 = erased
-- Data.Nat.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_802 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_802 = erased
-- Data.Nat.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_804 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_804 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.comm
d_comm_808 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_808 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_810 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMagma.isMagma
d_isMagma_812 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_812 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Nat.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_814 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_814 ~v0 v1 = du_isPartialEquivalence_814 v1
du_isPartialEquivalence_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_814 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsCommutativeMagma.refl
d_refl_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_816 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.reflexive
d_reflexive_818 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_818 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.setoid
d_setoid_820 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_820 ~v0 v1 = du_setoid_820 v1
du_setoid_820 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_820 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMagma.sym
d_sym_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_822 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.trans
d_trans_824 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_824 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_826 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_826 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_828 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_828 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_830 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_830 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.assoc
d_assoc_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_834 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.comm
d_comm_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_836 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.identity
d_identity_838 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_838 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_840 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_840 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_842 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_842 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_844 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_844 ~v0 ~v1 v2 = du_isCommutativeMagma_844 v2
du_isCommutativeMagma_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_846 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_846 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816 v2
-- Data.Nat.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_848 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_852 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_852 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)
-- Data.Nat.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_854 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_854 ~v0 ~v1 v2
  = du_isPartialEquivalence_854 v2
du_isPartialEquivalence_854 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_854 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_858 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_858 ~v0 ~v1 v2 = du_isUnitalMagma_858 v2
du_isUnitalMagma_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_858 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.refl
d_refl_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_860 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_862 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_862 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.setoid
d_setoid_864 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_864 ~v0 ~v1 v2 = du_setoid_864 v2
du_setoid_864 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_864 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Nat.Properties._.IsCommutativeMonoid.sym
d_sym_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_866 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.trans
d_trans_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_868 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_870 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_870 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_872 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_872 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_874 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_874 = erased
-- Data.Nat.Properties._.IsCommutativeRing._//_
d__'47''47'__878 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> Integer -> Integer
d__'47''47'__878 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__878 v0 v2
du__'47''47'__878 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__878 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_880 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_882 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_882 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_884 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_884 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_886 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_886 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_888 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_888 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_892 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_892 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_894 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_894 = erased
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_896 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_896 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_896 v0 v1 v2 v3 v5
du_isCommutativeMagma_896 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_896 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
               (coe v6))))
-- Data.Nat.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_898 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_898 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_898 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_898 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_898 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_900 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_900 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_900 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
            (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_902 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_902 v0 v1 v2 v3 v5
du_'42''45'isMagma_902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_902 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Nat.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_904 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_904 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_904 v0 v1 v2 v3 v5
du_'42''45'isMonoid_904 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_906 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_906 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_906 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Data.Nat.Properties._.IsCommutativeRing.assoc
d_assoc_908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_908 = erased
-- Data.Nat.Properties._.IsCommutativeRing.comm
d_comm_910 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_910 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_912 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_912 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_914 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_914 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_916 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_916 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identity
d_identity_918 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_918 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_918 v5
du_identity_918 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_918 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_726
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v1)))))
-- Data.Nat.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_920 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_920 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_922 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_922 = erased
-- Data.Nat.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_924 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_926 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_926 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_926 v5
du_isCommutativeMagma_926 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_926 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                     (coe v4))))))
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_928 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_928 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_928 v5
du_isCommutativeMonoid_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_928 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v2))))
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_930 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_930 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_930 v5
du_isCommutativeSemigroup_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_930 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                  (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeRing.isGroup
d_isGroup_932 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_932 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_932 v5
du_isGroup_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_932 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_934 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_934 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_934 v5
du_isInvertibleMagma_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_934 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_936 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_936 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_936 v5
du_isInvertibleUnitalMagma_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_936 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeRing.isMagma
d_isMagma_938 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_938 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_938 v5
du_isMagma_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_938 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v1))))))
-- Data.Nat.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_940 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_940 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_940 v5
du_isMonoid_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_940 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v1))))
-- Data.Nat.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_942 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_942 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_942 v5
du_isSemigroup_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_942 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v1)))))
-- Data.Nat.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_944 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_944 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_944 v5
du_isUnitalMagma_944 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_944 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v4))))))
-- Data.Nat.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_946 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_946 = erased
-- Data.Nat.Properties._.IsCommutativeRing.inverse
d_inverse_948 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_948 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_948 v5
du_inverse_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_948 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_1092
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v1))))
-- Data.Nat.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_950 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_950 = erased
-- Data.Nat.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_952 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_952 = erased
-- Data.Nat.Properties._.IsCommutativeRing.distrib
d_distrib_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_956 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_956 = erased
-- Data.Nat.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_958 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_958 = erased
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_960 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_960 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146 v0 v1
      v2 v3 v5
-- Data.Nat.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_962 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_962 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_962 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_962 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_962 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_964 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_964 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_964 v5
du_isEquivalence_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_964 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                        (coe v1)))))))
-- Data.Nat.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_966 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_966 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_966 v0 v1 v2 v3 v5
du_isNearSemiring_966 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_966 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_968 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_968 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_968 v5
du_isPartialEquivalence_968 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_968 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe v7)))))))))
-- Data.Nat.Properties._.IsCommutativeRing.isRing
d_isRing_970 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_970 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0)
-- Data.Nat.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_972 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_972 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_972 v5
du_isRingWithoutOne_972 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
du_isRingWithoutOne_972 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_974 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_974 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_974 v0 v1 v2 v3 v5
du_isSemiring_974 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_974 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Nat.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_976 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_976 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_976 v5
du_isSemiringWithoutAnnihilatingZero_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_978 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_978 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_978 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_978 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_978 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.refl
d_refl_980 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_980 = erased
-- Data.Nat.Properties._.IsCommutativeRing.reflexive
d_reflexive_982 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_982 = erased
-- Data.Nat.Properties._.IsCommutativeRing.setoid
d_setoid_984 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_984 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_984 v5
du_setoid_984 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_984 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_204
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6))))))))
-- Data.Nat.Properties._.IsCommutativeRing.sym
d_sym_986 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_986 = erased
-- Data.Nat.Properties._.IsCommutativeRing.trans
d_trans_988 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_988 = erased
-- Data.Nat.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_990 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_990 = erased
-- Data.Nat.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_992 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_992 = erased
-- Data.Nat.Properties._.IsCommutativeRing.zero
d_zero_994 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_994 v0 v1 v2 v3 ~v4 v5 = du_zero_994 v0 v1 v2 v3 v5
du_zero_994 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_994 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v5)))
-- Data.Nat.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_996 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_996 = erased
-- Data.Nat.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_998 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_998 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.assoc
d_assoc_1002 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1002 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.comm
d_comm_1004 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1004 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_1006 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1006 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608 v1
-- Data.Nat.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1008 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1010 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_1012 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1012 ~v0 v1
  = du_isPartialEquivalence_1012 v1
du_isPartialEquivalence_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1012 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1014 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemigroup.refl
d_refl_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1016 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_1018 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1018 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.setoid
d_setoid_1020 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1020 ~v0 v1 = du_setoid_1020 v1
du_setoid_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1020 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemigroup.sym
d_sym_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1022 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.trans
d_trans_1024 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1024 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_1026 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1026 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_1028 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1028 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_1030 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1030 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_1034 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1034 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1036 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_1038 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1038 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_1040 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1040 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_1042 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1042 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_1046 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1046 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_1048 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1048 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_1050 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1050 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1050 v4
du_isCommutativeMagma_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1050 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1052 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_1052 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      v4
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1054 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1054 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_1054 v4
du_'42''45'isCommutativeSemigroup_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_1056 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1056 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1056 v4
du_'42''45'isMagma_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1056 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_1058 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1058 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1058 v4
du_'42''45'isMonoid_1058 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1058 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_1060 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1060 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1060 v4
du_'42''45'isSemigroup_1060 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1060 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.assoc
d_assoc_1062 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1062 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.comm
d_comm_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1064 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_1066 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1066 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_1068 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1068 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_1070 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1070 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identity
d_identity_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1072 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_1074 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1074 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_1076 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1076 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_1078 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1078 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1078 v4
du_isCommutativeMagma_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1078 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1080 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1082 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1082 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1082 v4
du_isCommutativeSemigroup_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1082 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v2))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_1088 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_1090 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1090 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1090 v4
du_isUnitalMagma_1090 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1090 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.distrib
d_distrib_1092 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_1094 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1094 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_1096 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1096 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1098 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_1098 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      v4
-- Data.Nat.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_1100 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_1102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1102 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1102 v4
du_isNearSemiring_1102 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1102 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_1104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1104 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1104 v4
du_isPartialEquivalence_1104 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1104 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_1106 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1106 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1108 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1110 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1110 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1110 v4
du_isSemiringWithoutOne_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.refl
d_refl_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1112 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_1114 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1114 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.setoid
d_setoid_1116 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1116 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1116 v4
du_setoid_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1116 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.sym
d_sym_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1118 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.trans
d_trans_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1120 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.zero
d_zero_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_1124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1124 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_1126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1126 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_1130 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1130 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1132 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1132 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_1134 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1134 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1136 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1136 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1138 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1140 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1140 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_1140 v3
du_isCommutativeMagma_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1142 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1142 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      v3
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_1144 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1144 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_1144 v3
du_'42''45'isMagma_1144 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_1146 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1146 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_1146 v3
du_'42''45'isSemigroup_1146 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_1148 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1148 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1150 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1152 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1154 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1154 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1156 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1156 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.identity
d_identity_1158 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1158 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
               (coe v0))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_1160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1160 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_1162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1162 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1164 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1164 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_1164 v3
du_isCommutativeMagma_1164 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1164 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1166 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_1168 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1168 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_1168 v3
du_isCommutativeSemigroup_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1168 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
            (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_1174 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1174 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_1176 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1176 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
d_isEquivalence_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
                     (coe v0))))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_1180 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1180 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_1180 v3
du_isNearSemiring_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1180 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_1182 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1182 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1182 v3
du_isPartialEquivalence_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1182 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                        (coe v1)))))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
      (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_1186 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1186 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_1188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1188 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_1190 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1190 ~v0 ~v1 ~v2 v3 = du_setoid_1190 v3
du_setoid_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1190 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1192 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_1194 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1194 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_1198 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1198 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_1200 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1200 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.flex
d_flex_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_1204 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_1206 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Nat.Properties._.IsFlexibleMagma.isMagma
d_isMagma_1208 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1208 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0)
-- Data.Nat.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_1210 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1210 ~v0 v1
  = du_isPartialEquivalence_1210 v1
du_isPartialEquivalence_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1210 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsFlexibleMagma.refl
d_refl_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1212 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.reflexive
d_reflexive_1214 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1214 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.setoid
d_setoid_1216 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1216 ~v0 v1 = du_setoid_1216 v1
du_setoid_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1216 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Nat.Properties._.IsFlexibleMagma.sym
d_sym_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1218 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.trans
d_trans_1220 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1220 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_1222 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1222 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_1224 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1224 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_1226 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1226 = erased
-- Data.Nat.Properties._.IsGroup._-_
d__'45'__1230 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> Integer -> Integer
d__'45'__1230 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1144 v0 v2
-- Data.Nat.Properties._.IsGroup._//_
d__'47''47'__1232 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> Integer -> Integer
d__'47''47'__1232 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 v0 v2 v4 v5
-- Data.Nat.Properties._.IsGroup._\\_
d__'92''92'__1234 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> Integer -> Integer
d__'92''92'__1234 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1132 v0 v2 v4 v5
-- Data.Nat.Properties._.IsGroup.assoc
d_assoc_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1236 = erased
-- Data.Nat.Properties._.IsGroup.identity
d_identity_1238 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Nat.Properties._.IsGroup.identityʳ
d_identity'691'_1240 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1240 = erased
-- Data.Nat.Properties._.IsGroup.identityˡ
d_identity'737'_1242 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1242 = erased
-- Data.Nat.Properties._.IsGroup.inverse
d_inverse_1244 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1244 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1092 (coe v0)
-- Data.Nat.Properties._.IsGroup.inverseʳ
d_inverse'691'_1246 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1246 = erased
-- Data.Nat.Properties._.IsGroup.inverseˡ
d_inverse'737'_1248 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1248 = erased
-- Data.Nat.Properties._.IsGroup.isEquivalence
d_isEquivalence_1250 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))))
-- Data.Nat.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_1252 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1252 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162 v3
-- Data.Nat.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1254 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_1254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164 v3
-- Data.Nat.Properties._.IsGroup.isMagma
d_isMagma_1256 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)))
-- Data.Nat.Properties._.IsGroup.isMonoid
d_isMonoid_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1258 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)
-- Data.Nat.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_1260 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1260 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1260 v3
du_isPartialEquivalence_1260 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1260 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsGroup.isSemigroup
d_isSemigroup_1262 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Nat.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_1264 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1264 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1264 v3
du_isUnitalMagma_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Nat.Properties._.IsGroup.refl
d_refl_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1266 = erased
-- Data.Nat.Properties._.IsGroup.reflexive
d_reflexive_1268 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1268 = erased
-- Data.Nat.Properties._.IsGroup.setoid
d_setoid_1270 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1270 ~v0 ~v1 ~v2 v3 = du_setoid_1270 v3
du_setoid_1270 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1270 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Nat.Properties._.IsGroup.sym
d_sym_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1272 = erased
-- Data.Nat.Properties._.IsGroup.trans
d_trans_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1274 = erased
-- Data.Nat.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1276 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1276 = erased
-- Data.Nat.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1278 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1278 = erased
-- Data.Nat.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1280 = erased
-- Data.Nat.Properties._.IsGroup.∙-cong
d_'8729''45'cong_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1282 = erased
-- Data.Nat.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_1284 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1284 = erased
-- Data.Nat.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_1286 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1286 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_1290 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1290 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_1292 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1292 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_1294 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1294 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_1296 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_1298 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1298 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_1300 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1300 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_1302 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1302 ~v0 ~v1 v2 = du_isBand_1302 v2
du_isBand_1302 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_1304 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1304 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 v2
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_1306 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1306 ~v0 ~v1 v2
  = du_isCommutativeMagma_1306 v2
du_isCommutativeMagma_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1306 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_1308 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_1308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0)
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_1310 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1310 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1310 v2
du_isCommutativeSemigroup_1310 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
                  (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_1314 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1314 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 v2
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_1316 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
               (coe v0))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_1320 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1320 ~v0 ~v1 v2
  = du_isPartialEquivalence_1320 v2
du_isPartialEquivalence_1320 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1320 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_1322 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1324 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1324 ~v0 ~v1 v2 = du_isUnitalMagma_1324 v2
du_isUnitalMagma_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1324 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1326 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1328 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1328 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1330 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1330 ~v0 ~v1 v2 = du_setoid_1330 v2
du_setoid_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1330 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1332 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1334 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1336 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1338 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1338 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1340 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1340 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.idem
d_idem_1344 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1344 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1346 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1348 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1348 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0)
-- Data.Nat.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1350 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1350 ~v0 v1
  = du_isPartialEquivalence_1350 v1
du_isPartialEquivalence_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1350 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsIdempotentMagma.refl
d_refl_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1352 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1354 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1354 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.setoid
d_setoid_1356 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1356 ~v0 v1 = du_setoid_1356 v1
du_setoid_1356 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1356 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMagma.sym
d_sym_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1358 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.trans
d_trans_1360 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1360 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1362 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1364 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1364 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1366 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1366 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.assoc
d_assoc_1370 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1370 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.idem
d_idem_1372 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1372 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.identity
d_identity_1374 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1376 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1376 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1378 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1378 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.isBand
d_isBand_1380 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1380 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_878 v2
-- Data.Nat.Properties._.IsIdempotentMonoid.isEquivalence
d_isEquivalence_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))))
-- Data.Nat.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1384 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1386 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1386 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)
-- Data.Nat.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1388 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1388 ~v0 ~v1 v2
  = du_isPartialEquivalence_1388 v2
du_isPartialEquivalence_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1388 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1392 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1392 ~v0 ~v1 v2 = du_isUnitalMagma_1392 v2
du_isUnitalMagma_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMonoid.refl
d_refl_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1394 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1396 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1396 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.setoid
d_setoid_1398 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1398 ~v0 ~v1 v2 = du_setoid_1398 v2
du_setoid_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1398 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Nat.Properties._.IsIdempotentMonoid.sym
d_sym_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1400 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.trans
d_trans_1402 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1402 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1404 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1406 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1406 = erased
-- Data.Nat.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1408 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1408 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1412 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1412 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1414 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1414 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1416 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1418 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1418 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1420 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1422 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1422 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1424 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1424 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1426 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1426 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1426 v4
du_'42''45'isMagma_1426 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1426 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1428 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1428 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1428 v4
du_'42''45'isMonoid_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1428 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1430 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1430 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1430 v4
du_'42''45'isSemigroup_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1430 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.assoc
d_assoc_1432 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1432 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.comm
d_comm_1434 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1434 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1436 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1438 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1438 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1440 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1442 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identity
d_identity_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1446 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1446 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1448 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1448 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.isBand
d_isBand_1450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1450 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_1450 v4
du_isBand_1450 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1450 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isBand_878
         (coe
            MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1452 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeBand_1452 v4
du_isCommutativeBand_1452 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_1452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
         (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1454 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1454 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1454 v4
du_isCommutativeMagma_1454 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1454 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1458 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1458 v4
du_isCommutativeSemigroup_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1458 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v2))))
-- Data.Nat.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1460 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      v4
-- Data.Nat.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1462 ~v0 ~v1 ~v2 ~v3 v4
  = du_isIdempotentMonoid_1462 v4
du_isIdempotentMonoid_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_1462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
         (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1464 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1466 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1468 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1470 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1470 v4
du_isUnitalMagma_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1470 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.distrib
d_distrib_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1474 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1476 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1480 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1480 v4
du_isNearSemiring_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1480 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1482 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1482 v4
du_isPartialEquivalence_1482 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1482 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1488 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1488 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1488 v4
du_isSemiringWithoutOne_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.refl
d_refl_1490 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1490 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1492 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1492 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.setoid
d_setoid_1494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1494 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1494 v4
du_setoid_1494 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1494 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.sym
d_sym_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1496 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.trans
d_trans_1498 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1498 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.zero
d_zero_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1500 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1502 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1502 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1504 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1504 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.inverse
d_inverse_1508 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1508 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_976 (coe v0)
-- Data.Nat.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1510 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1510 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1512 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1512 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1514 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Nat.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1516 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1516 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0)
-- Data.Nat.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1518 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1518 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1518 v3
du_isPartialEquivalence_1518 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1518 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsInvertibleMagma.refl
d_refl_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1520 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1522 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1522 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.setoid
d_setoid_1524 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1524 ~v0 ~v1 ~v2 v3 = du_setoid_1524 v3
du_setoid_1524 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1524 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Nat.Properties._.IsInvertibleMagma.sym
d_sym_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1526 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.trans
d_trans_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1528 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1530 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1532 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1534 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1534 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1536 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1536 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1540 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_1028 (coe v0)
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1542 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1542 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1544 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1544 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_976
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1548 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1548 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1550 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1550 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_974
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1554 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1554 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1556 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_974
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1558 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1558 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1558 v3
du_isPartialEquivalence_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1558 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1560 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1560 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1066 v3
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1562 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1564 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1564 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1566 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1566 ~v0 ~v1 ~v2 v3 = du_setoid_1566 v3
du_setoid_1566 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1566 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v1)))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1568 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1570 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1570 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1572 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1572 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1574 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1576 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1576 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1578 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1578 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1582 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1582 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1584 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1584 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1586 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1588 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1592 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1594 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1596 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1596 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1596 v5
du_'42''45'isMagma_1596 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1596 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1598 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1598 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1598 v5
du_'42''45'isMonoid_1598 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1598 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1600 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1600 v5
du_'42''45'isSemigroup_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1600 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.assoc
d_assoc_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1602 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.comm
d_comm_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1604 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1606 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1608 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1608 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1610 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1610 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1612 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identity
d_identity_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                     (coe v0))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1616 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1616 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1618 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1618 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.isBand
d_isBand_1620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1620 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isBand_1620 v5
du_isBand_1620 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1620 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isBand_878
            (coe
               MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1622 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeBand_1622 v5
du_isCommutativeBand_1622 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_1622 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
            (coe v1)))
-- Data.Nat.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1624 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1624 v5
du_isCommutativeMagma_1624 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1624 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                     (coe v4))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1628 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1628 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1628 v5
du_isCommutativeSemigroup_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1628 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe v3)))))
-- Data.Nat.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1630 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1630 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'isIdempotentCommutativeMonoid_1630 v5
du_'43''45'isIdempotentCommutativeMonoid_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
du_'43''45'isIdempotentCommutativeMonoid_1630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Nat.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1632 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1632 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isIdempotentMonoid_1632 v5
du_isIdempotentMonoid_1632 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_1632 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
            (coe v1)))
-- Data.Nat.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                        (coe v0)))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                  (coe v0)))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1638 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                     (coe v0))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1640 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1640 v5
du_isUnitalMagma_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1640 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.distrib
d_distrib_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1644 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1644 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1646 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1648 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
                           (coe v0))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1650 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000
d_isIdempotentSemiring_1650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
      (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1652 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_1652 v5
du_isNearSemiring_1652 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1652 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
               (coe v2))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1654 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1654 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1654 v5
du_isPartialEquivalence_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1654 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe v7)))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1658 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1658 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
            (coe v0)))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1660 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1660 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_1660 v5
du_isSemiringWithoutOne_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1660 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1)))
-- Data.Nat.Properties._.IsKleeneAlgebra.refl
d_refl_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1662 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1664 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1664 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.setoid
d_setoid_1666 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1666 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1666 v5
du_setoid_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1666 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_204
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v6))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1668 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2146 (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1670 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'691'_1670 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1672 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'737'_1672 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1674 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2144 (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1676 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1676 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1678 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1678 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.sym
d_sym_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1680 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.trans
d_trans_1682 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1682 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.zero
d_zero_1684 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1684 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
            (coe v0)))
-- Data.Nat.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1686 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1686 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1688 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1688 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1692 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1692 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1694 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1694 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1696 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1696 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1698 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1698 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1700 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1700 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1702 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1702 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.identity
d_identity_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Nat.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1706 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1706 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1708 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1708 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))))
-- Data.Nat.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1712 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1712 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)
-- Data.Nat.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1714 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1714 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1716 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1716 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1716 v4
du_isPartialEquivalence_1716 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1716 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Nat.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1720 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1722 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1724 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1724 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1726 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1726 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.refl
d_refl_1728 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1728 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1730 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1730 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1732 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1734 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1736 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1736 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.setoid
d_setoid_1738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1738 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1738 v4
du_setoid_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1738 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Nat.Properties._.IsLeftBolLoop.sym
d_sym_1740 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1740 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.trans
d_trans_1742 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1742 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1744 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1744 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1746 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1746 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1748 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1748 = erased
-- Data.Nat.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1752 = erased
-- Data.Nat.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1754 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1754 = erased
-- Data.Nat.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1756 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1756 = erased
-- Data.Nat.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1758 = erased
-- Data.Nat.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1760 = erased
-- Data.Nat.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1762 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1762 = erased
-- Data.Nat.Properties._.IsLoop.identity
d_identity_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1764 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3422 (coe v0)
-- Data.Nat.Properties._.IsLoop.identityʳ
d_identity'691'_1766 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1766 = erased
-- Data.Nat.Properties._.IsLoop.identityˡ
d_identity'737'_1768 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1768 = erased
-- Data.Nat.Properties._.IsLoop.isEquivalence
d_isEquivalence_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)))
-- Data.Nat.Properties._.IsLoop.isMagma
d_isMagma_1772 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1772 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Nat.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1774 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1774 v4
du_isPartialEquivalence_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1774 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Nat.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1776 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)
-- Data.Nat.Properties._.IsLoop.leftDivides
d_leftDivides_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Nat.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1780 = erased
-- Data.Nat.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1782 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1782 = erased
-- Data.Nat.Properties._.IsLoop.refl
d_refl_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1784 = erased
-- Data.Nat.Properties._.IsLoop.reflexive
d_reflexive_1786 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1786 = erased
-- Data.Nat.Properties._.IsLoop.rightDivides
d_rightDivides_1788 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Nat.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1790 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1790 = erased
-- Data.Nat.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1792 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1792 = erased
-- Data.Nat.Properties._.IsLoop.setoid
d_setoid_1794 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1794 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1794 v4
du_setoid_1794 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1794 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v1)))
-- Data.Nat.Properties._.IsLoop.sym
d_sym_1796 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1796 = erased
-- Data.Nat.Properties._.IsLoop.trans
d_trans_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1798 = erased
-- Data.Nat.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1800 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1800 = erased
-- Data.Nat.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1802 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1802 = erased
-- Data.Nat.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1804 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1804 = erased
-- Data.Nat.Properties._.IsMagma.isEquivalence
d_isEquivalence_1808 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1808 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0)
-- Data.Nat.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1810 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1810 ~v0 v1
  = du_isPartialEquivalence_1810 v1
du_isPartialEquivalence_1810 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1810 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0))
-- Data.Nat.Properties._.IsMagma.refl
d_refl_1812 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1812 = erased
-- Data.Nat.Properties._.IsMagma.reflexive
d_reflexive_1814 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1814 = erased
-- Data.Nat.Properties._.IsMagma.setoid
d_setoid_1816 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1816 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 v1
-- Data.Nat.Properties._.IsMagma.sym
d_sym_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1818 = erased
-- Data.Nat.Properties._.IsMagma.trans
d_trans_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1820 = erased
-- Data.Nat.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1822 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1822 = erased
-- Data.Nat.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1824 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1824 = erased
-- Data.Nat.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1826 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1826 = erased
-- Data.Nat.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Nat.Properties._.IsMedialMagma.isMagma
d_isMagma_1832 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1832 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0)
-- Data.Nat.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1834 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1834 ~v0 v1
  = du_isPartialEquivalence_1834 v1
du_isPartialEquivalence_1834 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1834 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsMedialMagma.medial
d_medial_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1836 = erased
-- Data.Nat.Properties._.IsMedialMagma.refl
d_refl_1838 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1838 = erased
-- Data.Nat.Properties._.IsMedialMagma.reflexive
d_reflexive_1840 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1840 = erased
-- Data.Nat.Properties._.IsMedialMagma.setoid
d_setoid_1842 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1842 ~v0 v1 = du_setoid_1842 v1
du_setoid_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Nat.Properties._.IsMedialMagma.sym
d_sym_1844 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1844 = erased
-- Data.Nat.Properties._.IsMedialMagma.trans
d_trans_1846 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1846 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1848 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1850 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1850 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1852 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1852 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1856 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1856 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1858 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1858 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1860 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1860 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1862 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1864 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1864 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1866 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1866 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.identity
d_identity_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Nat.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1870 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1870 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1872 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1872 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))))
-- Data.Nat.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1876 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1876 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)
-- Data.Nat.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1878 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1878 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1880 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1880 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1880 v4
du_isPartialEquivalence_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1880 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1886 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1886 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1888 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1888 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1890 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.refl
d_refl_1892 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1892 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1894 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1894 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1898 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1898 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1900 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.setoid
d_setoid_1902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1902 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1902 v4
du_setoid_1902 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1902 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Nat.Properties._.IsMiddleBolLoop.sym
d_sym_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1904 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.trans
d_trans_1906 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1906 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1908 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1908 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1910 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1910 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1912 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1912 = erased
-- Data.Nat.Properties._.IsMonoid.assoc
d_assoc_1916 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1916 = erased
-- Data.Nat.Properties._.IsMonoid.identity
d_identity_1918 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1918 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Data.Nat.Properties._.IsMonoid.identityʳ
d_identity'691'_1920 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1920 = erased
-- Data.Nat.Properties._.IsMonoid.identityˡ
d_identity'737'_1922 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1922 = erased
-- Data.Nat.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1924 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)))
-- Data.Nat.Properties._.IsMonoid.isMagma
d_isMagma_1926 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1926 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0))
-- Data.Nat.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1928 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1928 ~v0 ~v1 v2
  = du_isPartialEquivalence_1928 v2
du_isPartialEquivalence_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1928 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Nat.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1930 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1930 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Data.Nat.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1932 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1932 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758 v2
-- Data.Nat.Properties._.IsMonoid.refl
d_refl_1934 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1934 = erased
-- Data.Nat.Properties._.IsMonoid.reflexive
d_reflexive_1936 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1936 = erased
-- Data.Nat.Properties._.IsMonoid.setoid
d_setoid_1938 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1938 ~v0 ~v1 v2 = du_setoid_1938 v2
du_setoid_1938 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1938 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Nat.Properties._.IsMonoid.sym
d_sym_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1940 = erased
-- Data.Nat.Properties._.IsMonoid.trans
d_trans_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1942 = erased
-- Data.Nat.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1944 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1944 = erased
-- Data.Nat.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1946 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1946 = erased
-- Data.Nat.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1948 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1948 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1952 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1952 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1954 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1954 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1956 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1956 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1958 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1960 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1960 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1962 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1962 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identical
d_identical_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1964 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identity
d_identity_1966 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))
-- Data.Nat.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1968 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1968 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1970 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1970 = erased
-- Data.Nat.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1972 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1972 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLoop_3500
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))))
-- Data.Nat.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486
d_isLeftBolLoop_1974 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)
-- Data.Nat.Properties._.IsMoufangLoop.isLoop
d_isLoop_1976 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3500
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))
-- Data.Nat.Properties._.IsMoufangLoop.isMagma
d_isMagma_1978 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1978 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1980 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1980 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1980 v4
du_isPartialEquivalence_1980 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1980 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Nat.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1982 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))
-- Data.Nat.Properties._.IsMoufangLoop.leftBol
d_leftBol_1984 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1984 = erased
-- Data.Nat.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1988 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1988 = erased
-- Data.Nat.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1990 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1990 = erased
-- Data.Nat.Properties._.IsMoufangLoop.refl
d_refl_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1992 = erased
-- Data.Nat.Properties._.IsMoufangLoop.reflexive
d_reflexive_1994 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1994 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightBol
d_rightBol_1996 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1996 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_2000 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2000 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_2002 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2002 = erased
-- Data.Nat.Properties._.IsMoufangLoop.setoid
d_setoid_2004 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2004 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2004 v4
du_setoid_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2004 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v3)))))
-- Data.Nat.Properties._.IsMoufangLoop.sym
d_sym_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2006 = erased
-- Data.Nat.Properties._.IsMoufangLoop.trans
d_trans_2008 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2008 = erased
-- Data.Nat.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_2010 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2010 = erased
-- Data.Nat.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_2012 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2012 = erased
-- Data.Nat.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_2014 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2014 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_2018 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2018 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2020 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_2022 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2022 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_2024 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2024 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_2026 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2026 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326 v3
-- Data.Nat.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_2028 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2028 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328 v3
-- Data.Nat.Properties._.IsNearSemiring.assoc
d_assoc_2030 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2030 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2032 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_2034 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2034 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_2036 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2036 = erased
-- Data.Nat.Properties._.IsNearSemiring.identity
d_identity_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2038 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.identityʳ
d_identity'691'_2040 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2040 = erased
-- Data.Nat.Properties._.IsNearSemiring.identityˡ
d_identity'737'_2042 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2042 = erased
-- Data.Nat.Properties._.IsNearSemiring.isMagma
d_isMagma_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)))
-- Data.Nat.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_2046 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2046 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)
-- Data.Nat.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_2048 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2048 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_2050 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2050 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_2050 v3
du_isUnitalMagma_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2052 = erased
-- Data.Nat.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_2054 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))))
-- Data.Nat.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_2056 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2056 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2056 v3
du_isPartialEquivalence_2056 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2056 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsNearSemiring.refl
d_refl_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2058 = erased
-- Data.Nat.Properties._.IsNearSemiring.reflexive
d_reflexive_2060 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2060 = erased
-- Data.Nat.Properties._.IsNearSemiring.setoid
d_setoid_2062 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2062 ~v0 ~v1 ~v2 v3 = du_setoid_2062 v3
du_setoid_2062 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2062 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Nat.Properties._.IsNearSemiring.sym
d_sym_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2064 = erased
-- Data.Nat.Properties._.IsNearSemiring.trans
d_trans_2066 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2066 = erased
-- Data.Nat.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_2068 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2068 = erased
-- Data.Nat.Properties._.IsNearring.*-assoc
d_'42''45'assoc_2072 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2072 = erased
-- Data.Nat.Properties._.IsNearring.*-cong
d_'42''45'cong_2074 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2074 = erased
-- Data.Nat.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_2076 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2076 = erased
-- Data.Nat.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_2078 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2078 = erased
-- Data.Nat.Properties._.IsNearring.*-identity
d_'42''45'identity_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.identityʳ
d_identity'691'_2082 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2082 = erased
-- Data.Nat.Properties._.IsNearring.identityˡ
d_identity'737'_2084 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2084 = erased
-- Data.Nat.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_2086 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2086 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_2086 v5
du_'42''45'isMagma_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_2088 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2088 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_2088 v5
du_'42''45'isMonoid_2088 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_2088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_2090 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2090 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_2090 v5
du_'42''45'isSemigroup_2090 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2090 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.assoc
d_assoc_2092 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2092 = erased
-- Data.Nat.Properties._.IsNearring.∙-cong
d_'8729''45'cong_2094 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2094 = erased
-- Data.Nat.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_2096 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2096 = erased
-- Data.Nat.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_2098 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2098 = erased
-- Data.Nat.Properties._.IsNearring.identity
d_identity_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Nat.Properties._.IsNearring.identityʳ
d_identity'691'_2102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2102 = erased
-- Data.Nat.Properties._.IsNearring.identityˡ
d_identity'737'_2104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2104 = erased
-- Data.Nat.Properties._.IsNearring.+-inverse
d_'43''45'inverse_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_2106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2774 (coe v0)
-- Data.Nat.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_2108 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_2108 = erased
-- Data.Nat.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_2110 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_2110 = erased
-- Data.Nat.Properties._.IsNearring.isMagma
d_isMagma_2112 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))))
-- Data.Nat.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_2114 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.isSemigroup
d_isSemigroup_2116 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Nat.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_2118 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2118 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2118 v5
du_isUnitalMagma_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2118 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v1)))
-- Data.Nat.Properties._.IsNearring.distrib
d_distrib_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2292
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.distribʳ
d_distrib'691'_2122 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2122 = erased
-- Data.Nat.Properties._.IsNearring.distribˡ
d_distrib'737'_2124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2124 = erased
-- Data.Nat.Properties._.IsNearring.identityʳ
d_identity'691'_2126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2126 = erased
-- Data.Nat.Properties._.IsNearring.identityˡ
d_identity'737'_2128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2128 = erased
-- Data.Nat.Properties._.IsNearring.isEquivalence
d_isEquivalence_2130 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))))
-- Data.Nat.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_2132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2132 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2132 v5
du_isPartialEquivalence_2132 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2132 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Nat.Properties._.IsNearring.isQuasiring
d_isQuasiring_2134 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262
d_isQuasiring_2134 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)
-- Data.Nat.Properties._.IsNearring.refl
d_refl_2136 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2136 = erased
-- Data.Nat.Properties._.IsNearring.reflexive
d_reflexive_2138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2138 = erased
-- Data.Nat.Properties._.IsNearring.setoid
d_setoid_2140 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2140 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2140 v5
du_setoid_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2140 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Nat.Properties._.IsNearring.sym
d_sym_2142 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2142 = erased
-- Data.Nat.Properties._.IsNearring.trans
d_trans_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2144 = erased
-- Data.Nat.Properties._.IsNearring.zero
d_zero_2146 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2294
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Nat.Properties._.IsNearring.zeroʳ
d_zero'691'_2148 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2148 = erased
-- Data.Nat.Properties._.IsNearring.zeroˡ
d_zero'737'_2150 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2150 = erased
-- Data.Nat.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2152 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing._//_
d__'47''47'__2156 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> Integer -> Integer
d__'47''47'__2156 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2156 v0 v2
du__'47''47'__2156 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2156 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2158 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2160 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2162 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2648 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_2166 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_2166 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_2168 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_2168 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_2170 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2170 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2728 v5
-- Data.Nat.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_2172 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_'42''45'isUnitalMagma_2172 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734 v5
-- Data.Nat.Properties._.IsNonAssociativeRing.assoc
d_assoc_2174 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2174 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.comm
d_comm_2176 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2176 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_2178 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2178 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2180 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2180 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2182 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2182 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.identity
d_identity_2184 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
               (coe v0))))
-- Data.Nat.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_2186 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2186 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_2188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2188 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2190 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
      (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_2192 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2192 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2192 v5
du_isCommutativeMagma_2192 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2192 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_2194 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2194 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2194 v5
du_isCommutativeMonoid_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Nat.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2196 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2196 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2196 v5
du_isCommutativeSemigroup_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2196 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_2198 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Nat.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_2200 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2200 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2200 v5
du_isInvertibleMagma_2200 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2200 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2202 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2202 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2202 v5
du_isInvertibleUnitalMagma_2202 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2202 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
                  (coe v0)))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_2206 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
            (coe v0)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2208 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
               (coe v0))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_2210 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2210 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2210 v5
du_isUnitalMagma_2210 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2210 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Data.Nat.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_2212 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2212 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.inverse
d_inverse_2214 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
            (coe v0)))
-- Data.Nat.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_2216 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2216 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_2218 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2218 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.distrib
d_distrib_2220 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2220 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2650 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_2222 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2222 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_2224 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2224 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
                     (coe v0))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_2228 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2228 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2228 v5
du_isPartialEquivalence_2228 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2228 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.refl
d_refl_2230 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2230 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_2232 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2232 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.setoid
d_setoid_2234 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2234 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2234 v5
du_setoid_2234 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2234 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.sym
d_sym_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2236 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.trans
d_trans_2238 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2238 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2240 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2240 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2242 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2242 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.zero
d_zero_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2244 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2652 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_2246 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2246 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_2248 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2248 = erased
-- Data.Nat.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_2252 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2252 = erased
-- Data.Nat.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_2254 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2254 = erased
-- Data.Nat.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_2256 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2256 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_2258 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2258 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_2260 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2260 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_2262 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2262 = erased
-- Data.Nat.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Nat.Properties._.IsQuasigroup.isMagma
d_isMagma_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2266 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_2268 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2268 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2268 v3
du_isPartialEquivalence_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2268 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsQuasigroup.leftDivides
d_leftDivides_2270 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2270 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_3346 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_2272 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2272 = erased
-- Data.Nat.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_2274 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2274 = erased
-- Data.Nat.Properties._.IsQuasigroup.refl
d_refl_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2276 = erased
-- Data.Nat.Properties._.IsQuasigroup.reflexive
d_reflexive_2278 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2278 = erased
-- Data.Nat.Properties._.IsQuasigroup.rightDivides
d_rightDivides_2280 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2280 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_3348 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_2282 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2282 = erased
-- Data.Nat.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_2284 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2284 = erased
-- Data.Nat.Properties._.IsQuasigroup.setoid
d_setoid_2286 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2286 ~v0 ~v1 ~v2 v3 = du_setoid_2286 v3
du_setoid_2286 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Nat.Properties._.IsQuasigroup.sym
d_sym_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2288 = erased
-- Data.Nat.Properties._.IsQuasigroup.trans
d_trans_2290 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2290 = erased
-- Data.Nat.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_2292 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2292 = erased
-- Data.Nat.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_2294 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2294 = erased
-- Data.Nat.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_2296 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2296 = erased
-- Data.Nat.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2300 = erased
-- Data.Nat.Properties._.IsQuasiring.*-cong
d_'42''45'cong_2302 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2302 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2304 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2304 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2306 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2306 = erased
-- Data.Nat.Properties._.IsQuasiring.*-identity
d_'42''45'identity_2308 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.identityʳ
d_identity'691'_2310 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2310 = erased
-- Data.Nat.Properties._.IsQuasiring.identityˡ
d_identity'737'_2312 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2312 = erased
-- Data.Nat.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_2314 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2314 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344 v4
-- Data.Nat.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2316 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2316 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348 v4
-- Data.Nat.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2318 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2318 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346 v4
-- Data.Nat.Properties._.IsQuasiring.assoc
d_assoc_2320 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2320 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2322 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2324 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2324 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2326 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2326 = erased
-- Data.Nat.Properties._.IsQuasiring.identity
d_identity_2328 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.identityʳ
d_identity'691'_2330 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2330 = erased
-- Data.Nat.Properties._.IsQuasiring.identityˡ
d_identity'737'_2332 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2332 = erased
-- Data.Nat.Properties._.IsQuasiring.isMagma
d_isMagma_2334 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)))
-- Data.Nat.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2338 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2340 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2340 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2340 v4
du_isUnitalMagma_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.distrib
d_distrib_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2342 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2292 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2344 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2344 = erased
-- Data.Nat.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2346 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2346 = erased
-- Data.Nat.Properties._.IsQuasiring.identityʳ
d_identity'691'_2348 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2348 = erased
-- Data.Nat.Properties._.IsQuasiring.identityˡ
d_identity'737'_2350 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2350 = erased
-- Data.Nat.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))))
-- Data.Nat.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2354 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2354 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2354 v4
du_isPartialEquivalence_2354 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2354 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsQuasiring.refl
d_refl_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2356 = erased
-- Data.Nat.Properties._.IsQuasiring.reflexive
d_reflexive_2358 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2358 = erased
-- Data.Nat.Properties._.IsQuasiring.setoid
d_setoid_2360 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2360 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2360 v4
du_setoid_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2360 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Nat.Properties._.IsQuasiring.sym
d_sym_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2362 = erased
-- Data.Nat.Properties._.IsQuasiring.trans
d_trans_2364 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2364 = erased
-- Data.Nat.Properties._.IsQuasiring.zero
d_zero_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2366 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2294 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2368 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2368 = erased
-- Data.Nat.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2370 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2370 = erased
-- Data.Nat.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2374 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2374 = erased
-- Data.Nat.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2376 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2376 = erased
-- Data.Nat.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2378 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2378 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2380 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2382 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2382 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2384 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2384 = erased
-- Data.Nat.Properties._.IsRightBolLoop.identity
d_identity_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Nat.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2388 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2388 = erased
-- Data.Nat.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2390 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2390 = erased
-- Data.Nat.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_2392 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))))
-- Data.Nat.Properties._.IsRightBolLoop.isLoop
d_isLoop_2394 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_2394 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)
-- Data.Nat.Properties._.IsRightBolLoop.isMagma
d_isMagma_2396 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2398 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2398 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2398 v4
du_isPartialEquivalence_2398 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2398 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Data.Nat.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_2400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Nat.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2404 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2404 = erased
-- Data.Nat.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2406 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2406 = erased
-- Data.Nat.Properties._.IsRightBolLoop.refl
d_refl_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2408 = erased
-- Data.Nat.Properties._.IsRightBolLoop.reflexive
d_reflexive_2410 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2410 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightBol
d_rightBol_2412 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2412 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2416 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2418 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2418 = erased
-- Data.Nat.Properties._.IsRightBolLoop.setoid
d_setoid_2420 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2420 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2420 v4
du_setoid_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2420 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Nat.Properties._.IsRightBolLoop.sym
d_sym_2422 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2422 = erased
-- Data.Nat.Properties._.IsRightBolLoop.trans
d_trans_2424 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2424 = erased
-- Data.Nat.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2426 = erased
-- Data.Nat.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2428 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2428 = erased
-- Data.Nat.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2430 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2430 = erased
-- Data.Nat.Properties._.IsRing._//_
d__'47''47'__2434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> Integer -> Integer
d__'47''47'__2434 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2434 v0 v2
du__'47''47'__2434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2434 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsRing.*-assoc
d_'42''45'assoc_2436 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2436 = erased
-- Data.Nat.Properties._.IsRing.*-cong
d_'42''45'cong_2438 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2438 = erased
-- Data.Nat.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2440 = erased
-- Data.Nat.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2442 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2442 = erased
-- Data.Nat.Properties._.IsRing.*-identity
d_'42''45'identity_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896 (coe v0)
-- Data.Nat.Properties._.IsRing.identityʳ
d_identity'691'_2446 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2446 = erased
-- Data.Nat.Properties._.IsRing.identityˡ
d_identity'737'_2448 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2448 = erased
-- Data.Nat.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2450 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2450 v0 v1 v2 v3 v5
du_'42''45'isMagma_2450 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2450 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2452 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 v0 v1 v2
      v3 v5
-- Data.Nat.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2454 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2454 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2454 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2454 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2454 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Nat.Properties._.IsRing.assoc
d_assoc_2456 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2456 = erased
-- Data.Nat.Properties._.IsRing.comm
d_comm_2458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2458 = erased
-- Data.Nat.Properties._.IsRing.∙-cong
d_'8729''45'cong_2460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2460 = erased
-- Data.Nat.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2462 = erased
-- Data.Nat.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2464 = erased
-- Data.Nat.Properties._.IsRing.identity
d_identity_2466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2466 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2466 v5
du_identity_2466 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v0))))
-- Data.Nat.Properties._.IsRing.identityʳ
d_identity'691'_2468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2468 = erased
-- Data.Nat.Properties._.IsRing.identityˡ
d_identity'737'_2470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2470 = erased
-- Data.Nat.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2472 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe v0)
-- Data.Nat.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2474 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2474 v5
du_isCommutativeMagma_2474 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2474 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
                  (coe v3)))))
-- Data.Nat.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2476 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2476 v5
du_isCommutativeMonoid_2476 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2476 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v1)))
-- Data.Nat.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2478 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2478 v5
du_isCommutativeSemigroup_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2478 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
               (coe v2))))
-- Data.Nat.Properties._.IsRing.isGroup
d_isGroup_2480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2480 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2480 v5
du_isGroup_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_2480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
         (coe v0))
-- Data.Nat.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2482 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2482 v5
du_isInvertibleMagma_2482 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2482 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2))))
-- Data.Nat.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2484 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2484 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2484 v5
du_isInvertibleUnitalMagma_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2484 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2))))
-- Data.Nat.Properties._.IsRing.isMagma
d_isMagma_2486 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2486 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2486 v5
du_isMagma_2486 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_2486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                  (coe v0)))))
-- Data.Nat.Properties._.IsRing.isMonoid
d_isMonoid_2488 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2488 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2488 v5
du_isMonoid_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_2488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v0)))
-- Data.Nat.Properties._.IsRing.isSemigroup
d_isSemigroup_2490 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2490 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2490 v5
du_isSemigroup_2490 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_2490 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v0))))
-- Data.Nat.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2492 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2492 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2492 v5
du_isUnitalMagma_2492 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2492 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v3)))))
-- Data.Nat.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2494 = erased
-- Data.Nat.Properties._.IsRing.inverse
d_inverse_2496 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2496 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2496 v5
du_inverse_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v0)))
-- Data.Nat.Properties._.IsRing.inverseʳ
d_inverse'691'_2498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2498 = erased
-- Data.Nat.Properties._.IsRing.inverseˡ
d_inverse'737'_2500 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2500 = erased
-- Data.Nat.Properties._.IsRing.distrib
d_distrib_2502 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2502 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2898 (coe v0)
-- Data.Nat.Properties._.IsRing.distribʳ
d_distrib'691'_2504 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2504 = erased
-- Data.Nat.Properties._.IsRing.distribˡ
d_distrib'737'_2506 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2506 = erased
-- Data.Nat.Properties._.IsRing.isEquivalence
d_isEquivalence_2508 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2508 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2508 v5
du_isEquivalence_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_2508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe v0))))))
-- Data.Nat.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2510 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2510 v0 v1 v2 v3 v5
du_isNearSemiring_2510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2510 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Nat.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2512 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2512 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2512 v5
du_isPartialEquivalence_2512 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2512 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v6))))))))
-- Data.Nat.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2514 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_2514 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 v5
-- Data.Nat.Properties._.IsRing.isSemiring
d_isSemiring_2516 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_2516 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 v0 v1 v2 v3 v5
-- Data.Nat.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2518 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2518 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      v5
-- Data.Nat.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2520 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2520 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2520 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2520 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2520 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsRing.refl
d_refl_2522 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2522 = erased
-- Data.Nat.Properties._.IsRing.reflexive
d_reflexive_2524 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2524 = erased
-- Data.Nat.Properties._.IsRing.setoid
d_setoid_2526 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2526 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2526 v5
du_setoid_2526 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2526 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_204
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v5)))))))
-- Data.Nat.Properties._.IsRing.sym
d_sym_2528 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2528 = erased
-- Data.Nat.Properties._.IsRing.trans
d_trans_2530 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2530 = erased
-- Data.Nat.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2532 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2532 = erased
-- Data.Nat.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2534 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2534 = erased
-- Data.Nat.Properties._.IsRing.zero
d_zero_2536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2536 v0 v1 v2 v3 ~v4 v5 = du_zero_2536 v0 v1 v2 v3 v5
du_zero_2536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2536 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Nat.Properties._.IsRing.zeroʳ
d_zero'691'_2538 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2538 = erased
-- Data.Nat.Properties._.IsRing.zeroˡ
d_zero'737'_2540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2540 = erased
-- Data.Nat.Properties._.IsRingWithoutOne._//_
d__'47''47'__2544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> Integer -> Integer
d__'47''47'__2544 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2544 v0 v2
du__'47''47'__2544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2544 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Nat.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2546 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2546 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2548 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2548 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2550 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2552 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2552 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2554 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2554 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2556 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2556 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.Properties._.IsRingWithoutOne.assoc
d_assoc_2558 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2558 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.comm
d_comm_2560 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2560 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2562 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2562 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2564 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2566 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2566 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.identity
d_identity_2568 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2568 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v0))))
-- Data.Nat.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2570 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2572 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2574 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2574 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
      (coe v0)
-- Data.Nat.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2576 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2576 v4
du_isCommutativeMagma_2576 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2576 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Nat.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2578 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMonoid_2578 v4
du_isCommutativeMonoid_2578 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Nat.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2580 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2580 v4
du_isCommutativeSemigroup_2580 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2580 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Data.Nat.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2582 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2582 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Nat.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2584 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleMagma_2584 v4
du_isInvertibleMagma_2584 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2584 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Nat.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2586 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleUnitalMagma_2586 v4
du_isInvertibleUnitalMagma_2586 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2586 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Nat.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2588 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                  (coe v0)))))
-- Data.Nat.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2590 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v0)))
-- Data.Nat.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2592 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v0))))
-- Data.Nat.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2594 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2594 v4
du_isUnitalMagma_2594 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2594 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Data.Nat.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2596 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2596 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.inverse
d_inverse_2598 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v0)))
-- Data.Nat.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2600 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2602 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2602 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.distrib
d_distrib_2604 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2604 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2520 (coe v0)
-- Data.Nat.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2606 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2608 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2608 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2610 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
                     (coe v0))))))
-- Data.Nat.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2612 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2612
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598
-- Data.Nat.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2614 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2614 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2614 v4
du_isPartialEquivalence_2614 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2614 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Data.Nat.Properties._.IsRingWithoutOne.refl
d_refl_2616 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2616 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2618 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2618 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.setoid
d_setoid_2620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2620 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2620 v4
du_setoid_2620 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2620 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Nat.Properties._.IsRingWithoutOne.sym
d_sym_2622 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2622 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.trans
d_trans_2624 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2624 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2626 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2626 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2628 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2628 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.zero
d_zero_2630 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2630 = coe MAlonzo.Code.Algebra.Structures.du_zero_2596
-- Data.Nat.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2632 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2632 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2634 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2638 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Nat.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2640 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2640 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0)
-- Data.Nat.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2642 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2642 ~v0 v1
  = du_isPartialEquivalence_2642 v1
du_isPartialEquivalence_2642 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2642 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsSelectiveMagma.refl
d_refl_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2644 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2646 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2646 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.sel
d_sel_2648 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2648 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_462 (coe v0)
-- Data.Nat.Properties._.IsSelectiveMagma.setoid
d_setoid_2650 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2650 ~v0 v1 = du_setoid_2650 v1
du_setoid_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Nat.Properties._.IsSelectiveMagma.sym
d_sym_2652 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2652 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.trans
d_trans_2654 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2654 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2656 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2658 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2658 = erased
-- Data.Nat.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2660 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2660 = erased
-- Data.Nat.Properties._.IsSemigroup.assoc
d_assoc_2664 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2664 = erased
-- Data.Nat.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2666 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Nat.Properties._.IsSemigroup.isMagma
d_isMagma_2668 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2668 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Data.Nat.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2670 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2670 ~v0 v1
  = du_isPartialEquivalence_2670 v1
du_isPartialEquivalence_2670 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2670 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsSemigroup.refl
d_refl_2672 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2672 = erased
-- Data.Nat.Properties._.IsSemigroup.reflexive
d_reflexive_2674 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2674 = erased
-- Data.Nat.Properties._.IsSemigroup.setoid
d_setoid_2676 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2676 ~v0 v1 = du_setoid_2676 v1
du_setoid_2676 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Nat.Properties._.IsSemigroup.sym
d_sym_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2678 = erased
-- Data.Nat.Properties._.IsSemigroup.trans
d_trans_2680 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2680 = erased
-- Data.Nat.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2682 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2682 = erased
-- Data.Nat.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2684 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2684 = erased
-- Data.Nat.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2686 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2686 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2690 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Nat.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2692 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2692 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0)
-- Data.Nat.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2694 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2694 ~v0 v1
  = du_isPartialEquivalence_2694 v1
du_isPartialEquivalence_2694 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2694 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsSemimedialMagma.refl
d_refl_2696 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2696 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2698 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2698 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2700 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2700 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_420 (coe v0)
-- Data.Nat.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2702 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2702 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2704 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2704 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.setoid
d_setoid_2706 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2706 ~v0 v1 = du_setoid_2706 v1
du_setoid_2706 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2706 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Nat.Properties._.IsSemimedialMagma.sym
d_sym_2708 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2708 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.trans
d_trans_2710 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2710 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2712 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2712 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2714 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2714 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2716 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2716 = erased
-- Data.Nat.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2720 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2720 = erased
-- Data.Nat.Properties._.IsSemiring.*-cong
d_'42''45'cong_2722 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2722 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2724 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2724 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2726 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2726 = erased
-- Data.Nat.Properties._.IsSemiring.*-identity
d_'42''45'identity_2728 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.identityʳ
d_identity'691'_2730 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2730 = erased
-- Data.Nat.Properties._.IsSemiring.identityˡ
d_identity'737'_2732 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2732 = erased
-- Data.Nat.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2734 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_2734 v4
du_'42''45'isMagma_2734 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2736 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2736 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_2736 v4
du_'42''45'isMonoid_2736 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_2736 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2738 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_2738 v4
du_'42''45'isSemigroup_2738 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.assoc
d_assoc_2740 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2740 = erased
-- Data.Nat.Properties._.IsSemiring.comm
d_comm_2742 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2742 = erased
-- Data.Nat.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2744 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2744 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2746 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2746 = erased
-- Data.Nat.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2748 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2748 = erased
-- Data.Nat.Properties._.IsSemiring.identity
d_identity_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v0))))
-- Data.Nat.Properties._.IsSemiring.identityʳ
d_identity'691'_2752 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2752 = erased
-- Data.Nat.Properties._.IsSemiring.identityˡ
d_identity'737'_2754 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2754 = erased
-- Data.Nat.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2756 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2756 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2756 v4
du_isCommutativeMagma_2756 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2756 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Data.Nat.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2758 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2760 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2760 v4
du_isCommutativeSemigroup_2760 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2760 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v1)))
-- Data.Nat.Properties._.IsSemiring.isMagma
d_isMagma_2762 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiring.isMonoid
d_isMonoid_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v0)))
-- Data.Nat.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2766 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v0))))
-- Data.Nat.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2768 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2768 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2768 v4
du_isUnitalMagma_2768 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2768 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2))))
-- Data.Nat.Properties._.IsSemiring.distrib
d_distrib_2770 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.distribʳ
d_distrib'691'_2772 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2772 = erased
-- Data.Nat.Properties._.IsSemiring.distribˡ
d_distrib'737'_2774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2774 = erased
-- Data.Nat.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2776 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
                     (coe v0))))))
-- Data.Nat.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2778 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2778 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_2778 v4
du_isNearSemiring_2778 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2780 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2780 v4
du_isPartialEquivalence_2780 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2780 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Data.Nat.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2782 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2782 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe v0)
-- Data.Nat.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2784 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2784 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732 v4
-- Data.Nat.Properties._.IsSemiring.refl
d_refl_2786 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2786 = erased
-- Data.Nat.Properties._.IsSemiring.reflexive
d_reflexive_2788 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2788 = erased
-- Data.Nat.Properties._.IsSemiring.setoid
d_setoid_2790 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2790 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2790 v4
du_setoid_2790 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2790 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Data.Nat.Properties._.IsSemiring.sym
d_sym_2792 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2792 = erased
-- Data.Nat.Properties._.IsSemiring.trans
d_trans_2794 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2794 = erased
-- Data.Nat.Properties._.IsSemiring.zero
d_zero_2796 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2796 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1658 (coe v0)
-- Data.Nat.Properties._.IsSemiring.zeroʳ
d_zero'691'_2798 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2798 = erased
-- Data.Nat.Properties._.IsSemiring.zeroˡ
d_zero'737'_2800 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2800 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2804 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2804 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2806 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2806 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2808 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2808 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2810 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2810 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2812 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2814 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2814 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2816 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2816 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2818 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2818 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616 v4
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2820 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2820 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620 v4
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2822 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2822 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618 v4
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2824 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2824 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2826 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2826 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2828 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2828 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2830 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2830 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2832 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2832 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2834 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2836 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2836 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2838 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2838 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2840 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2840 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2840 v4
du_isCommutativeMagma_2840 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2840 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2842 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2844 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2844 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2844 v4
du_isCommutativeSemigroup_2844 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2846 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v0))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2848 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2850 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2852 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2852 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2852 v4
du_isUnitalMagma_2852 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2852 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2854 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2854 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1566 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2856 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2856 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2858 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2858 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2860 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2862 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2862 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2862 v4
du_isPartialEquivalence_2862 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2862 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2864 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2864 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2866 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2866 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2868 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2868 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2868 v4
du_setoid_2868 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2868 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2870 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2870 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2872 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2872 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2876 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2876 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2878 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2878 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2880 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2880 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2882 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2882 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2884 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2884 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412 v3
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2886 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2886 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414 v3
-- Data.Nat.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2888 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2888 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.comm
d_comm_2890 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2890 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2892 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2892 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2894 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2894 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2896 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2896 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.identity
d_identity_2898 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2898 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2900 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2902 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2904 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2904 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_2904 v3
du_isCommutativeMagma_2904 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2904 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Nat.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2906 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2908 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_2908 v3
du_isCommutativeSemigroup_2908 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2908 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2910 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2910 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2912 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2912 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1368 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2914 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2914 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2916 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2916 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.isEquivalence
d_isEquivalence_2918 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2918 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_776
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2920 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2920 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430 v3
-- Data.Nat.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2922 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2922 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2922 v3
du_isPartialEquivalence_2922 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2922 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
                     (coe v0))))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.refl
d_refl_2924 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2924 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2926 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2926 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2928 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2928 ~v0 ~v1 ~v2 v3 = du_setoid_2928 v3
du_setoid_2928 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2928 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.sym
d_sym_2930 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2930 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.trans
d_trans_2932 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2932 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.zero
d_zero_2934 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2934 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1370 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2936 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2936 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2938 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2938 = erased
-- Data.Nat.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2942 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2942 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0)
-- Data.Nat.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2944 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2944 ~v0 ~v1 v2
  = du_isPartialEquivalence_2944 v2
du_isPartialEquivalence_2944 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2944 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0))
-- Data.Nat.Properties._.IsSuccessorSet.refl
d_refl_2946 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2946 = erased
-- Data.Nat.Properties._.IsSuccessorSet.reflexive
d_reflexive_2948 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2948 = erased
-- Data.Nat.Properties._.IsSuccessorSet.setoid
d_setoid_2950 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2950 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_174 v2
-- Data.Nat.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2952 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2952 = erased
-- Data.Nat.Properties._.IsSuccessorSet.sym
d_sym_2954 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2954 = erased
-- Data.Nat.Properties._.IsSuccessorSet.trans
d_trans_2956 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2956 = erased
-- Data.Nat.Properties._.IsUnitalMagma.identity
d_identity_2960 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2960 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_680 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2962 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2962 = erased
-- Data.Nat.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2964 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2964 = erased
-- Data.Nat.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2966 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Nat.Properties._.IsUnitalMagma.isMagma
d_isMagma_2968 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2968 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2970 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2970 ~v0 ~v1 v2
  = du_isPartialEquivalence_2970 v2
du_isPartialEquivalence_2970 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2970 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Nat.Properties._.IsUnitalMagma.refl
d_refl_2972 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2972 = erased
-- Data.Nat.Properties._.IsUnitalMagma.reflexive
d_reflexive_2974 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2974 = erased
-- Data.Nat.Properties._.IsUnitalMagma.setoid
d_setoid_2976 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2976 ~v0 ~v1 v2 = du_setoid_2976 v2
du_setoid_2976 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Nat.Properties._.IsUnitalMagma.sym
d_sym_2978 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2978 = erased
-- Data.Nat.Properties._.IsUnitalMagma.trans
d_trans_2980 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2980 = erased
-- Data.Nat.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2982 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2982 = erased
-- Data.Nat.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2984 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2984 = erased
-- Data.Nat.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2986 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2986 = erased
-- Data.Nat.Properties.nonZero?
d_nonZero'63'_2996 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonZero'63'_2996 v0
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
                   MAlonzo.Code.Data.Nat.Base.C_constructor_120
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Nat.Properties.nonTrivial?
d_nonTrivial'63'_3000 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonTrivial'63'_3000 v0
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
                   MAlonzo.Code.Data.Nat.Base.C_constructor_162
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Nat.Properties.suc-injective
d_suc'45'injective_3004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_3004 = erased
-- Data.Nat.Properties.≡ᵇ⇒≡
d_'8801''7495''8658''8801'_3010 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7495''8658''8801'_3010 = erased
-- Data.Nat.Properties.≡⇒≡ᵇ
d_'8801''8658''8801''7495'_3022 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8658''8801''7495'_3022 v0 ~v1 ~v2
  = du_'8801''8658''8801''7495'_3022 v0
du_'8801''8658''8801''7495'_3022 :: Integer -> AgdaAny
du_'8801''8658''8801''7495'_3022 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'8801''8658''8801''7495'_3022 (coe v1))
-- Data.Nat.Properties._≟_
d__'8799'__3032 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__3032 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      erased (\ v2 -> coe du_'8801''8658''8801''7495'_3022 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
         (coe eqInt (coe v0) (coe v1)))
-- Data.Nat.Properties.≡-irrelevant
d_'8801''45'irrelevant_3038 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'irrelevant_3038 = erased
-- Data.Nat.Properties.≟-diag
d_'8799''45'diag_3042 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45'diag_3042 = erased
-- Data.Nat.Properties.≟-≡
d_'8799''45''8801'_3046 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45''8801'_3046 = erased
-- Data.Nat.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_3048 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
d_'8801''45'isDecEquivalence_3048
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_70
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (coe d__'8799'__3032)
-- Data.Nat.Properties.≡-decSetoid
d_'8801''45'decSetoid_3050 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_'8801''45'decSetoid_3050
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_134
      d_'8801''45'isDecEquivalence_3048
-- Data.Nat.Properties.0≢1+n
d_0'8802'1'43'n_3052 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_0'8802'1'43'n_3052 = erased
-- Data.Nat.Properties.1+n≢0
d_1'43'n'8802'0_3054 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8802'0_3054 = erased
-- Data.Nat.Properties.1+n≢n
d_1'43'n'8802'n_3056 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8802'n_3056 = erased
-- Data.Nat.Properties.<ᵇ⇒<
d_'60''7495''8658''60'_3064 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''7495''8658''60'_3064 v0 ~v1 ~v2
  = du_'60''7495''8658''60'_3064 v0
du_'60''7495''8658''60'_3064 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''7495''8658''60'_3064 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'60''7495''8658''60'_3064 (coe v1)))
-- Data.Nat.Properties.<⇒<ᵇ
d_'60''8658''60''7495'_3076 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_'60''8658''60''7495'_3076 ~v0 ~v1 v2
  = du_'60''8658''60''7495'_3076 v2
du_'60''8658''60''7495'_3076 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_'60''8658''60''7495'_3076 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    du_'60''8658''60''7495'_3076
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<ᵇ-reflects-<
d_'60''7495''45'reflects'45''60'_3084 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_'60''7495''45'reflects'45''60'_3084 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_136
      (coe ltInt (coe v0) (coe v1))
      (\ v2 -> coe du_'60''7495''8658''60'_3064 (coe v0))
      (coe du_'60''8658''60''7495'_3076)
-- Data.Nat.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_3094 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''7495''8658''8804'_3094 v0 ~v1 ~v2
  = du_'8804''7495''8658''8804'_3094 v0
du_'8804''7495''8658''8804'_3094 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''7495''8658''8804'_3094 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'60''7495''8658''60'_3064 (coe v1))
-- Data.Nat.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_3106 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_'8804''8658''8804''7495'_3106 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_3106 v2
du_'8804''8658''8804''7495'_3106 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_'8804''8658''8804''7495'_3106 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> coe
             du_'60''8658''60''7495'_3076
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤ᵇ-reflects-≤
d_'8804''7495''45'reflects'45''8804'_3114 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_'8804''7495''45'reflects'45''8804'_3114 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_136
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
      (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
      (coe du_'8804''8658''8804''7495'_3106)
-- Data.Nat.Properties.≰⇒≥
d_'8816''8658''8805'_3120 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8816''8658''8805'_3120 v0 v1 ~v2
  = du_'8816''8658''8805'_3120 v0 v1
du_'8816''8658''8805'_3120 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8816''8658''8805'_3120 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8816''8658''8805'_3120 (coe v3) (coe v2))))
-- Data.Nat.Properties.≤-reflexive
d_'8804''45'reflexive_3136 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'reflexive_3136 v0 ~v1 ~v2
  = du_'8804''45'reflexive_3136 v0
du_'8804''45'reflexive_3136 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'reflexive_3136 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'8804''45'reflexive_3136 (coe v1)))
-- Data.Nat.Properties.≤-refl
d_'8804''45'refl_3140 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'refl_3140 v0 = coe du_'8804''45'reflexive_3136 (coe v0)
-- Data.Nat.Properties.≤-antisym
d_'8804''45'antisym_3142 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3142 = erased
-- Data.Nat.Properties.≤-trans
d_'8804''45'trans_3148 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'trans_3148 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_3148 v3 v4
du_'8804''45'trans_3148 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'trans_3148 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''45'trans_3148 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-irrelevant
d_'8804''45'irrelevant_3154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3154 = erased
-- Data.Nat.Properties._≤?_
d__'8804''63'__3160 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3160 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
      (coe du_'8804''8658''8804''7495'_3106)
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
         (coe
            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1)))
-- Data.Nat.Properties._≥?_
d__'8805''63'__3166 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__3166 v0 v1
  = coe d__'8804''63'__3160 (coe v1) (coe v0)
-- Data.Nat.Properties.≤-total
d_'8804''45'total_3168 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3168 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
              (coe du_'8804''8658''8804''7495'_3106)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0)
                    (coe v1))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v4))
                else coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe du_'8816''8658''8805'_3120 (coe v0) (coe v1))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≤-isPreorder
d_'8804''45'isPreorder_3190 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_3190
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3136 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_3148 v3 v4)
-- Data.Nat.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_3192 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_132
d_'8804''45'isTotalPreorder_3192
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_178
      (coe d_'8804''45'isPreorder_3190) (coe d_'8804''45'total_3168)
-- Data.Nat.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3194 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_3194
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe d_'8804''45'isPreorder_3190) erased
-- Data.Nat.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3196 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_3196
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe d_'8804''45'isPartialOrder_3194) (coe d_'8804''45'total_3168)
-- Data.Nat.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3198 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'8804''45'isDecTotalOrder_3198
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe d_'8804''45'isTotalOrder_3196) (coe d__'8799'__3032)
      (coe d__'8804''63'__3160)
-- Data.Nat.Properties.≤-preorder
d_'8804''45'preorder_3200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8804''45'preorder_3200
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      d_'8804''45'isPreorder_3190
-- Data.Nat.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_3202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240
d_'8804''45'totalPreorder_3202
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_334
      d_'8804''45'isTotalPreorder_3192
-- Data.Nat.Properties.≤-poset
d_'8804''45'poset_3204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8804''45'poset_3204
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      d_'8804''45'isPartialOrder_3194
-- Data.Nat.Properties.≤-totalOrder
d_'8804''45'totalOrder_3206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'8804''45'totalOrder_3206
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      d_'8804''45'isTotalOrder_3196
-- Data.Nat.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8804''45'decTotalOrder_3208
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      d_'8804''45'isDecTotalOrder_3198
-- Data.Nat.Properties.s≤s-injective
d_s'8804's'45'injective_3214 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'8804's'45'injective_3214 = erased
-- Data.Nat.Properties.suc[m]≤n⇒m≤pred[n]
d_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_3216 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_3216 ~v0 v1
  = du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_3216 v1
du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_3216 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_3216 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)
      _ -> coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
-- Data.Nat.Properties.m≤pred[n]⇒suc[m]≤n
d_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_3218 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_3218 v0 ~v1 ~v2
  = du_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_3218 v0
du_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_3218 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'pred'91'n'93''8658'suc'91'm'93''8804'n_3218 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)
      _ -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
-- Data.Nat.Properties.≤-pred
d_'8804''45'pred_3220 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'pred_3220 ~v0 v1 = du_'8804''45'pred_3220 v1
du_'8804''45'pred_3220 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'pred_3220 v0
  = coe
      du_suc'91'm'93''8804'n'8658'm'8804'pred'91'n'93'_3216
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m≤n⇒m≤1+n
d_m'8804'n'8658'm'8804'1'43'n_3222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'1'43'n_3222 ~v0 ~v1 v2
  = du_m'8804'n'8658'm'8804'1'43'n_3222 v2
du_m'8804'n'8658'm'8804'1'43'n_3222 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'1'43'n_3222 v0 = coe v0
-- Data.Nat.Properties.n≤1+n
d_n'8804'1'43'n_3228 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'1'43'n_3228 v0 = coe d_'8804''45'refl_3140 (coe v0)
-- Data.Nat.Properties.1+n≰n
d_1'43'n'8816'n_3230 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8816'n_3230 = erased
-- Data.Nat.Properties.n≤0⇒n≡0
d_n'8804'0'8658'n'8801'0_3234 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8804'0'8658'n'8801'0_3234 = erased
-- Data.Nat.Properties.n≤1⇒n≡0∨n≡1
d_n'8804'1'8658'n'8801'0'8744'n'8801'1_3236 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_n'8804'1'8658'n'8801'0'8744'n'8801'1_3236 ~v0 v1
  = du_n'8804'1'8658'n'8801'0'8744'n'8801'1_3236 v1
du_n'8804'1'8658'n'8801'0'8744'n'8801'1_3236 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_n'8804'1'8658'n'8801'0'8744'n'8801'1_3236 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> coe
             seq (coe v3) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≤
d_'60''8658''8804'_3238 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'_3238 ~v0 ~v1 v2 = du_'60''8658''8804'_3238 v2
du_'60''8658''8804'_3238 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'_3238 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'60''8658''8804'_3238
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≢
d_'60''8658''8802'_3242 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_3242 = erased
-- Data.Nat.Properties.>⇒≢
d_'62''8658''8802'_3246 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8802'_3246 = erased
-- Data.Nat.Properties.≤⇒≯
d_'8804''8658''8815'_3248 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_3248 = erased
-- Data.Nat.Properties.<⇒≱
d_'60''8658''8817'_3254 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_3254 = erased
-- Data.Nat.Properties.<⇒≯
d_'60''8658''8815'_3260 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8815'_3260 = erased
-- Data.Nat.Properties.≰⇒≮
d_'8816''8658''8814'_3266 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''8658''8814'_3266 = erased
-- Data.Nat.Properties.≰⇒>
d_'8816''8658''62'_3272 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8816''8658''62'_3272 v0 v1 ~v2 = du_'8816''8658''62'_3272 v0 v1
du_'8816''8658''62'_3272 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8816''8658''62'_3272 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
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
                          (coe du_'8816''8658''62'_3272 (coe v2) (coe v3))))
-- Data.Nat.Properties.≮⇒≥
d_'8814''8658''8805'_3284 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8814''8658''8805'_3284 v0 v1 ~v2
  = du_'8814''8658''8805'_3284 v0 v1
du_'8814''8658''8805'_3284 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8814''8658''8805'_3284 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8814''8658''8805'_3284 (coe v3) (coe v2))))
-- Data.Nat.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_3300 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8743''8802''8658''60'_3300 ~v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_3300 v1 v2
du_'8804''8743''8802''8658''60'_3300 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8743''8802''8658''60'_3300 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
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
                       (coe du_'8804''8743''8802''8658''60'_3300 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_3318 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_3318 = erased
-- Data.Nat.Properties.≤-<-connex
d_'8804''45''60''45'connex_3324 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45''60''45'connex_3324 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
              (coe du_'8804''8658''8804''7495'_3106)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
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
                          (coe du_'8816''8658''62'_3272 (coe v0) (coe v1)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≥->-connex
d_'8805''45''62''45'connex_3346 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8805''45''62''45'connex_3346 v0 v1
  = coe d_'8804''45''60''45'connex_3324 (coe v1) (coe v0)
-- Data.Nat.Properties.<-≤-connex
d_'60''45''8804''45'connex_3348 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'60''45''8804''45'connex_3348
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_910
      (coe d_'8804''45''60''45'connex_3324)
-- Data.Nat.Properties.>-≥-connex
d_'62''45''8805''45'connex_3350 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'62''45''8805''45'connex_3350
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_910
      (coe d_'8805''45''62''45'connex_3346)
-- Data.Nat.Properties.<-irrefl
d_'60''45'irrefl_3352 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3352 = erased
-- Data.Nat.Properties.<-asym
d_'60''45'asym_3356 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3356 = erased
-- Data.Nat.Properties.<-trans
d_'60''45'trans_3362 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans_3362 ~v0 v1 ~v2 v3 v4
  = du_'60''45'trans_3362 v1 v3 v4
du_'60''45'trans_3362 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'trans_3362 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe
                          du_'8804''45'trans_3148 (coe v5)
                          (coe
                             du_'8804''45'trans_3148 (coe d_n'8804'1'43'n_3228 (coe v6))
                             (coe v9)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-<-trans
d_'8804''45''60''45'trans_3368 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45''60''45'trans_3368 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45''60''45'trans_3368 v3 v4
du_'8804''45''60''45'trans_3368 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45''60''45'trans_3368 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_'8804''45'trans_3148 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-≤-trans
d_'60''45''8804''45'trans_3374 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45''8804''45'trans_3374 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45''8804''45'trans_3374 v3 v4
du_'60''45''8804''45'trans_3374 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45''8804''45'trans_3374 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''45'trans_3148 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-cmp
d_'60''45'cmp_3380 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3380 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              erased (\ v2 -> coe du_'8801''8658''8801''7495'_3022 (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
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
                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                       (coe du_'60''7495''8658''60'_3064 (coe v0)))
                             else coe
                                    seq
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                       (coe
                                          du_'8804''8743''8802''8658''60'_3300 (coe v0)
                                          (coe du_'8814''8658''8805'_3284 (coe v0) (coe v1))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties._<?_
d__'60''63'__3412 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3412 v0 v1
  = coe
      d__'8804''63'__3160 (coe addInt (coe (1 :: Integer)) (coe v0))
      (coe v1)
-- Data.Nat.Properties._>?_
d__'62''63'__3418 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__3418 v0 v1 = coe d__'60''63'__3412 (coe v1) (coe v0)
-- Data.Nat.Properties.<-irrelevant
d_'60''45'irrelevant_3420 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3420 = erased
-- Data.Nat.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_3422 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_3422
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3428 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'60''45'isStrictPartialOrder_3428
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3362 v1 v3 v4)
      d_'60''45'resp'8322''45''8801'_3422
-- Data.Nat.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3430 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''45'isStrictTotalOrder_3430
  = coe
      MAlonzo.Code.Relation.Binary.Structures.Biased.du_isStrictTotalOrder'7580'_620
      (coe
         MAlonzo.Code.Relation.Binary.Structures.Biased.C_constructor_638
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3362 v1 v3 v4)
         (coe d_'60''45'cmp_3380))
-- Data.Nat.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3432 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'60''45'strictPartialOrder_3432
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      d_'60''45'isStrictPartialOrder_3428
-- Data.Nat.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'60''45'strictTotalOrder_3434
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      d_'60''45'isStrictTotalOrder_3430
-- Data.Nat.Properties.s<s-injective
d_s'60's'45'injective_3440 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'60's'45'injective_3440 = erased
-- Data.Nat.Properties.<-pred
d_'60''45'pred_3442 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'pred_3442 ~v0 ~v1 = du_'60''45'pred_3442
du_'60''45'pred_3442 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'pred_3442
  = coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
-- Data.Nat.Properties.m<n⇒m<1+n
d_m'60'n'8658'm'60'1'43'n_3444 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'1'43'n_3444 ~v0 ~v1 v2
  = du_m'60'n'8658'm'60'1'43'n_3444 v2
du_m'60'n'8658'm'60'1'43'n_3444 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'1'43'n_3444 v0
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
                       du_m'60'n'8658'm'60'1'43'n_3444
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.n≮0
d_n'8814'0_3448 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'0_3448 = erased
-- Data.Nat.Properties.n≮n
d_n'8814'n_3452 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'n_3452 = erased
-- Data.Nat.Properties.0<1+n
d_0'60'1'43'n_3456 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_0'60'1'43'n_3456 ~v0 = du_0'60'1'43'n_3456
du_0'60'1'43'n_3456 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_0'60'1'43'n_3456
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Nat.Properties.n<1+n
d_n'60'1'43'n_3460 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'60'1'43'n_3460 v0
  = coe
      d_'8804''45'refl_3140 (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.n<1⇒n≡0
d_n'60'1'8658'n'8801'0_3464 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'60'1'8658'n'8801'0_3464 = erased
-- Data.Nat.Properties.n>0⇒n≢0
d_n'62'0'8658'n'8802'0_3468 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'62'0'8658'n'8802'0_3468 = erased
-- Data.Nat.Properties.n≢0⇒n>0
d_n'8802'0'8658'n'62'0_3472 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8802'0'8658'n'62'0_3472 v0 ~v1
  = du_n'8802'0'8658'n'62'0_3472 v0
du_n'8802'0'8658'n'62'0_3472 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_n'8802'0'8658'n'62'0_3472 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
             erased
      _ -> coe du_0'60'1'43'n_3456
-- Data.Nat.Properties.m<n⇒0<n
d_m'60'n'8658'0'60'n_3478 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'0'60'n_3478 ~v0 ~v1 = du_m'60'n'8658'0'60'n_3478
du_m'60'n'8658'0'60'n_3478 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'0'60'n_3478
  = coe du_'8804''45'trans_3148 (coe du_0'60'1'43'n_3456)
-- Data.Nat.Properties.m<n⇒n≢0
d_m'60'n'8658'n'8802'0_3480 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'60'n'8658'n'8802'0_3480 = erased
-- Data.Nat.Properties.m<n⇒m≤1+n
d_m'60'n'8658'm'8804'1'43'n_3484 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'8804'1'43'n_3484 ~v0 ~v1 v2
  = du_m'60'n'8658'm'8804'1'43'n_3484 v2
du_m'60'n'8658'm'8804'1'43'n_3484 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'8804'1'43'n_3484 v0
  = coe du_'60''8658''8804'_3238 (coe v0)
-- Data.Nat.Properties.m<1+n⇒m<n∨m≡n
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3490 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3490 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
             _ -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe du_0'60'1'43'n_3456)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> let v7 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Sum.Base.du_map_84
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34) erased
                          (d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3490
                             (coe v3) (coe v7) (coe v6)))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m≤n⇒m<n∨m≡n
d_m'8804'n'8658'm'60'n'8744'm'8801'n_3500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'8804'n'8658'm'60'n'8744'm'8801'n_3500 v0 v1 v2
  = coe
      d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3490 (coe v0) (coe v1)
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v2)
-- Data.Nat.Properties.m<1+n⇒m≤n
d_m'60'1'43'n'8658'm'8804'n_3504 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'1'43'n'8658'm'8804'n_3504 ~v0 ~v1 v2
  = du_m'60'1'43'n'8658'm'8804'n_3504 v2
du_m'60'1'43'n'8658'm'8804'n_3504 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'1'43'n'8658'm'8804'n_3504 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒n<o
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 v0 v1 ~v2
  = du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 v0 v1
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
             erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe du_0'60'1'43'n_3456
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 (coe v3)
                             (coe v2))))
-- Data.Nat.Properties._.rec
d_rec_3532 ::
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
d_rec_3532 = erased
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒n≤o
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 v0 v1 ~v2
  = du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 v0 v1
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                       erased
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 (coe v2)
                             (coe v3))))
-- Data.Nat.Properties._.rec
d_rec_3562 ::
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
d_rec_3562 = erased
-- Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3570 a0 a1 = ()
-- Data.Nat.Properties.≤-Reasoning._._∎
d__'8718'_3572 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3572
  = let v0 = d_'8804''45'isPreorder_3190 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Nat.Properties.≤-Reasoning._.<-go
d_'60''45'go_3574 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3574
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3362 v1 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45''8804''45'trans_3374 v3 v4)
-- Data.Nat.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3576 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3578 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3578 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Nat.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3580 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3582 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3582 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3584 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_begin__3584
  = let v0 = d_'8804''45'isPreorder_3190 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_3238 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Nat.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3586 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3586 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__248
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3588 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3588 = erased
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3590 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_begin__3590
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.Nat.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3592 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3592
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Nat.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3596 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3596 = erased
-- Data.Nat.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3598 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_extractStrict_3598 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Nat.Properties.≤-Reasoning._.start
d_start_3606 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_start_3606
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_3190)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_3238 v2)
-- Data.Nat.Properties.≤-Reasoning._.step-<
d_step'45''60'_3608 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3608
  = let v0
          = \ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3362 v1 v3 v4 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164 in
       coe
         (let v2
                = \ v2 v3 v4 v5 v6 -> coe du_'60''45''8804''45'trans_3374 v5 v6 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Nat.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3610 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3610
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3612 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3612 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3612 v2
du_step'45''8801''45''8739'_3612 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3612 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3614 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3614
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3616 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3616
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3618 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3618
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3620 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3620
  = let v0 = d_'8804''45'isPreorder_3190 in
    coe
      (let v1
             = \ v1 v2 v3 v4 v5 -> coe du_'8804''45''60''45'trans_3368 v4 v5 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Nat.Properties.≤-Reasoning._.stop
d_stop_3622 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3622
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_3190)
-- Data.Nat.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3626 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3626
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Nat.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3628 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3628
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_3190)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
-- Data.Nat.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3630 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3630 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3630 v4
du_'8801''45'go_3630 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3630 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3632 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3632
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_3190)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45''60''45'trans_3368 v3 v4)
-- Data.Nat.Properties.+-suc
d_'43''45'suc_3654 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'suc_3654 = erased
-- Data.Nat.Properties.+-assoc
d_'43''45'assoc_3662 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_3662 = erased
-- Data.Nat.Properties.+-identityˡ
d_'43''45'identity'737'_3670 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_3670 = erased
-- Data.Nat.Properties.+-identityʳ
d_'43''45'identity'691'_3672 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_3672 = erased
-- Data.Nat.Properties.+-identity
d_'43''45'identity_3676 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_3676
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-comm
d_'43''45'comm_3678 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_3678 = erased
-- Data.Nat.Properties.+-cancelˡ-≡
d_'43''45'cancel'737''45''8801'_3686 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8801'_3686 = erased
-- Data.Nat.Properties.+-cancelʳ-≡
d_'43''45'cancel'691''45''8801'_3694 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691''45''8801'_3694 = erased
-- Data.Nat.Properties.+-cancel-≡
d_'43''45'cancel'45''8801'_3696 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8801'_3696
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-isMagma
d_'43''45'isMagma_3698 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'43''45'isMagma_3698
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Nat.Properties.+-isSemigroup
d_'43''45'isSemigroup_3700 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'43''45'isSemigroup_3700
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'43''45'isMagma_3698) erased
-- Data.Nat.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_3702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'43''45'isCommutativeSemigroup_3702
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_610
      (coe d_'43''45'isSemigroup_3700) erased
-- Data.Nat.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_3704 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'0'45'isMonoid_3704
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'43''45'isSemigroup_3700) (coe d_'43''45'identity_3676)
-- Data.Nat.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_3706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'0'45'isCommutativeMonoid_3706
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'43''45'0'45'isMonoid_3704) erased
-- Data.Nat.Properties.+-magma
d_'43''45'magma_3708 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'43''45'magma_3708
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124 addInt
      d_'43''45'isMagma_3698
-- Data.Nat.Properties.+-semigroup
d_'43''45'semigroup_3710 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'43''45'semigroup_3710
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614 addInt
      d_'43''45'isSemigroup_3700
-- Data.Nat.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_3712 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'43''45'commutativeSemigroup_3712
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754 addInt
      d_'43''45'isCommutativeSemigroup_3702
-- Data.Nat.Properties.+-0-monoid
d_'43''45'0'45'monoid_3714 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'43''45'0'45'monoid_3714
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990 addInt
      (0 :: Integer) d_'43''45'0'45'isMonoid_3704
-- Data.Nat.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_3716 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'0'45'commutativeMonoid_3716
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088 addInt
      (0 :: Integer) d_'43''45'0'45'isCommutativeMonoid_3706
-- Data.Nat.Properties.∸-magma
d_'8760''45'magma_3718 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8760''45'magma_3718
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_magma_20
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Data.Nat.Properties.m≢1+m+n
d_m'8802'1'43'm'43'n_3724 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8802'1'43'm'43'n_3724 = erased
-- Data.Nat.Properties.m≢1+n+m
d_m'8802'1'43'n'43'm_3734 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8802'1'43'n'43'm_3734 = erased
-- Data.Nat.Properties.m+1+n≢m
d_m'43'1'43'n'8802'm_3744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'm_3744 = erased
-- Data.Nat.Properties.m+1+n≢n
d_m'43'1'43'n'8802'n_3752 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'n_3752 = erased
-- Data.Nat.Properties.m+1+n≢0
d_m'43'1'43'n'8802'0_3766 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'0_3766 = erased
-- Data.Nat.Properties.m+n≡0⇒m≡0
d_m'43'n'8801'0'8658'm'8801'0_3780 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'm'8801'0_3780 = erased
-- Data.Nat.Properties.m+n≡0⇒n≡0
d_m'43'n'8801'0'8658'n'8801'0_3788 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'n'8801'0_3788 = erased
-- Data.Nat.Properties.+-cancelˡ-≤
d_'43''45'cancel'737''45''8804'_3796 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'737''45''8804'_3796 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''8804'_3796 v0 v3
du_'43''45'cancel'737''45''8804'_3796 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'737''45''8804'_3796 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe du_'43''45'cancel'737''45''8804'_3796 (coe v2) (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.+-cancelʳ-≤
d_'43''45'cancel'691''45''8804'_3804 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'691''45''8804'_3804 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''8804'_3804 v0 v3
du_'43''45'cancel'691''45''8804'_3804 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'691''45''8804'_3804 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_3796 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-≤
d_'43''45'cancel'45''8804'_3814 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8804'_3814
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''8804'_3796 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''8804'_3804 v0 v3)
-- Data.Nat.Properties.+-cancelˡ-<
d_'43''45'cancel'737''45''60'_3816 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'737''45''60'_3816 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''60'_3816 v0 v3
du_'43''45'cancel'737''45''60'_3816 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'737''45''60'_3816 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_3796 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancelʳ-<
d_'43''45'cancel'691''45''60'_3826 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'691''45''60'_3826 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''60'_3826 v0 v3
du_'43''45'cancel'691''45''60'_3826 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'691''45''60'_3826 v0 v1
  = coe du_'43''45'cancel'691''45''8804'_3804 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-<
d_'43''45'cancel'45''60'_3836 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''60'_3836
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''60'_3816 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''60'_3826 v0 v3)
-- Data.Nat.Properties.m≤n⇒m≤o+n
d_m'8804'n'8658'm'8804'o'43'n_3840 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'o'43'n_3840 ~v0 ~v1 ~v2 v3
  = du_m'8804'n'8658'm'8804'o'43'n_3840 v3
du_m'8804'n'8658'm'8804'o'43'n_3840 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'o'43'n_3840 v0 = coe v0
-- Data.Nat.Properties.m≤n⇒m≤n+o
d_m'8804'n'8658'm'8804'n'43'o_3850 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'n'43'o_3850 ~v0 ~v1 ~v2 v3
  = du_m'8804'n'8658'm'8804'n'43'o_3850 v3
du_m'8804'n'8658'm'8804'n'43'o_3850 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'n'43'o_3850 v0 = coe v0
-- Data.Nat.Properties.m≤m+n
d_m'8804'm'43'n_3864 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'43'n_3864 v0 ~v1 = du_m'8804'm'43'n_3864 v0
du_m'8804'm'43'n_3864 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'43'n_3864 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'8804'm'43'n_3864 (coe v1)))
-- Data.Nat.Properties.m≤n+m
d_m'8804'n'43'm_3876 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'm_3876 v0 ~v1 = du_m'8804'n'43'm_3876 v0
du_m'8804'n'43'm_3876 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'43'm_3876 v0 = coe du_m'8804'm'43'n_3864 (coe v0)
-- Data.Nat.Properties.m+n≤o⇒m≤o
d_m'43'n'8804'o'8658'm'8804'o_3890 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'm'8804'o_3890 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o_3890 v0 v3
du_m'43'n'8804'o'8658'm'8804'o_3890 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'm'8804'o_3890 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_m'43'n'8804'o'8658'm'8804'o_3890 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m+n≤o⇒n≤o
d_m'43'n'8804'o'8658'n'8804'o_3904 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'n'8804'o_3904 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'n'8804'o_3904 v0 v3
du_m'43'n'8804'o'8658'n'8804'o_3904 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'n'8804'o_3904 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_m'43'n'8804'o'8658'n'8804'o_3904 (coe v2)
                (coe du_'60''8658''8804'_3238 (coe v1)))
-- Data.Nat.Properties.+-mono-≤
d_'43''45'mono'45''8804'_3912 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''8804'_3912 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804'_3912 v3 v4 v5
du_'43''45'mono'45''8804'_3912 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''8804'_3912 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_'8804''45'trans_3148 (coe v2)
             (coe du_m'8804'n'43'm_3876 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_'43''45'mono'45''8804'_3912 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_3922 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'737''45''8804'_3922
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'8322''8658'mono'691'_352
      (coe d_'8804''45'refl_3140)
      (\ v0 v1 v2 v3 v4 v5 ->
         coe du_'43''45'mono'45''8804'_3912 v3 v4 v5)
-- Data.Nat.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_3924 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'691''45''8804'_3924
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'8322''8658'mono'737'_342
      (coe d_'8804''45'refl_3140)
      (\ v0 v1 v2 v3 v4 v5 ->
         coe du_'43''45'mono'45''8804'_3912 v3 v4 v5)
-- Data.Nat.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_3926 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''60''45''8804'_3926 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'43''45'mono'45''60''45''8804'_3926 v4 v5
du_'43''45'mono'45''60''45''8804'_3926 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''60''45''8804'_3926 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v1
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'43''45'mono'45''60''45''8804'_3926
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_3936 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''8804''45''60'_3936 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804''45''60'_3936 v3 v4 v5
du_'43''45'mono'45''8804''45''60'_3936 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''8804''45''60'_3936 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_'8804''45'trans_3148 (coe v2)
             (coe du_m'8804'n'43'm_3876 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe
                du_'43''45'mono'45''8804''45''60'_3936 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-<
d_'43''45'mono'45''60'_3946 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''60'_3946 ~v0 ~v1 ~v2 v3 v4
  = du_'43''45'mono'45''60'_3946 v3 v4
du_'43''45'mono'45''60'_3946 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''60'_3946 v0 v1
  = coe
      du_'43''45'mono'45''8804''45''60'_3936 (coe v0)
      (coe du_'60''8658''8804'_3238 (coe v1))
-- Data.Nat.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_3950 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'737''45''60'_3950 v0 v1 v2
  = coe
      d_'43''45'mono'737''45''8804'_3922 v0
      (addInt (coe (1 :: Integer)) (coe v1)) v2
-- Data.Nat.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_3954 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'691''45''60'_3954 v0 ~v1 ~v2 v3
  = du_'43''45'mono'691''45''60'_3954 v0 v3
du_'43''45'mono'691''45''60'_3954 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'691''45''60'_3954 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'43''45'mono'691''45''60'_3954 (coe v2) (coe v1)))
-- Data.Nat.Properties.m+1+n≰m
d_m'43'1'43'n'8816'm_3966 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8816'm_3966 = erased
-- Data.Nat.Properties.m<m+n
d_m'60'm'43'n_3976 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'43'n_3976 v0 ~v1 v2 = du_m'60'm'43'n_3976 v0 v2
du_m'60'm'43'n_3976 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'43'n_3976 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'60'm'43'n_3976 (coe v2) (coe v1)))
-- Data.Nat.Properties.m<n+m
d_m'60'n'43'm_3988 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'43'm_3988 v0 ~v1 v2 = du_m'60'n'43'm_3988 v0 v2
du_m'60'n'43'm_3988 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'43'm_3988 v0 v1
  = coe du_m'60'm'43'n_3976 (coe v0) (coe v1)
-- Data.Nat.Properties.m+n≮n
d_m'43'n'8814'n_4004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'n'8814'n_4004 = erased
-- Data.Nat.Properties.m+n≮m
d_m'43'n'8814'm_4018 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'n'8814'm_4018 = erased
-- Data.Nat.Properties.*-suc
d_'42''45'suc_4030 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_4030 = erased
-- Data.Nat.Properties.2*suc[n]≡2+n+n
d_2'42'suc'91'n'93''8801'2'43'n'43'n_4044 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_2'42'suc'91'n'93''8801'2'43'n'43'n_4044 = erased
-- Data.Nat.Properties.*-identityˡ
d_'42''45'identity'737'_4050 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_4050 = erased
-- Data.Nat.Properties.*-identityʳ
d_'42''45'identity'691'_4054 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_4054 = erased
-- Data.Nat.Properties.*-identity
d_'42''45'identity_4058 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_4058
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-zeroˡ
d_'42''45'zero'737'_4060 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_4060 = erased
-- Data.Nat.Properties.*-zeroʳ
d_'42''45'zero'691'_4062 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_4062 = erased
-- Data.Nat.Properties.*-zero
d_'42''45'zero_4066 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_4066
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-comm
d_'42''45'comm_4068 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_4068 = erased
-- Data.Nat.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_4078 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_4078 = erased
-- Data.Nat.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_4092 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_4092 = erased
-- Data.Nat.Properties.*-distrib-+
d_'42''45'distrib'45''43'_4094 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_4094
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-assoc
d_'42''45'assoc_4096 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_4096 = erased
-- Data.Nat.Properties.*-isMagma
d_'42''45'isMagma_4110 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_4110
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Nat.Properties.*-isSemigroup
d_'42''45'isSemigroup_4112 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_4112
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'42''45'isMagma_4110) erased
-- Data.Nat.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_4114 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_4114
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_610
      (coe d_'42''45'isSemigroup_4112) erased
-- Data.Nat.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_4116 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'1'45'isMonoid_4116
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'42''45'isSemigroup_4112) (coe d_'42''45'identity_4058)
-- Data.Nat.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_4118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'1'45'isCommutativeMonoid_4118
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'42''45'1'45'isMonoid_4116) erased
-- Data.Nat.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_4120 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'43''45''42''45'isSemiring_4120
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1742
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe d_'43''45'0'45'isCommutativeMonoid_3706) erased erased
         (coe d_'42''45'identity_4058) (coe d_'42''45'distrib'45''43'_4094))
      (coe d_'42''45'zero_4066)
-- Data.Nat.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_4122 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'43''45''42''45'isCommutativeSemiring_4122
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe d_'43''45''42''45'isSemiring_4120) erased
-- Data.Nat.Properties.*-magma
d_'42''45'magma_4124 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'42''45'magma_4124
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124 mulInt
      d_'42''45'isMagma_4110
-- Data.Nat.Properties.*-semigroup
d_'42''45'semigroup_4126 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'42''45'semigroup_4126
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614 mulInt
      d_'42''45'isSemigroup_4112
-- Data.Nat.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_4128 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'42''45'commutativeSemigroup_4128
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754 mulInt
      d_'42''45'isCommutativeSemigroup_4114
-- Data.Nat.Properties.*-1-monoid
d_'42''45'1'45'monoid_4130 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'1'45'monoid_4130
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990 mulInt
      (1 :: Integer) d_'42''45'1'45'isMonoid_4116
-- Data.Nat.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_4132 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'1'45'commutativeMonoid_4132
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088 mulInt
      (1 :: Integer) d_'42''45'1'45'isCommutativeMonoid_4118
-- Data.Nat.Properties.+-*-semiring
d_'43''45''42''45'semiring_4134 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_'43''45''42''45'semiring_4134
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2518 addInt mulInt
      (0 :: Integer) (1 :: Integer) d_'43''45''42''45'isSemiring_4120
-- Data.Nat.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_4136 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'43''45''42''45'commutativeSemiring_4136
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706 addInt mulInt
      (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isCommutativeSemiring_4122
-- Data.Nat.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_4146 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_4146 = erased
-- Data.Nat.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_4168 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_4168 = erased
-- Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_4188 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_4188 v0 ~v1 ~v2
  = du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_4188 v0
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_4188 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_4188 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m*n≢0
d_m'42'n'8802'0_4206 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0_4206 ~v0 ~v1 ~v2 ~v3 = du_m'42'n'8802'0_4206
du_m'42'n'8802'0_4206 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0_4206
  = coe
      MAlonzo.Code.Data.Nat.Base.C_constructor_120
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.m*n≢0⇒m≢0
d_m'42'n'8802'0'8658'm'8802'0_4216 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0'8658'm'8802'0_4216 ~v0 ~v1 ~v2
  = du_m'42'n'8802'0'8658'm'8802'0_4216
du_m'42'n'8802'0'8658'm'8802'0_4216 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0'8658'm'8802'0_4216
  = coe
      MAlonzo.Code.Data.Nat.Base.C_constructor_120
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.m*n≢0⇒n≢0
d_m'42'n'8802'0'8658'n'8802'0_4222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0'8658'n'8802'0_4222 ~v0 ~v1 ~v2
  = du_m'42'n'8802'0'8658'n'8802'0_4222
du_m'42'n'8802'0'8658'n'8802'0_4222 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0'8658'n'8802'0_4222
  = coe du_m'42'n'8802'0'8658'm'8802'0_4216
-- Data.Nat.Properties.m*n≡0⇒m≡0
d_m'42'n'8801'0'8658'm'8801'0_4238 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'0'8658'm'8801'0_4238 = erased
-- Data.Nat.Properties.m*n≡1⇒m≡1
d_m'42'n'8801'1'8658'm'8801'1_4246 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'm'8801'1_4246 = erased
-- Data.Nat.Properties.m*n≡1⇒n≡1
d_m'42'n'8801'1'8658'n'8801'1_4260 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'n'8801'1_4260 = erased
-- Data.Nat.Properties.[m*n]*[o*p]≡[m*o]*[n*p]
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_4276 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_4276
  = erased
-- Data.Nat.Properties.m≢0∧n>1⇒m*n>1
d_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4402 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_154 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_154
d_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4402 ~v0 ~v1 ~v2 ~v3
  = du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4402
du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4402 ::
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_154
du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4402
  = coe
      MAlonzo.Code.Data.Nat.Base.C_constructor_162
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.n≢0∧m>1⇒m*n>1
d_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4416 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_154 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_154
d_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4416 ~v0 ~v1 ~v2 ~v3
  = du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4416
du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4416 ::
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_154
du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_4416
  = coe du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_4402
-- Data.Nat.Properties.*-cancelʳ-≤
d_'42''45'cancel'691''45''8804'_4434 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'691''45''8804'_4434 v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'691''45''8804'_4434 v0
du_'42''45'cancel'691''45''8804'_4434 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'691''45''8804'_4434 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'42''45'cancel'691''45''8804'_4434 (coe v1)))
-- Data.Nat.Properties.*-cancelˡ-≤
d_'42''45'cancel'737''45''8804'_4448 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'737''45''8804'_4448 v0 ~v1 ~v2 ~v3
  = du_'42''45'cancel'737''45''8804'_4448 v0
du_'42''45'cancel'737''45''8804'_4448 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'737''45''8804'_4448 v0 v1
  = coe du_'42''45'cancel'691''45''8804'_4434 (coe v0)
-- Data.Nat.Properties.*-mono-≤
d_'42''45'mono'45''8804'_4464 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'45''8804'_4464 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''8804'_4464 v1 v3 v4 v5
du_'42''45'mono'45''8804'_4464 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'45''8804'_4464 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'43''45'mono'45''8804'_3912 (coe mulInt (coe v7) (coe v1))
                (coe v3)
                (coe
                   du_'42''45'mono'45''8804'_4464 (coe v7) (coe v1) (coe v6)
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-≤
d_'42''45'mono'737''45''8804'_4472 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'737''45''8804'_4472
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'8322''8658'mono'691'_352
      (coe d_'8804''45'refl_3140)
      (\ v0 v1 v2 v3 v4 v5 ->
         coe du_'42''45'mono'45''8804'_4464 v1 v3 v4 v5)
-- Data.Nat.Properties.*-monoʳ-≤
d_'42''45'mono'691''45''8804'_4474 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'691''45''8804'_4474
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'8322''8658'mono'737'_342
      (coe d_'8804''45'refl_3140)
      (\ v0 v1 v2 v3 v4 v5 ->
         coe du_'42''45'mono'45''8804'_4464 v1 v3 v4 v5)
-- Data.Nat.Properties.*-mono-<
d_'42''45'mono'45''60'_4476 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'45''60'_4476 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''60'_4476 v1 v3 v4 v5
du_'42''45'mono'45''60'_4476 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'45''60'_4476 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe seq (coe v3) (coe du_0'60'1'43'n_3456)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                      -> coe
                           du_'43''45'mono'45''60'_3946
                           (mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12)
                           (coe
                              du_'42''45'mono'45''60'_4476
                              (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-<
d_'42''45'mono'737''45''60'_4490 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'737''45''60'_4490 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60'_4490 v0 v2 v3 v4
du_'42''45'mono'737''45''60'_4490 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'737''45''60'_4490 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26 -> coe du_0'60'1'43'n_3456
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
               -> let v10 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (coe
                       du_'43''45'mono'45''8804''45''60'_3936
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                          (\ v11 v12 -> v12) (\ v11 -> mulInt (coe v11) (coe v0)) v10
                          (subInt (coe v2) (coe (1 :: Integer))))
                       (coe d_'8804''45'refl_3140 (coe v0))
                       (coe
                          du_'42''45'mono'737''45''60'_4490 (coe v0) (coe v10)
                          (coe subInt (coe v2) (coe (1 :: Integer)))
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoʳ-<
d_'42''45'mono'691''45''60'_4504 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'691''45''60'_4504 v0 ~v1 ~v2 v3 v4
  = du_'42''45'mono'691''45''60'_4504 v0 v3 v4
du_'42''45'mono'691''45''60'_4504 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'691''45''60'_4504 v0 v1 v2
  = case coe v0 of
      1 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
               -> coe
                    du_'43''45'mono'45''8804'_3912 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
               -> coe
                    du_'43''45'mono'45''8804'_3912
                    (coe mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    (coe
                       du_'60''8658''8804'_3238
                       (coe
                          du_'42''45'mono'691''45''60'_4504
                          (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤m*n
d_m'8804'm'42'n_4518 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'42'n_4518 v0 v1 ~v2 = du_m'8804'm'42'n_4518 v0 v1
du_m'8804'm'42'n_4518 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'42'n_4518 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3190)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_3238 v4))
      v0 (mulInt (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v2 v3 v4 v5 v6 -> v6) v0 (mulInt (coe v0) (coe (1 :: Integer)))
         (mulInt (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3190)
               (\ v2 v3 v4 v5 v6 -> coe du_'8804''45''60''45'trans_3368 v5 v6))
            (mulInt (coe v0) (coe (1 :: Integer))) (mulInt (coe v0) (coe v1))
            (mulInt (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3190))
               (coe mulInt (coe v0) (coe v1)))
            (coe
               d_'42''45'mono'691''45''8804'_4474 v0 (1 :: Integer) v1
               (coe du_0'60'1'43'n_3456)))
         erased)
-- Data.Nat.Properties.m≤n*m
d_m'8804'n'42'm_4530 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'42'm_4530 v0 v1 ~v2 = du_m'8804'n'42'm_4530 v0 v1
du_m'8804'n'42'm_4530 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'42'm_4530 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3190)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_3238 v4))
      v0 (mulInt (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_3190)
            (\ v2 v3 v4 v5 v6 -> coe du_'8804''45''60''45'trans_3368 v5 v6))
         v0 (mulInt (coe v0) (coe v1)) (mulInt (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v2 v3 v4 v5 v6 -> v6) (mulInt (coe v0) (coe v1))
            (mulInt (coe v1) (coe v0)) (mulInt (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3190))
               (coe mulInt (coe v1) (coe v0)))
            erased)
         (coe du_m'8804'm'42'n_4518 (coe v0) (coe v1)))
-- Data.Nat.Properties.m≤n⇒m≤o*n
d_m'8804'n'8658'm'8804'o'42'n_4540 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'o'42'n_4540 ~v0 v1 v2 ~v3 v4
  = du_m'8804'n'8658'm'8804'o'42'n_4540 v1 v2 v4
du_m'8804'n'8658'm'8804'o'42'n_4540 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'o'42'n_4540 v0 v1 v2
  = coe
      du_'8804''45'trans_3148 (coe v2)
      (coe du_m'8804'n'42'm_4530 (coe v0) (coe v1))
-- Data.Nat.Properties.m≤n⇒m≤n*o
d_m'8804'n'8658'm'8804'n'42'o_4550 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'n'42'o_4550 ~v0 v1 v2 ~v3 v4
  = du_m'8804'n'8658'm'8804'n'42'o_4550 v1 v2 v4
du_m'8804'n'8658'm'8804'n'42'o_4550 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'n'42'o_4550 v0 v1 v2
  = coe
      du_'8804''45'trans_3148 (coe v2)
      (coe du_m'8804'm'42'n_4518 (coe v0) (coe v1))
-- Data.Nat.Properties.m<m*n
d_m'60'm'42'n_4562 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'42'n_4562 v0 v1 ~v2 v3 = du_m'60'm'42'n_4562 v0 v1 v3
du_m'60'm'42'n_4562 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'42'n_4562 v0 v1 v2
  = let v3 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
           -> coe
                seq (coe v6)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                   (coe v0) (coe mulInt (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                         (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_3362 v8 v10 v11)
                         (coe
                            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                         (\ v7 v8 v9 v10 v11 ->
                            coe du_'60''45''8804''45'trans_3374 v10 v11))
                      v0 (addInt (coe v1) (coe v3)) (mulInt (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe d_'8804''45'isPreorder_3190)
                            (\ v7 v8 v9 v10 v11 ->
                               coe du_'8804''45''60''45'trans_3368 v10 v11))
                         (addInt (coe v1) (coe v3))
                         (addInt (coe v1) (coe mulInt (coe v3) (coe v1)))
                         (mulInt (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe d_'8804''45'isPreorder_3190))
                            (coe mulInt (coe v0) (coe v1)))
                         (coe
                            d_'43''45'mono'691''45''8804'_3924 v1 v3 (mulInt (coe v3) (coe v1))
                            (coe du_m'8804'm'42'n_4518 (coe v3) (coe v1))))
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                         (coe
                            MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                            (coe du_m'8804'n'43'm_3876 (coe v3))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m<n⇒m<n*o
d_m'60'n'8658'm'60'n'42'o_4576 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'n'42'o_4576 ~v0 v1
  = du_m'60'n'8658'm'60'n'42'o_4576 v1
du_m'60'n'8658'm'60'n'42'o_4576 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'n'42'o_4576 v0 v1 v2 v3
  = coe du_m'8804'n'8658'm'8804'n'42'o_4550 (coe v0) v1 v3
-- Data.Nat.Properties.m<n⇒m<o*n
d_m'60'n'8658'm'60'o'42'n_4586 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'o'42'n_4586 ~v0 v1
  = du_m'60'n'8658'm'60'o'42'n_4586 v1
du_m'60'n'8658'm'60'o'42'n_4586 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'o'42'n_4586 v0 v1 v2 v3
  = coe du_m'8804'n'8658'm'8804'o'42'n_4540 (coe v0) v1 v3
-- Data.Nat.Properties.*-cancelʳ-<
d_'42''45'cancel'691''45''60'_4588 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'691''45''60'_4588 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60'_4588 v0 v1 v2
du_'42''45'cancel'691''45''60'_4588 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'691''45''60'_4588 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            coe
              (let v4 = subInt (coe v2) (coe (1 :: Integer)) in
               coe
                 (coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'42''45'cancel'691''45''60'_4588 (coe v0) (coe v3)
                       (coe v4)))) in
    coe
      (coe
         seq (coe v0)
         (case coe v1 of
            0 -> case coe v2 of
                   _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                       coe du_0'60'1'43'n_3456
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
                                  du_'42''45'cancel'691''45''60'_4588 (coe v0) (coe v4) (coe v5)))
                      _ -> coe v3)))
-- Data.Nat.Properties.*-cancelˡ-<
d_'42''45'cancel'737''45''60'_4604 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'737''45''60'_4604 v0 v1 v2 v3
  = coe
      du_'42''45'cancel'691''45''60'_4588 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Properties.*-cancel-<
d_'42''45'cancel'45''60'_4620 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'cancel'45''60'_4620
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'cancel'737''45''60'_4604)
      (\ v0 v1 v2 v3 -> coe du_'42''45'cancel'691''45''60'_4588 v0 v1 v2)
-- Data.Nat.Properties.^-identityʳ
d_'94''45'identity'691'_4622 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_4622 = erased
-- Data.Nat.Properties.^-zeroˡ
d_'94''45'zero'737'_4626 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_4626 = erased
-- Data.Nat.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_4636 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_4636 = erased
-- Data.Nat.Properties.^-distribʳ-*
d_'94''45'distrib'691''45''42'_4656 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'691''45''42'_4656 = erased
-- Data.Nat.Properties.^-semigroup-morphism
d_'94''45'semigroup'45'morphism_4674 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
d_'94''45'semigroup'45'morphism_4674 ~v0
  = du_'94''45'semigroup'45'morphism_4674
du_'94''45'semigroup'45'morphism_4674 ::
  MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
du_'94''45'semigroup'45'morphism_4674
  = coe MAlonzo.Code.Algebra.Morphism.C_constructor_160 erased erased
-- Data.Nat.Properties.^-monoid-morphism
d_'94''45'monoid'45'morphism_4682 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_308
d_'94''45'monoid'45'morphism_4682 ~v0
  = du_'94''45'monoid'45'morphism_4682
du_'94''45'monoid'45'morphism_4682 ::
  MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_308
du_'94''45'monoid'45'morphism_4682
  = coe
      MAlonzo.Code.Algebra.Morphism.C_constructor_326
      (coe du_'94''45'semigroup'45'morphism_4674) erased
-- Data.Nat.Properties.^-*-assoc
d_'94''45''42''45'assoc_4690 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_4690 = erased
-- Data.Nat.Properties.m^n≡0⇒m≡0
d_m'94'n'8801'0'8658'm'8801'0_4712 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'94'n'8801'0'8658'm'8801'0_4712 = erased
-- Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4724 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4724 ~v0 v1 ~v2
  = du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4724 v1
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4724 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4724 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m^n≢0
d_m'94'n'8802'0_4740 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'94'n'8802'0_4740 v0 v1 ~v2 = du_m'94'n'8802'0_4740 v0 v1
du_m'94'n'8802'0_4740 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'94'n'8802'0_4740 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_128
      (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0) (coe v1))
-- Data.Nat.Properties.m^n>0
d_m'94'n'62'0_4752 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'94'n'62'0_4752 ~v0 ~v1 ~v2 = du_m'94'n'62'0_4752
du_m'94'n'62'0_4752 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'94'n'62'0_4752
  = coe MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero'8315''185'_148
-- Data.Nat.Properties.^-monoˡ-≤
d_'94''45'mono'737''45''8804'_4758 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'737''45''8804'_4758 v0 ~v1 v2 v3
  = du_'94''45'mono'737''45''8804'_4758 v0 v2 v3
du_'94''45'mono'737''45''8804'_4758 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'737''45''8804'_4758 v0 v1 v2
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'42''45'mono'45''8804'_4464 (coe v1)
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v1) (coe v3))
                (coe v2)
                (coe
                   du_'94''45'mono'737''45''8804'_4758 (coe v3) (coe v1) (coe v2)))
-- Data.Nat.Properties.^-monoʳ-≤
d_'94''45'mono'691''45''8804'_4772 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'691''45''8804'_4772 v0 ~v1 v2 v3 v4
  = du_'94''45'mono'691''45''8804'_4772 v0 v2 v3 v4
du_'94''45'mono'691''45''8804'_4772 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'691''45''8804'_4772 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_n'8802'0'8658'n'62'0_3472
             (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0) (coe v2))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> let v7 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v8 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (coe
                   d_'42''45'mono'691''45''8804'_4474 v0
                   (coe
                      MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                      (MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0)) (\ v9 v10 -> v9)
                      v7 v8)
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                      (\ v9 v10 -> v10)
                      (MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0)) v7 v8)
                   (coe
                      du_'94''45'mono'691''45''8804'_4772 (coe v0) (coe v7) (coe v8)
                      (coe v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.^-monoˡ-<
d_'94''45'mono'737''45''60'_4788 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'737''45''60'_4788 v0 ~v1 v2 v3 v4
  = du_'94''45'mono'737''45''60'_4788 v0 v2 v3 v4
du_'94''45'mono'737''45''60'_4788 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'737''45''60'_4788 v0 v1 v2 v3
  = case coe v0 of
      1 -> coe
             du_'42''45'mono'737''45''60'_4490 (coe (1 :: Integer)) (coe v1)
             (coe v2) (coe v3)
      _ -> coe
             du_'42''45'mono'45''60'_4476 (coe v2)
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                (\ v4 v5 -> v5)
                (\ v4 ->
                   MAlonzo.Code.Data.Nat.Base.d__'94'__276
                     (coe v4) (coe subInt (coe v0) (coe (1 :: Integer))))
                v1 v2)
             (coe v3)
             (coe
                du_'94''45'mono'737''45''60'_4788
                (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1) (coe v2)
                (coe v3))
-- Data.Nat.Properties.^-monoʳ-<
d_'94''45'mono'691''45''60'_4800 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'691''45''60'_4800 v0 v1 v2 v3 v4
  = case coe v2 of
      0 -> let v5 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                  -> coe
                       seq (coe v8)
                       (coe
                          du_'42''45'mono'45''8804'_4464 (coe v0)
                          (coe MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0) (coe v5))
                          (coe v1) (coe du_m'94'n'62'0_4752))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
              coe
                (case coe v4 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                     -> coe
                          du_'42''45'mono'691''45''60'_4504 (coe v0)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                             (\ v10 v11 -> v11)
                             (MAlonzo.Code.Data.Nat.Base.d__'94'__276 (coe v0)) v5 v6)
                          (coe
                             d_'94''45'mono'691''45''60'_4800 (coe v0) (coe v1) (coe v5)
                             (coe v6) (coe v9))
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_4818 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_4818 = erased
-- Data.Nat.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_4824 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_4824 = erased
-- Data.Nat.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_4834 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_4834 = erased
-- Data.Nat.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_4840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_4840 = erased
-- Data.Nat.Properties.⊓-operator
d_'8851''45'operator_4850 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
d_'8851''45'operator_4850
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_constructor_136
      (coe MAlonzo.Code.Data.Nat.Base.d__'8851'__236) erased erased
-- Data.Nat.Properties.⊔-operator
d_'8852''45'operator_4852 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138
d_'8852''45'operator_4852
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_constructor_168
      (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__208) erased erased
-- Data.Nat.Properties.⊔≡⊔′
d_'8852''8801''8852''8242'_4858 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''8801''8852''8242'_4858 = erased
-- Data.Nat.Properties.⊓≡⊓′
d_'8851''8801''8851''8242'_4884 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''8801''8851''8242'_4884 = erased
-- Data.Nat.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_4908 ::
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
d_antimono'45''8804''45'distrib'45''8851'_4908 = erased
-- Data.Nat.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_4910 ::
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
d_antimono'45''8804''45'distrib'45''8852'_4910 = erased
-- Data.Nat.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_4912 ::
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
d_mono'45''8804''45'distrib'45''8851'_4912 = erased
-- Data.Nat.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_4914 ::
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
d_mono'45''8804''45'distrib'45''8852'_4914 = erased
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_4916 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x_4916
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_4918 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'x'8851'z'8804'y_4918
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_4920 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'z'8851'x'8804'y_4920
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_4922 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'x'8851'z'8804'y_4922
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_4924 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'z'8851'x'8804'y_4924
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_4926 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'y_4926
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_4928 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'z_4928
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_4930 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'y_4930
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_4932 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'x'8658'x'8804'y_4932
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_4934 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'y'8658'y'8804'x_4934
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_4936 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x_4936
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_4938 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x'8852'y_4938
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3680
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_4940 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'y_4940
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_4942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'x'8658'x'8804'y_4942
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_4944 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'y'8658'y'8804'x_4944
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_4946 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'y_4946
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_4948 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'z_4948
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_4950 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_4950 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_4952 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_4952 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_4954 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_4954
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_4956 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_4956 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_4958 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_4958
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_4960 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_4960 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_4962 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_4962 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_4964 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_4964 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_4966 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_4966
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3500
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_4968 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_4968 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_4970 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_4970 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_4972 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'glb_4972
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_4974 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_4974 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_4976 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_4976 ~v0 ~v1 = du_'8851''45'identity_4976
du_'8851''45'identity_4976 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_4976
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_4978 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_4978 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_4980 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_4980 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_4982 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_4982
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_4984 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_4984
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_4986 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_4986
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_4988 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_4988
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_4990 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_4990
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_4992 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_4992
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_4994 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_4994
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_4996 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''8804'_4996
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_4998 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_4998
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5000 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'691''45''8804'_5000
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5002 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'737''45''8804'_5002
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-rawMagma
d_'8851''45'rawMagma_5004 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8851''45'rawMagma_5004
  = let v0 = d_'8851''45'operator_4850 in
    coe
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3398
         (coe v0))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5006 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5006
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5008 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_5008
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5010 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_5010
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5012 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5012 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_5014 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_5014 ~v0 ~v1 = du_'8851''45'zero_5014
du_'8851''45'zero_5014 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_5014
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_5016 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_5016 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_5018 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_5018 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_5020 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_5020
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3580
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_5022 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_5022 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5024 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5024 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5026 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_5026
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5028 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5028 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5030 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_5030
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_5032 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_5032 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_5034 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_5034 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_5036 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_5036 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_5038 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_5038
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3532
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_5040 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_5040 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_5042 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_5042 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5044 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5044 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_5046 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_5046
  = let v0 = d_'8852''45'operator_4852 in
    coe
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                      v0 v1 v3 (coe v2 v3)))
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                      v0 v3 v1 (coe v2 v3)))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_5048 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_5048 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_5050 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_5050 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5052 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_5052
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5054 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_5054
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5056 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_5056
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_5058 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_5058
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5060 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_5060
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5062 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_5062
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5064 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'glb_5064
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5066 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_5066
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5068 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''8804'_5068
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_5070 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_5070
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5072 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'691''45''8804'_5072
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5074 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'737''45''8804'_5074
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5076 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5076
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5078 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_5078
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5080 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_5080
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5082 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5082 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_5084 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_5084
  = let v0 = d_'8852''45'operator_4852 in
    coe
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                      v0 v1 v3 (coe v2 v3)))
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                      v0 v3 v1 (coe v2 v3)))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_5086 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_5086 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_5088 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_5088 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_5090 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_5090
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3578
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5094 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8851''45'isSemilattice_5094
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_616
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5096 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5096
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8851''45'operator_4850 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_618
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_5098 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8851''45''8852''45'distributiveLattice_5098
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_822
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_5100 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8851''45''8852''45'isDistributiveLattice_5100
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_812
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_5102 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8851''45''8852''45'isLattice_5102
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_810
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_5104 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8851''45''8852''45'lattice_5104
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_818
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5106 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8851''45'isSemilattice_5106
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_616
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5108 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5108
  = let v0 = d_'8804''45'totalPreorder_3202 in
    coe
      (let v1 = d_'8852''45'operator_4852 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_618
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_5110 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8852''45''8851''45'distributiveLattice_5110
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_820
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_5112 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8852''45''8851''45'isDistributiveLattice_5112
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_814
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_5114 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8852''45''8851''45'isLattice_5114
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_808
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_5116 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8852''45''8851''45'lattice_5116
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_816
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852)
-- Data.Nat.Properties.⊔-identityˡ
d_'8852''45'identity'737'_5118 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'737'_5118 = erased
-- Data.Nat.Properties.⊔-identityʳ
d_'8852''45'identity'691'_5120 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'691'_5120 = erased
-- Data.Nat.Properties.⊔-identity
d_'8852''45'identity_5124 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'identity_5124
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-0-isMonoid
d_'8852''45'0'45'isMonoid_5126 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8852''45'0'45'isMonoid_5126
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe d_'8804''45'totalPreorder_3202))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe d_'8852''45'operator_4852)))
      (coe d_'8852''45'identity_5124)
-- Data.Nat.Properties.⊔-0-isCommutativeMonoid
d_'8852''45'0'45'isCommutativeMonoid_5128 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8852''45'0'45'isCommutativeMonoid_5128
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'8852''45'0'45'isMonoid_5126)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe d_'8804''45'totalPreorder_3202))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe d_'8852''45'operator_4852)))
-- Data.Nat.Properties.⊔-0-monoid
d_'8852''45'0'45'monoid_5130 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8852''45'0'45'monoid_5130
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (0 :: Integer)
      d_'8852''45'0'45'isMonoid_5126
-- Data.Nat.Properties.⊔-0-commutativeMonoid
d_'8852''45'0'45'commutativeMonoid_5132 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'8852''45'0'45'commutativeMonoid_5132
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (0 :: Integer)
      d_'8852''45'0'45'isCommutativeMonoid_5128
-- Data.Nat.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_5140 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_5140 = erased
-- Data.Nat.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_5150 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_5150 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_5160 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_5160 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_5170 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_5170 = erased
-- Data.Nat.Properties.m<n⇒m<n⊔o
d_m'60'n'8658'm'60'n'8852'o_5176 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'n'8852'o_5176 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m<n⇒m<o⊔n
d_m'60'n'8658'm'60'o'8852'n_5180 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'o'8852'n_5180 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m⊔n<o⇒m<o
d_m'8852'n'60'o'8658'm'60'o_5188 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'60'o'8658'm'60'o_5188 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'm'60'o_5188 v0 v1 v3
du_m'8852'n'60'o'8658'm'60'o_5188 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8852'n'60'o'8658'm'60'o_5188 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3368
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe d_'8804''45'totalPreorder_3202))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe d_'8852''45'operator_4852))
         (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.m⊔n<o⇒n<o
d_m'8852'n'60'o'8658'n'60'o_5202 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'60'o'8658'n'60'o_5202 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'n'60'o_5202 v0 v1 v3
du_m'8852'n'60'o'8658'n'60'o_5202 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8852'n'60'o'8658'n'60'o_5202 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3368
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe d_'8804''45'totalPreorder_3202))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe d_'8852''45'operator_4852))
         (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.⊔-mono-<
d_'8852''45'mono'45''60'_5210 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'mono'45''60'_5210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v3)
      (coe addInt (coe (1 :: Integer)) (coe v2))
-- Data.Nat.Properties.⊔-pres-<m
d_'8852''45'pres'45''60'm_5212 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'pres'45''60'm_5212 v0 v1 v2 v3 v4
  = coe d_'8852''45'mono'45''60'_5210 v0 v1 v2 v1 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊔
d_'43''45'distrib'737''45''8852'_5222 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8852'_5222 = erased
-- Data.Nat.Properties.+-distribʳ-⊔
d_'43''45'distrib'691''45''8852'_5234 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8852'_5234 = erased
-- Data.Nat.Properties.+-distrib-⊔
d_'43''45'distrib'45''8852'_5236 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8852'_5236
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊔n≤m+n
d_m'8852'n'8804'm'43'n_5242 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'8804'm'43'n_5242 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased))
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
              (let v2
                     = coe
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                         (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v1))
                         (coe du_'8804''8658''8804''7495'_3106)
                         (coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                            (coe
                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v1) (coe v0))
                            (coe
                               MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v1)
                                  (coe v0)))) in
               coe
                 (case coe v2 of
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
                      -> if coe v3
                           then coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                  (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v4))
                           else coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe du_'8816''8658''8805'_3120 (coe v1) (coe v0))
                    _ -> MAlonzo.RTE.mazUnreachableError)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_m'8804'm'43'n_3864 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe du_m'8804'n'43'm_3876 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-⊔
d_'42''45'distrib'737''45''8852'_5272 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852'_5272 = erased
-- Data.Nat.Properties.*-distribʳ-⊔
d_'42''45'distrib'691''45''8852'_5294 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852'_5294 = erased
-- Data.Nat.Properties.*-distrib-⊔
d_'42''45'distrib'45''8852'_5296 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8852'_5296
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-zeroˡ
d_'8851''45'zero'737'_5298 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_5298 = erased
-- Data.Nat.Properties.⊓-zeroʳ
d_'8851''45'zero'691'_5300 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_5300 = erased
-- Data.Nat.Properties.⊓-zero
d_'8851''45'zero_5304 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_5304
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne
d_'8852''45''8851''45'isSemiringWithoutOne_5306 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_'8852''45''8851''45'isSemiringWithoutOne_5306
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1432
      (coe d_'8852''45'0'45'isCommutativeMonoid_5128) erased
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_3296
         (coe d_'8804''45'totalPreorder_3202)
         (coe d_'8851''45'operator_4850))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3500
         (coe d_'8804''45'totalPreorder_3202)
         (coe d_'8851''45'operator_4850) (coe d_'8852''45'operator_4852))
      (coe d_'8851''45'zero_5304)
-- Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_5308 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_5308
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1528
      (coe d_'8852''45''8851''45'isSemiringWithoutOne_5306)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
         (coe d_'8804''45'totalPreorder_3202)
         (coe d_'8851''45'operator_4850))
-- Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne
d_'8852''45''8851''45'commutativeSemiringWithoutOne_5310 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiringWithoutOne_2064
d_'8852''45''8851''45'commutativeSemiringWithoutOne_5310
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2198
      MAlonzo.Code.Data.Nat.Base.d__'8852'__208
      MAlonzo.Code.Data.Nat.Base.d__'8851'__236 (0 :: Integer)
      d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_5308
-- Data.Nat.Properties.m<n⇒m⊓o<n
d_m'60'n'8658'm'8851'o'60'n_5314 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'8851'o'60'n_5314 v0 ~v1 v2 v3
  = du_m'60'n'8658'm'8851'o'60'n_5314 v0 v2 v3
du_m'60'n'8658'm'8851'o'60'n_5314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'8851'o'60'n_5314 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3368
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
         (coe d_'8804''45'totalPreorder_3202)
         (coe d_'8851''45'operator_4850) (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.m<n⇒o⊓m<n
d_m'60'n'8658'o'8851'm'60'n_5322 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'o'8851'm'60'n_5322 v0 ~v1 v2 v3
  = du_m'60'n'8658'o'8851'm'60'n_5322 v0 v2 v3
du_m'60'n'8658'o'8851'm'60'n_5322 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'o'8851'm'60'n_5322 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_3368
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
         (coe d_'8804''45'totalPreorder_3202)
         (coe d_'8851''45'operator_4850) (coe v1) (coe v0))
      (coe v2)
-- Data.Nat.Properties.m<n⊓o⇒m<n
d_m'60'n'8851'o'8658'm'60'n_5332 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8851'o'8658'm'60'n_5332 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m<n⊓o⇒m<o
d_m'60'n'8851'o'8658'm'60'o_5338 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8851'o'8658'm'60'o_5338 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.⊓-mono-<
d_'8851''45'mono'45''60'_5340 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''60'_5340 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850)
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
      (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3)
-- Data.Nat.Properties.⊓-pres-m<
d_'8851''45'pres'45'm'60'_5342 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'pres'45'm'60'_5342 v0 v1 v2 v3 v4
  = coe d_'8851''45'mono'45''60'_5340 v0 v1 v0 v2 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊓
d_'43''45'distrib'737''45''8851'_5352 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8851'_5352 = erased
-- Data.Nat.Properties.+-distribʳ-⊓
d_'43''45'distrib'691''45''8851'_5364 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8851'_5364 = erased
-- Data.Nat.Properties.+-distrib-⊓
d_'43''45'distrib'45''8851'_5366 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8851'_5366
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊓n≤m+n
d_m'8851'n'8804'm'43'n_5372 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8851'n'8804'm'43'n_5372 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased))
              (coe
                 (\ v2 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
              (let v2
                     = coe
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                         (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
                         (coe du_'8804''8658''8804''7495'_3106)
                         (coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                            (coe
                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
                            (coe
                               MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0)
                                  (coe v1)))) in
               coe
                 (case coe v2 of
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
                      -> if coe v3
                           then coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                  (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v4))
                           else coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe du_'8816''8658''8805'_3120 (coe v0) (coe v1))
                    _ -> MAlonzo.RTE.mazUnreachableError)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_m'8804'm'43'n_3864 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe du_m'8804'n'43'm_3876 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-⊓
d_'42''45'distrib'737''45''8851'_5402 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851'_5402 = erased
-- Data.Nat.Properties.*-distribʳ-⊓
d_'42''45'distrib'691''45''8851'_5424 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851'_5424 = erased
-- Data.Nat.Properties.*-distrib-⊓
d_'42''45'distrib'45''8851'_5426 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8851'_5426
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.0∸n≡0
d_0'8760'n'8801'0_5428 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8760'n'8801'0_5428 = erased
-- Data.Nat.Properties.n∸n≡0
d_n'8760'n'8801'0_5432 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8760'n'8801'0_5432 = erased
-- Data.Nat.Properties.pred[m∸n]≡m∸[1+n]
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_5440 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_5440 = erased
-- Data.Nat.Properties.∸-suc
d_'8760''45'suc_5450 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'suc_5450 = erased
-- Data.Nat.Properties.m∸n≤m
d_m'8760'n'8804'm_5458 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804'm_5458 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_3140
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       d_'8804''45'refl_3140
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 (0 :: Integer) v1)
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_'8804''45'trans_3148
                          (coe d_m'8760'n'8804'm_5458 (coe v3) (coe v2))
                          (coe d_n'8804'1'43'n_3228 (coe v3))))
-- Data.Nat.Properties.m≮m∸n
d_m'8814'm'8760'n_5472 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8814'm'8760'n_5472 = erased
-- Data.Nat.Properties.1+m≢m∸n
d_1'43'm'8802'm'8760'n_5484 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'm'8802'm'8760'n_5484 = erased
-- Data.Nat.Properties.∸-mono
d_'8760''45'mono_5492 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono_5492 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5)
              (coe
                 du_'8804''45'trans_3148
                 (coe d_m'8760'n'8804'm_5458 (coe v0) (coe v2)) (coe v4)) in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
           -> case coe v5 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe
                       du_'8804''45'trans_3148
                       (coe d_m'8760'n'8804'm_5458 (coe v0) (coe v2))
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
                           du_'8804''45'trans_3148
                           (coe d_m'8760'n'8804'm_5458 (coe v0) (coe v2))
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
                                       du_'8804''45'trans_3148
                                       (coe d_m'8760'n'8804'm_5458 (coe v0) (coe v2))
                                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)) in
                          coe
                            (case coe v1 of
                               _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                                   let v13 = subInt (coe v1) (coe (1 :: Integer)) in
                                   coe
                                     (case coe v5 of
                                        MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                                          -> coe
                                               du_'8804''45'trans_3148
                                               (coe d_m'8760'n'8804'm_5458 (coe v0) (coe v2))
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
                                                                 d_'8760''45'mono_5492 (coe v11)
                                                                 (coe v13) (coe v17) (coe v18)
                                                                 (coe v9) (coe v16))
                                                        _ -> coe v12)
                                               _ -> coe v12
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                               _ -> coe v12))
                   _ -> coe v10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∸-monoˡ-≤
d_'8760''45'mono'737''45''8804'_5506 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'737''45''8804'_5506 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_5492 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe d_'8804''45'refl_3140 (coe v2))
-- Data.Nat.Properties.∸-monoʳ-≤
d_'8760''45'mono'691''45''8804'_5514 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'691''45''8804'_5514 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_5492 (coe v2) (coe v2) (coe v1) (coe v0)
      (coe d_'8804''45'refl_3140 (coe v2)) (coe v3)
-- Data.Nat.Properties.∸-monoˡ-<
d_'8760''45'mono'737''45''60'_5524 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'737''45''60'_5524 ~v0 v1 ~v2 v3 v4
  = du_'8760''45'mono'737''45''60'_5524 v1 v3 v4
du_'8760''45'mono'737''45''60'_5524 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'mono'737''45''60'_5524 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> case coe v2 of
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                         -> coe
                              du_'8760''45'mono'737''45''60'_5524 (coe v3) (coe v6) (coe v9)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∸-monoʳ-<
d_'8760''45'mono'691''45''60'_5550 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'691''45''60'_5550 v0 v1 v2 v3 v4
  = let v5 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (case coe v2 of
         0 -> coe
                seq (coe v3)
                (coe
                   seq (coe v4)
                   (coe
                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                      (d_m'8760'n'8804'm_5458
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
                                    d_'8760''45'mono'691''45''60'_5550 (coe v13) (coe v5) (coe v6)
                                    (coe v9) (coe v12))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.Properties.∸-cancelʳ-≤
d_'8760''45'cancel'691''45''8804'_5572 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'cancel'691''45''8804'_5572 ~v0 v1 ~v2 v3 ~v4
  = du_'8760''45'cancel'691''45''8804'_5572 v1 v3
du_'8760''45'cancel'691''45''8804'_5572 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'cancel'691''45''8804'_5572 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v0 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
             _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_'8760''45'cancel'691''45''8804'_5572 (coe v5) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∸-cancelʳ-<
d_'8760''45'cancel'691''45''60'_5592 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'cancel'691''45''60'_5592 v0 v1 ~v2 ~v3
  = du_'8760''45'cancel'691''45''60'_5592 v0 v1
du_'8760''45'cancel'691''45''60'_5592 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'cancel'691''45''60'_5592 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe du_0'60'1'43'n_3456
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8760''45'cancel'691''45''60'_5592 (coe v2) (coe v3))))
-- Data.Nat.Properties.∸-cancelˡ-≡
d_'8760''45'cancel'737''45''8801'_5612 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'737''45''8801'_5612 = erased
-- Data.Nat.Properties.∸-cancelʳ-≡
d_'8760''45'cancel'691''45''8801'_5628 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'691''45''8801'_5628 = erased
-- Data.Nat.Properties.m∸n≡0⇒m≤n
d_m'8760'n'8801'0'8658'm'8804'n_5638 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8801'0'8658'm'8804'n_5638 v0 ~v1 ~v2
  = du_m'8760'n'8801'0'8658'm'8804'n_5638 v0
du_m'8760'n'8801'0'8658'm'8804'n_5638 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8760'n'8801'0'8658'm'8804'n_5638 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'8760'n'8801'0'8658'm'8804'n_5638 (coe v1)))
-- Data.Nat.Properties.m≤n⇒m∸n≡0
d_m'8804'n'8658'm'8760'n'8801'0_5646 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8760'n'8801'0_5646 = erased
-- Data.Nat.Properties.m<n⇒0<n∸m
d_m'60'n'8658'0'60'n'8760'm_5652 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'0'60'n'8760'm_5652 v0 ~v1 v2
  = du_m'60'n'8658'0'60'n'8760'm_5652 v0 v2
du_m'60'n'8658'0'60'n'8760'm_5652 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'0'60'n'8760'm_5652 v0 v1
  = case coe v0 of
      0 -> coe du_0'60'1'43'n_3456
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe du_m'60'n'8658'0'60'n'8760'm_5652 (coe v2) (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m∸n≢0⇒n<m
d_m'8760'n'8802'0'8658'n'60'm_5662 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8802'0'8658'n'60'm_5662 v0 v1 ~v2
  = du_m'8760'n'8802'0'8658'n'60'm_5662 v0 v1
du_m'8760'n'8802'0'8658'n'60'm_5662 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8760'n'8802'0'8658'n'60'm_5662 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v2 ->
                 coe
                   du_'8804''7495''8658''8804'_3094
                   (coe addInt (coe (1 :: Integer)) (coe v1)))
              (coe du_'8804''8658''8804''7495'_3106)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
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
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m>n⇒m∸n≢0
d_m'62'n'8658'm'8760'n'8802'0_5690 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'62'n'8658'm'8760'n'8802'0_5690 = erased
-- Data.Nat.Properties.m≤n⇒n∸m≤n
d_m'8804'n'8658'n'8760'm'8804'n_5696 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'n'8760'm'8804'n_5696 ~v0 v1 v2
  = du_m'8804'n'8658'n'8760'm'8804'n_5696 v1 v2
du_m'8804'n'8658'n'8760'm'8804'n_5696 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'n'8760'm'8804'n_5696 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             d_'8804''45'refl_3140
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_m'8804'n'8658'n'8760'm'8804'n_5696 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-∸-comm
d_'43''45''8760''45'comm_5706 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'comm_5706 = erased
-- Data.Nat.Properties.∸-+-assoc
d_'8760''45''43''45'assoc_5724 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45''43''45'assoc_5724 = erased
-- Data.Nat.Properties.+-∸-assoc
d_'43''45''8760''45'assoc_5748 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'assoc_5748 = erased
-- Data.Nat.Properties.m∸n+o≡m∸[n∸o]
d_m'8760'n'43'o'8801'm'8760''91'n'8760'o'93'_5768 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760'n'43'o'8801'm'8760''91'n'8760'o'93'_5768 = erased
-- Data.Nat.Properties.m≤n+o⇒m∸n≤o
d_m'8804'n'43'o'8658'm'8760'n'8804'o_5792 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'o'8658'm'8760'n'8804'o_5792 v0 v1 ~v2 v3
  = du_m'8804'n'43'o'8658'm'8760'n'8804'o_5792 v0 v1 v3
du_m'8804'n'43'o'8658'm'8760'n'8804'o_5792 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'43'o'8658'm'8760'n'8804'o_5792 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_m'8804'n'43'o'8658'm'8760'n'8804'o_5792 (coe v4) (coe v3)
                          (coe
                             MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v2))))
-- Data.Nat.Properties.m<n+o⇒m∸n<o
d_m'60'n'43'o'8658'm'8760'n'60'o_5812 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'43'o'8658'm'8760'n'60'o_5812 v0 v1 ~v2 ~v3 v4
  = du_m'60'n'43'o'8658'm'8760'n'60'o_5812 v0 v1 v4
du_m'60'n'43'o'8658'm'8760'n'60'o_5812 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'43'o'8658'm'8760'n'60'o_5812 v0 v1 v2
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
                          du_m'60'n'43'o'8658'm'8760'n'60'o_5812 (coe v4) (coe v3)
                          (coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70 (coe v2))))
-- Data.Nat.Properties.m+n≤o⇒m≤o∸n
d_m'43'n'8804'o'8658'm'8804'o'8760'n_5836 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'm'8804'o'8760'n_5836 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o'8760'n_5836 v0 v3
du_m'43'n'8804'o'8658'm'8804'o'8760'n_5836 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'm'8804'o'8760'n_5836 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_m'43'n'8804'o'8658'm'8804'o'8760'n_5836 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m≤o∸n⇒m+n≤o
d_m'8804'o'8760'n'8658'm'43'n'8804'o_5856 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'o'8760'n'8658'm'43'n'8804'o_5856 ~v0 ~v1 ~v2 v3 v4
  = du_m'8804'o'8760'n'8658'm'43'n'8804'o_5856 v3 v4
du_m'8804'o'8760'n'8658'm'43'n'8804'o_5856 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'o'8760'n'8658'm'43'n'8804'o_5856 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26 -> coe v1
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_m'8804'o'8760'n'8658'm'43'n'8804'o_5856 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤n+m∸n
d_m'8804'n'43'm'8760'n_5882 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'm'8760'n_5882 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe d_'8804''45'refl_3140 (coe v0)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (d_m'8804'n'43'm'8760'n_5882 (coe v2) (coe v3))))
-- Data.Nat.Properties.m+n∸n≡m
d_m'43'n'8760'n'8801'm_5896 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'n'8801'm_5896 = erased
-- Data.Nat.Properties.m+n∸m≡n
d_m'43'n'8760'm'8801'n_5908 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'm'8801'n_5908 = erased
-- Data.Nat.Properties.m+[n∸m]≡n
d_m'43''91'n'8760'm'93''8801'n_5916 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43''91'n'8760'm'93''8801'n_5916 = erased
-- Data.Nat.Properties.m∸n+n≡m
d_m'8760'n'43'n'8801'm_5930 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760'n'43'n'8801'm_5930 = erased
-- Data.Nat.Properties.m∸[m∸n]≡n
d_m'8760''91'm'8760'n'93''8801'n_5942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760''91'm'8760'n'93''8801'n_5942 = erased
-- Data.Nat.Properties.[m+n]∸[m+o]≡n∸o
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_5958 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_5958 = erased
-- Data.Nat.Properties.*-distribʳ-∸
d_'42''45'distrib'691''45''8760'_5970 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8760'_5970 = erased
-- Data.Nat.Properties.*-distribˡ-∸
d_'42''45'distrib'737''45''8760'_5990 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8760'_5990 = erased
-- Data.Nat.Properties.*-distrib-∸
d_'42''45'distrib'45''8760'_5992 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8760'_5992
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.even≢odd
d_even'8802'odd_5998 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_even'8802'odd_5998 = erased
-- Data.Nat.Properties.m∸n≤m⊔n
d_m'8760'n'8804'm'8852'n_6014 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804'm'8852'n_6014 v0 v1
  = coe
      du_'8804''45'trans_3148
      (coe d_m'8760'n'8804'm_5458 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe d_'8804''45'totalPreorder_3202))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe d_'8852''45'operator_4852))
         (coe v0) (coe v1))
-- Data.Nat.Properties.m⊓n+n∸m≡n
d_m'8851'n'43'n'8760'm'8801'n_6024 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8851'n'43'n'8760'm'8801'n_6024 = erased
-- Data.Nat.Properties.m⊔n∸[m∸n]≡n
d_m'8852'n'8760''91'm'8760'n'93''8801'n_6038 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8852'n'8760''91'm'8760'n'93''8801'n_6038 = erased
-- Data.Nat.Properties.m⊔n≡m∸n+n
d_m'8852'n'8801'm'8760'n'43'n_6054 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8852'n'8801'm'8760'n'43'n_6054 = erased
-- Data.Nat.Properties.[m∸n]⊓[n∸m]≡0
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_6070 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_6070 = erased
-- Data.Nat.Properties.∸-distribˡ-⊓-⊔
d_'8760''45'distrib'737''45''8851''45''8852'_6086 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8851''45''8852'_6086 = erased
-- Data.Nat.Properties.∸-distribʳ-⊓
d_'8760''45'distrib'691''45''8851'_6094 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8851'_6094 = erased
-- Data.Nat.Properties.∸-distribˡ-⊔-⊓
d_'8760''45'distrib'737''45''8852''45''8851'_6108 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8852''45''8851'_6108 = erased
-- Data.Nat.Properties.∸-distribʳ-⊔
d_'8760''45'distrib'691''45''8852'_6116 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8852'_6116 = erased
-- Data.Nat.Properties.pred[n]≤n
d_pred'91'n'93''8804'n_6124 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'91'n'93''8804'n_6124 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d_n'8804'1'43'n_3228 (coe v1))
-- Data.Nat.Properties.≤pred⇒≤
d_'8804'pred'8658''8804'_6128 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'pred'8658''8804'_6128 ~v0 v1 v2
  = du_'8804'pred'8658''8804'_6128 v1 v2
du_'8804'pred'8658''8804'_6128 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'pred'8658''8804'_6128 v0 v1 = coe seq (coe v0) (coe v1)
-- Data.Nat.Properties.≤⇒pred≤
d_'8804''8658'pred'8804'_6136 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8658'pred'8804'_6136 v0 ~v1 v2
  = du_'8804''8658'pred'8804'_6136 v0 v2
du_'8804''8658'pred'8804'_6136 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8658'pred'8804'_6136 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8804''45'trans_3148 (coe d_n'8804'1'43'n_3228 (coe v2))
                (coe v1))
-- Data.Nat.Properties.<⇒≤pred
d_'60''8658''8804'pred_6144 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'pred_6144 ~v0 ~v1 v2
  = du_'60''8658''8804'pred_6144 v2
du_'60''8658''8804'pred_6144 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'pred_6144 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.suc-pred
d_suc'45'pred_6152 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_6152 = erased
-- Data.Nat.Properties.pred-mono-≤
d_pred'45'mono'45''8804'_6156 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono'45''8804'_6156 v0 ~v1 v2
  = du_pred'45'mono'45''8804'_6156 v0 v2
du_pred'45'mono'45''8804'_6156 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'45'mono'45''8804'_6156 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v1)
-- Data.Nat.Properties.pred-mono-<
d_pred'45'mono'45''60'_6160 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono'45''60'_6160 v0 v1 ~v2
  = du_pred'45'mono'45''60'_6160 v0 v1
du_pred'45'mono'45''60'_6160 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'45'mono'45''60'_6160 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> case coe v1 of
             0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
-- Data.Nat.Properties.pred-cancel-≤
d_pred'45'cancel'45''8804'_6162 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pred'45'cancel'45''8804'_6162 v0 v1 v2
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
d_pred'45'cancel'45''60'_6166 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'cancel'45''60'_6166 v0 v1
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
d_pred'45'injective_6168 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45'injective_6168 = erased
-- Data.Nat.Properties.pred-cancel-≡
d_pred'45'cancel'45''8801'_6174 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pred'45'cancel'45''8801'_6174 v0 v1
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
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_6176 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_6176 = erased
-- Data.Nat.Properties.∣m-n∣≡0⇒m≡n
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_6180 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_6180 = erased
-- Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_6190 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_6190 = erased
-- Data.Nat.Properties.m≤n⇒∣m-n∣≡n∸m
d_m'8804'n'8658''8739'm'45'n'8739''8801'n'8760'm_6196 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'm'45'n'8739''8801'n'8760'm_6196 = erased
-- Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_6202 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_6202 v0 v1 ~v2
  = du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_6202 v0 v1
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_6202 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_6202 v0 v1
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
                             du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_6202 (coe v2)
                             (coe v3))))
-- Data.Nat.Properties.∣n-n∣≡0
d_'8739'n'45'n'8739''8801'0_6218 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'45'n'8739''8801'0_6218 = erased
-- Data.Nat.Properties.∣m-m+n∣≡n
d_'8739'm'45'm'43'n'8739''8801'n_6226 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'm'43'n'8739''8801'n_6226 = erased
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o∣
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_6240 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_6240
  = erased
-- Data.Nat.Properties.m∸n≤∣m-n∣
d_m'8760'n'8804''8739'm'45'n'8739'_6256 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804''8739'm'45'n'8739'_6256 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
              (coe du_'8804''8658''8804''7495'_3106)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                    (coe
                       MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0)
                       (coe v1)))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                else coe
                       d_'8804''45'refl_3140
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∣m-n∣≤m⊔n
d_'8739'm'45'n'8739''8804'm'8852'n_6286 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8804'm'8852'n_6286 v0 v1
  = case coe v0 of
      0 -> coe
             d_'8804''45'refl_3140
             (coe
                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                (coe (0 :: Integer)) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       d_'8804''45'refl_3140
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                          (coe (0 :: Integer)))
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe d_'8739'm'45'n'8739''8804'm'8852'n_6286 (coe v2) (coe v3)))
-- Data.Nat.Properties.∣m-n∣≡m⊔n∸m⊓n
d_'8739'm'45'n'8739''8801'm'8852'n'8760'm'8851'n_6300 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801'm'8852'n'8760'm'8851'n_6300 = erased
-- Data.Nat.Properties.∣-∣-identityˡ
d_'8739''45''8739''45'identity'737'_6322 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'737'_6322 = erased
-- Data.Nat.Properties.∣-∣-identityʳ
d_'8739''45''8739''45'identity'691'_6326 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'691'_6326 = erased
-- Data.Nat.Properties.∣-∣-identity
d_'8739''45''8739''45'identity_6330 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8739''45''8739''45'identity_6330
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.∣-∣-comm
d_'8739''45''8739''45'comm_6332 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'comm_6332 = erased
-- Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_6346 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_6346 v0
                                                                      v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v2 -> coe du_'8804''7495''8658''8804'_3094 (coe v0))
              (coe du_'8804''8658''8804''7495'_3106)
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                    (coe
                       MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0)
                       (coe v1)))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                             (coe v1))
                          (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                             (\ v5 v6 v7 v8 v9 -> v9)
                             (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                (coe v0) (coe v1))
                             (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                (coe v1) (coe v0))
                             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                (\ v5 v6 v7 v8 v9 -> v9)
                                (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                   (coe v1) (coe v0))
                                (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                                (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                      (coe d_'8804''45'isPreorder_3190))
                                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0))
                                erased)
                             erased))
                else coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-∣-∣
d_'42''45'distrib'737''45''8739''45''8739'_6368 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739'_6368 = erased
-- Data.Nat.Properties.*-distribʳ-∣-∣
d_'42''45'distrib'691''45''8739''45''8739'_6380 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8739''45''8739'_6380 = erased
-- Data.Nat.Properties.*-distrib-∣-∣
d_'42''45'distrib'45''8739''45''8739'_6382 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8739''45''8739'_6382
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m≤n+∣n-m∣
d_m'8804'n'43''8739'n'45'm'8739'_6388 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43''8739'n'45'm'8739'_6388 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe d_'8804''45'refl_3140 (coe v0)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (d_m'8804'n'43''8739'n'45'm'8739'_6388 (coe v2) (coe v3))))
-- Data.Nat.Properties.m≤n+∣m-n∣
d_m'8804'n'43''8739'm'45'n'8739'_6402 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43''8739'm'45'n'8739'_6402 v0 v1
  = coe d_m'8804'n'43''8739'n'45'm'8739'_6388 (coe v0) (coe v1)
-- Data.Nat.Properties.m≤∣m-n∣+n
d_m'8804''8739'm'45'n'8739''43'n_6416 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804''8739'm'45'n'8739''43'n_6416 v0 v1
  = coe d_m'8804'n'43''8739'm'45'n'8739'_6402 (coe v0) (coe v1)
-- Data.Nat.Properties.∣-∣-triangle
d_'8739''45''8739''45'triangle_6424 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739''45''8739''45'triangle_6424 v0 v1 v2
  = case coe v0 of
      0 -> coe d_m'8804'n'43''8739'n'45'm'8739'_6388 (coe v2) (coe v1)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                          (coe d_'8804''45'isPreorder_3190)
                          (\ v4 v5 v6 -> coe du_'60''8658''8804'_3238 v6))
                       (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                          (coe v0) (coe v2))
                       (addInt
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                             (coe (0 :: Integer)) (coe v2))
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                             (coe (0 :: Integer))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                             (coe d_'8804''45'isPreorder_3190)
                             (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3368 v7 v8))
                          (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                             (coe v0) (coe v2))
                          (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v0) (coe v2))
                          (addInt
                             (coe
                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                (coe (0 :: Integer)) (coe v2))
                             (coe
                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                                (coe (0 :: Integer))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                (coe d_'8804''45'isPreorder_3190)
                                (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3368 v7 v8))
                             (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v0) (coe v2))
                             (addInt (coe v0) (coe v2))
                             (addInt
                                (coe
                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                   (coe (0 :: Integer)) (coe v2))
                                (coe
                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                                   (coe (0 :: Integer))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                (\ v4 v5 v6 v7 v8 -> v8) (addInt (coe v0) (coe v2))
                                (addInt
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                                      (coe (0 :: Integer)))
                                   (coe v2))
                                (addInt
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                      (coe (0 :: Integer)) (coe v2))
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                                      (coe (0 :: Integer))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                      (coe d_'8804''45'isPreorder_3190))
                                   (coe
                                      addInt
                                      (coe
                                         MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                         (coe v0) (coe (0 :: Integer)))
                                      (coe v2)))
                                erased)
                             (d_m'8852'n'8804'm'43'n_5242 (coe v0) (coe v2)))
                          (d_'8739'm'45'n'8739''8804'm'8852'n_6286 (coe v0) (coe v2)))
                _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v2 of
                          0 -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_3190)
                                    (\ v5 v6 v7 -> coe du_'60''8658''8804'_3238 v7))
                                 (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                    (coe v0) (coe (0 :: Integer)))
                                 (addInt
                                    (coe
                                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v0)
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284 (coe v1)
                                       (coe (0 :: Integer))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                    (\ v5 v6 v7 v8 v9 -> v9)
                                    (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                       (coe v0) (coe (0 :: Integer)))
                                    v0
                                    (addInt
                                       (coe
                                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                          (coe v0) (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                          (coe v1) (coe (0 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe d_'8804''45'isPreorder_3190)
                                          (\ v5 v6 v7 v8 v9 ->
                                             coe du_'8804''45''60''45'trans_3368 v8 v9))
                                       v0
                                       (addInt
                                          (coe
                                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                             (coe v0) (coe v1))
                                          (coe v1))
                                       (addInt
                                          (coe
                                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                             (coe v0) (coe v1))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                             (coe v1) (coe (0 :: Integer))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                          (\ v5 v6 v7 v8 v9 -> v9)
                                          (addInt
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                (coe v0) (coe v1))
                                             (coe v1))
                                          (addInt
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                (coe v1) (coe (0 :: Integer))))
                                          (addInt
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                (coe v1) (coe (0 :: Integer))))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_3190))
                                             (coe
                                                addInt
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                   (coe v0) (coe v1))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
                                                   (coe v1) (coe (0 :: Integer)))))
                                          erased)
                                       (d_m'8804''8739'm'45'n'8739''43'n_6416 (coe v0) (coe v1)))
                                    erased)
                          _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    d_'8739''45''8739''45'triangle_6424 (coe v3) (coe v4)
                                    (coe v5))))
-- Data.Nat.Properties.∣-∣≡∣-∣′
d_'8739''45''8739''8801''8739''45''8739''8242'_6456 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''8801''8739''45''8739''8242'_6456 = erased
-- Data.Nat.Properties.∣-∣-isProtoMetric
d_'8739''45''8739''45'isProtoMetric_6478 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsProtoMetric_30
d_'8739''45''8739''45'isProtoMetric_6478
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_constructor_100
      (coe d_'8804''45'isPartialOrder_3194)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Nat.Properties.∣-∣-isPreMetric
d_'8739''45''8739''45'isPreMetric_6480 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsPreMetric_104
d_'8739''45''8739''45'isPreMetric_6480
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_constructor_174
      (coe d_'8739''45''8739''45'isProtoMetric_6478) erased
-- Data.Nat.Properties.∣-∣-isQuasiSemiMetric
d_'8739''45''8739''45'isQuasiSemiMetric_6482 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsQuasiSemiMetric_178
d_'8739''45''8739''45'isQuasiSemiMetric_6482
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_constructor_252
      (coe d_'8739''45''8739''45'isPreMetric_6480) erased
-- Data.Nat.Properties.∣-∣-isSemiMetric
d_'8739''45''8739''45'isSemiMetric_6484 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsSemiMetric_256
d_'8739''45''8739''45'isSemiMetric_6484
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_constructor_334
      (coe d_'8739''45''8739''45'isQuasiSemiMetric_6482) erased
-- Data.Nat.Properties.∣-∣-isMetric
d_'8739''45''8739''45'isMetric_6486 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsGeneralMetric_340
d_'8739''45''8739''45'isMetric_6486
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_constructor_424
      (coe d_'8739''45''8739''45'isSemiMetric_6484)
      (coe d_'8739''45''8739''45'triangle_6424)
-- Data.Nat.Properties.∣-∣-quasiSemiMetric
d_'8739''45''8739''45'quasiSemiMetric_6488 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_QuasiSemiMetric_190
d_'8739''45''8739''45'quasiSemiMetric_6488
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_constructor_284
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
      d_'8739''45''8739''45'isQuasiSemiMetric_6482
-- Data.Nat.Properties.∣-∣-semiMetric
d_'8739''45''8739''45'semiMetric_6490 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_SemiMetric_290
d_'8739''45''8739''45'semiMetric_6490
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_constructor_390
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
      d_'8739''45''8739''45'isSemiMetric_6484
-- Data.Nat.Properties.∣-∣-preMetric
d_'8739''45''8739''45'preMetric_6492 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_PreMetric_98
d_'8739''45''8739''45'preMetric_6492
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_constructor_184
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
      d_'8739''45''8739''45'isPreMetric_6480
-- Data.Nat.Properties.∣-∣-metric
d_'8739''45''8739''45'metric_6494 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_Metric_396
d_'8739''45''8739''45'metric_6494
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_constructor_502
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_284
      d_'8739''45''8739''45'isMetric_6486
-- Data.Nat.Properties.⌊n/2⌋-mono
d_'8970'n'47'2'8971''45'mono_6496 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''45'mono_6496 ~v0 ~v1 v2
  = du_'8970'n'47'2'8971''45'mono_6496 v2
du_'8970'n'47'2'8971''45'mono_6496 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8970'n'47'2'8971''45'mono_6496 v0
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
                    (coe du_'8970'n'47'2'8971''45'mono_6496 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.⌈n/2⌉-mono
d_'8968'n'47'2'8969''45'mono_6500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''45'mono_6500 ~v0 ~v1 v2
  = du_'8968'n'47'2'8969''45'mono_6500 v2
du_'8968'n'47'2'8969''45'mono_6500 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8968'n'47'2'8969''45'mono_6500 v0
  = coe
      du_'8970'n'47'2'8971''45'mono_6496
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v0)
-- Data.Nat.Properties.⌊n/2⌋≤⌈n/2⌉
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_6506 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_6506 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_6506 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋+⌈n/2⌉≡n
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_6512 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_6512 = erased
-- Data.Nat.Properties.⌊n/2⌋≤n
d_'8970'n'47'2'8971''8804'n_6518 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''8804'n_6518 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804'n_6518 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋<n
d_'8970'n'47'2'8971''60'n_6524 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''60'n_6524 v0
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
                   (d_'8970'n'47'2'8971''8804'n_6518 (coe v1))))
-- Data.Nat.Properties.n≡⌊n+n/2⌋
d_n'8801''8970'n'43'n'47'2'8971'_6530 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801''8970'n'43'n'47'2'8971'_6530 = erased
-- Data.Nat.Properties.⌈n/2⌉≤n
d_'8968'n'47'2'8969''8804'n_6538 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''8804'n_6538 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804'n_6518 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉<n
d_'8968'n'47'2'8969''60'n_6544 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''60'n_6544 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
      (d_'8970'n'47'2'8971''60'n_6524 (coe v0))
-- Data.Nat.Properties.n≡⌈n+n/2⌉
d_n'8801''8968'n'43'n'47'2'8969'_6550 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801''8968'n'43'n'47'2'8969'_6550 = erased
-- Data.Nat.Properties.1≤n!
d_1'8804'n'33'_6558 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_1'8804'n'33'_6558 v0
  = case coe v0 of
      0 -> coe d_'8804''45'refl_3140 (coe (1 :: Integer))
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'42''45'mono'45''8804'_4464 (coe v0)
                (coe MAlonzo.Code.Data.Nat.Base.d__'33'_336 (coe v1))
                (coe du_m'8804'm'43'n_3864 (coe (1 :: Integer)))
                (coe d_1'8804'n'33'_6558 (coe v1)))
-- Data.Nat.Properties._!≢0
d__'33''8802'0_6564 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d__'33''8802'0_6564 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero_138
      (coe d_1'8804'n'33'_6558 (coe v0))
-- Data.Nat.Properties._!*_!≢0
d__'33''42'_'33''8802'0_6572 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d__'33''42'_'33''8802'0_6572 ~v0 ~v1
  = du__'33''42'_'33''8802'0_6572
du__'33''42'_'33''8802'0_6572 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du__'33''42'_'33''8802'0_6572 = coe du_m'42'n'8802'0_4206
-- Data.Nat.Properties.≤′-trans
d_'8804''8242''45'trans_6578 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_'8804''8242''45'trans_6578 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''8242''45'trans_6578 v3 v4
du_'8804''8242''45'trans_6578 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_'8804''8242''45'trans_6578 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
        -> coe v0
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v3
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
             (coe du_'8804''8242''45'trans_6578 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.z≤′n
d_z'8804''8242'n_6586 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_z'8804''8242'n_6586 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                (d_z'8804''8242'n_6586 (coe v1)))
-- Data.Nat.Properties.s≤′s
d_s'8804''8242's_6590 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_s'8804''8242's_6590 ~v0 ~v1 v2 = du_s'8804''8242's_6590 v2
du_s'8804''8242's_6590 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_s'8804''8242's_6590 v0 = coe v0
-- Data.Nat.Properties.≤′⇒≤
d_'8804''8242''8658''8804'_6596 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8242''8658''8804'_6596 v0 ~v1 v2
  = du_'8804''8242''8658''8804'_6596 v0 v2
du_'8804''8242''8658''8804'_6596 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8242''8658''8804'_6596 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
        -> coe du_'8804''45'reflexive_3136 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v3
        -> coe du_'8804''8242''8658''8804'_6596 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤⇒≤′
d_'8804''8658''8804''8242'_6602 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_'8804''8658''8804''8242'_6602 ~v0 v1 v2
  = du_'8804''8658''8804''8242'_6602 v1 v2
du_'8804''8658''8804''8242'_6602 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_'8804''8658''8804''8242'_6602 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe d_z'8804''8242'n_6586 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'8804''8658''8804''8242'_6602 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤′-step-injective
d_'8804''8242''45'step'45'injective_6610 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8242''45'step'45'injective_6610 = erased
-- Data.Nat.Properties.z<′s
d_z'60''8242's_6612 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_z'60''8242's_6612 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                (d_z'60''8242's_6612 (coe v1)))
-- Data.Nat.Properties.s<′s
d_s'60''8242's_6616 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_s'60''8242's_6616 ~v0 ~v1 v2 = du_s'60''8242's_6616 v2
du_s'60''8242's_6616 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_s'60''8242's_6616 v0 = coe v0
-- Data.Nat.Properties.<⇒<′
d_'60''8658''60''8242'_6620 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_'60''8658''60''8242'_6620 ~v0 v1 v2
  = du_'60''8658''60''8242'_6620 v1 v2
du_'60''8658''60''8242'_6620 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_'60''8658''60''8242'_6620 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe d_z'60''8242's_6612 (coe v5)
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                  -> coe
                       du_'60''8658''60''8242'_6620
                       (coe subInt (coe v0) (coe (1 :: Integer)))
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<′⇒<
d_'60''8242''8658''60'_6624 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8242''8658''60'_6624 v0 ~v1 v2
  = du_'60''8242''8658''60'_6624 v0 v2
du_'60''8242''8658''60'_6624 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8242''8658''60'_6624 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
        -> coe d_n'60'1'43'n_3460 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v3
        -> coe
             du_m'60'n'8658'm'60'1'43'n_3444
             (coe du_'60''8242''8658''60'_6624 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m<1+n⇒m<n∨m≡n′
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n'8242'_6628 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n'8242'_6628 v0 v1 v2
  = let v3
          = coe
              du_'60''8658''60''8242'_6620
              (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v2) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352 v5
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe du_'60''8242''8658''60'_6624 (coe v0) (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties._≤′?_
d__'8804''8242''63'__6642 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8242''63'__6642 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe du_'8804''8658''8804''8242'_6602 (coe v1))
      (coe du_'8804''8242''8658''8804'_6596 (coe v0))
      (coe d__'8804''63'__3160 (coe v0) (coe v1))
-- Data.Nat.Properties._<′?_
d__'60''8242''63'__6648 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8242''63'__6648 v0 v1
  = coe
      d__'8804''8242''63'__6642
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.Properties._≥′?_
d__'8805''8242''63'__6654 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8242''63'__6654 v0 v1
  = coe d__'8804''8242''63'__6642 (coe v1) (coe v0)
-- Data.Nat.Properties._>′?_
d__'62''8242''63'__6656 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8242''63'__6656 v0 v1
  = coe d__'60''8242''63'__6648 (coe v1) (coe v0)
-- Data.Nat.Properties.m≤′m+n
d_m'8804''8242'm'43'n_6662 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_m'8804''8242'm'43'n_6662 v0 v1
  = coe
      du_'8804''8658''8804''8242'_6602 (coe addInt (coe v0) (coe v1))
      (coe du_m'8804'm'43'n_3864 (coe v0))
-- Data.Nat.Properties.n≤′m+n
d_n'8804''8242'm'43'n_6672 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_n'8804''8242'm'43'n_6672 v0 ~v1 = du_n'8804''8242'm'43'n_6672 v0
du_n'8804''8242'm'43'n_6672 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
du_n'8804''8242'm'43'n_6672 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                (coe du_n'8804''8242'm'43'n_6672 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉≤′n
d_'8968'n'47'2'8969''8804''8242'n_6682 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_'8968'n'47'2'8969''8804''8242'n_6682 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                (d_'8968'n'47'2'8969''8804''8242'n_6682 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋≤′n
d_'8970'n'47'2'8971''8804''8242'n_6688 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__342
d_'8970'n'47'2'8971''8804''8242'n_6688 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'reflexive_348
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_352
                (d_'8968'n'47'2'8969''8804''8242'n_6682 (coe v1)))
-- Data.Nat.Properties.≤⇒≤″
d_'8804''8658''8804''8243'_6692 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'8804''8658''8804''8243'_6692 v0 v1 ~v2
  = du_'8804''8658''8804''8243'_6692 v0 v1
du_'8804''8658''8804''8243'_6692 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
du_'8804''8658''8804''8243'_6692 v0 v1
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0) erased
-- Data.Nat.Properties.<⇒<″
d_'60''8658''60''8243'_6696 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'60''8658''60''8243'_6696 v0 v1 v2
  = coe
      du_'8804''8658''8804''8243'_6692
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.Properties.≤″⇒≤
d_'8804''8243''8658''8804'_6698 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8243''8658''8804'_6698 v0 ~v1 v2
  = du_'8804''8243''8658''8804'_6698 v0 v2
du_'8804''8243''8658''8804'_6698 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8243''8658''8804'_6698 v0 v1
  = coe seq (coe v1) (coe du_m'8804'm'43'n_3864 (coe v0))
-- Data.Nat.Properties.<″⇒<
d_'60''8243''8658''60'_6702 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8243''8658''60'_6702 v0 ~v1
  = du_'60''8243''8658''60'_6702 v0
du_'60''8243''8658''60'_6702 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8243''8658''60'_6702 v0
  = coe
      du_'8804''8243''8658''8804'_6698
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.≤″-proof
d_'8804''8243''45'proof_6708 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'proof_6708 = erased
-- Data.Nat.Properties.m≤n⇒∃[o]m+o≡n
d_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6714 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6714 v0 v1 ~v2
  = du_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6714 v0 v1
du_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6714 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8804'n'8658''8707''91'o'93'm'43'o'8801'n_6714 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0) erased
-- Data.Nat.Properties.guarded-∸≗∸
d_guarded'45''8760''8791''8760'_6726 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_guarded'45''8760''8791''8760'_6726 = erased
-- Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_6734 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_6734
  = erased
-- Data.Nat.Properties.m<ᵇ1+m+n
d_m'60''7495'1'43'm'43'n_6746 :: Integer -> Integer -> AgdaAny
d_m'60''7495'1'43'm'43'n_6746 v0 ~v1
  = du_m'60''7495'1'43'm'43'n_6746 v0
du_m'60''7495'1'43'm'43'n_6746 :: Integer -> AgdaAny
du_m'60''7495'1'43'm'43'n_6746 v0
  = coe
      du_'60''8658''60''7495'_3076
      (coe
         du_m'8804'm'43'n_3864 (coe addInt (coe (1 :: Integer)) (coe v0)))
-- Data.Nat.Properties.<ᵇ⇒<″
d_'60''7495''8658''60''8243'_6750 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'60''7495''8658''60''8243'_6750 v0 v1 ~v2
  = du_'60''7495''8658''60''8243'_6750 v0 v1
du_'60''7495''8658''60''8243'_6750 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
du_'60''7495''8658''60''8243'_6750 v0 v1
  = coe
      d_'60''8658''60''8243'_6696 v0 v1
      (coe du_'60''7495''8658''60'_3064 (coe v0))
-- Data.Nat.Properties.<″⇒<ᵇ
d_'60''8243''8658''60''7495'_6760 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  AgdaAny
d_'60''8243''8658''60''7495'_6760 v0 ~v1 v2
  = du_'60''8243''8658''60''7495'_6760 v0 v2
du_'60''8243''8658''60''7495'_6760 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  AgdaAny
du_'60''8243''8658''60''7495'_6760 v0 v1
  = coe
      seq (coe v1)
      (coe
         du_'60''8658''60''7495'_3076
         (coe
            du_m'8804'm'43'n_3864 (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties._<″?_
d__'60''8243''63'__6766 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8243''63'__6766 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (\ v2 -> coe du_'60''7495''8658''60''8243'_6750 (coe v0) (coe v1))
      (coe du_'60''8243''8658''60''7495'_6760 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤″?_
d__'8804''8243''63'__6772 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8243''63'__6772 v0 v1
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
           coe (coe d__'60''8243''63'__6766 (coe v2) (coe v1))
-- Data.Nat.Properties._≥″?_
d__'8805''8243''63'__6780 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8243''63'__6780 v0 v1
  = coe d__'8804''8243''63'__6772 (coe v1) (coe v0)
-- Data.Nat.Properties._>″?_
d__'62''8243''63'__6782 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8243''63'__6782 v0 v1
  = coe d__'60''8243''63'__6766 (coe v1) (coe v0)
-- Data.Nat.Properties.≤″-irrelevant
d_'8804''8243''45'irrelevant_6784 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'irrelevant_6784 = erased
-- Data.Nat.Properties.<″-irrelevant
d_'60''8243''45'irrelevant_6798 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''8243''45'irrelevant_6798 = erased
-- Data.Nat.Properties.>″-irrelevant
d_'62''8243''45'irrelevant_6800 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''8243''45'irrelevant_6800 = erased
-- Data.Nat.Properties.≥″-irrelevant
d_'8805''8243''45'irrelevant_6802 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8805''8243''45'irrelevant_6802 = erased
-- Data.Nat.Properties.≤‴⇒≤″
d_'8804''8244''8658''8804''8243'_6804 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
d_'8804''8244''8658''8804''8243'_6804 ~v0 ~v1 v2
  = du_'8804''8244''8658''8804''8243'_6804 v2
du_'8804''8244''8658''8804''8243'_6804 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28
du_'8804''8244''8658''8804''8243'_6804 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'reflexive_434
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42
             (coe (0 :: Integer)) erased
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_436 v1
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__42
             (coe
                addInt (coe (1 :: Integer))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_38
                   (coe du_'8804''8244''8658''8804''8243'_6804 (coe v1))))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤‴m+k
d_m'8804''8244'm'43'k_6808 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
d_m'8804''8244'm'43'k_6808 ~v0 v1 ~v2
  = du_m'8804''8244'm'43'k_6808 v1
du_m'8804''8244'm'43'k_6808 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
du_m'8804''8244'm'43'k_6808 v0
  = case coe v0 of
      0 -> coe
             (\ v1 ->
                coe MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'reflexive_434)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                (\ v2 ->
                   coe
                     MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_436
                     (coe du_m'8804''8244'm'43'k_6808 v1 erased)))
-- Data.Nat.Properties.≤″⇒≤‴
d_'8804''8243''8658''8804''8244'_6810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
d_'8804''8243''8658''8804''8244'_6810 ~v0 ~v1 v2
  = du_'8804''8243''8658''8804''8244'_6810 v2
du_'8804''8243''8658''8804''8244'_6810 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
du_'8804''8243''8658''8804''8244'_6810 v0
  = coe
      du_m'8804''8244'm'43'k_6808
      (MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_38 (coe v0))
      erased
-- Data.Nat.Properties.0≤‴n
d_0'8804''8244'n_6812 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
d_0'8804''8244'n_6812 v0
  = coe du_m'8804''8244'm'43'k_6808 v0 erased
-- Data.Nat.Properties.<ᵇ⇒<‴
d_'60''7495''8658''60''8244'_6814 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
d_'60''7495''8658''60''8244'_6814 v0 v1 ~v2
  = du_'60''7495''8658''60''8244'_6814 v0 v1
du_'60''7495''8658''60''8244'_6814 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
du_'60''7495''8658''60''8244'_6814 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_6810
      (coe du_'60''7495''8658''60''8243'_6750 (coe v0) (coe v1))
-- Data.Nat.Properties.<‴⇒<ᵇ
d_'60''8244''8658''60''7495'_6816 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 -> AgdaAny
d_'60''8244''8658''60''7495'_6816 v0 ~v1 v2
  = du_'60''8244''8658''60''7495'_6816 v0 v2
du_'60''8244''8658''60''7495'_6816 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 -> AgdaAny
du_'60''8244''8658''60''7495'_6816 v0 v1
  = coe
      du_'60''8243''8658''60''7495'_6760 (coe v0)
      (coe du_'8804''8244''8658''8804''8243'_6804 (coe v1))
-- Data.Nat.Properties._<‴?_
d__'60''8244''63'__6818 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8244''63'__6818 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (\ v2 -> coe du_'60''7495''8658''60''8244'_6814 (coe v0) (coe v1))
      (coe du_'60''8244''8658''60''7495'_6816 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤‴?_
d__'8804''8244''63'__6824 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8244''63'__6824 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe d_0'8804''8244'n_6812 (coe v1)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__'60''8244''63'__6818 (coe v2) (coe v1))
-- Data.Nat.Properties._≥‴?_
d__'8805''8244''63'__6832 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8244''63'__6832 v0 v1
  = coe d__'8804''8244''63'__6824 (coe v1) (coe v0)
-- Data.Nat.Properties._>‴?_
d__'62''8244''63'__6834 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8244''63'__6834 v0 v1
  = coe d__'60''8244''63'__6818 (coe v1) (coe v0)
-- Data.Nat.Properties.≤⇒≤‴
d_'8804''8658''8804''8244'_6836 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
d_'8804''8658''8804''8244'_6836 v0 v1 ~v2
  = du_'8804''8658''8804''8244'_6836 v0 v1
du_'8804''8658''8804''8244'_6836 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422
du_'8804''8658''8804''8244'_6836 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_6810
      (coe du_'8804''8658''8804''8243'_6692 (coe v0) (coe v1))
-- Data.Nat.Properties.≤‴⇒≤
d_'8804''8244''8658''8804'_6838 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8244''8658''8804'_6838 v0 ~v1 v2
  = du_'8804''8244''8658''8804'_6838 v0 v2
du_'8804''8244''8658''8804'_6838 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8244''8658''8804'_6838 v0 v1
  = coe
      du_'8804''8243''8658''8804'_6698 (coe v0)
      (coe du_'8804''8244''8658''8804''8243'_6804 (coe v1))
-- Data.Nat.Properties.<‴-irrefl
d_'60''8244''45'irrefl_6840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8244''45'irrefl_6840 = erased
-- Data.Nat.Properties.≤‴-irrelevant
d_'8804''8244''45'irrelevant_6844 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8244''45'irrelevant_6844 = erased
-- Data.Nat.Properties.<‴-irrelevant
d_'60''8244''45'irrelevant_6870 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''8244''45'irrelevant_6870 = erased
-- Data.Nat.Properties.>‴-irrelevant
d_'62''8244''45'irrelevant_6872 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''8244''45'irrelevant_6872 = erased
-- Data.Nat.Properties.≥‴-irrelevant
d_'8805''8244''45'irrelevant_6874 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__422 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8805''8244''45'irrelevant_6874 = erased
-- Data.Nat.Properties.eq?
d_eq'63'_6880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_eq'63'_6880 ~v0 ~v1 v2 = du_eq'63'_6880 v2
du_eq'63'_6880 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_eq'63'_6880 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_via'45'injection_180
      (coe v0) (coe d__'8799'__3032)
-- Data.Nat.Properties._.anyUpTo?
d_anyUpTo'63'_6898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_anyUpTo'63'_6898 ~v0 ~v1 v2 v3 = du_anyUpTo'63'_6898 v2 v3
du_anyUpTo'63'_6898 ::
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_anyUpTo'63'_6898 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v0 v2 in
              coe
                (let v4 = coe du_anyUpTo'63'_6898 (coe v0) (coe v2) in
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
                                                             (coe d_'8804''45'refl_3140 (coe v1))
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
d_'172'Pn'60'1'43'v_6932 ::
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
d_'172'Pn'60'1'43'v_6932 = erased
-- Data.Nat.Properties._.allUpTo?
d_allUpTo'63'_6962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allUpTo'63'_6962 ~v0 ~v1 v2 v3 = du_allUpTo'63'_6962 v2 v3
du_allUpTo'63'_6962 ::
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_allUpTo'63'_6962 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v0 v2 in
              coe
                (let v4 = coe du_allUpTo'63'_6962 (coe v0) (coe v2) in
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
                                                                            du_Pn'60'1'43'v_6994
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
d_Pn'60'1'43'v_6994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  AgdaAny ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_Pn'60'1'43'v_6994 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_Pn'60'1'43'v_6994 v3 v4 v5 v6 v7
du_Pn'60'1'43'v_6994 ::
  Integer ->
  AgdaAny ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_Pn'60'1'43'v_6994 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                     erased (\ v8 -> coe du_'8801''8658''8801''7495'_3022 (coe v3))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                        (coe eqInt (coe v3) (coe v0))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then coe seq (coe v10) (coe v1)
                       else coe
                              seq (coe v10)
                              (coe
                                 v2 v3 (coe du_'8804''8743''8802''8658''60'_3300 (coe v0) (coe v7)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒o<n
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_7020 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_7020 v0 v1 v2
  = coe
      du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3514 v0 v1
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒o≤n
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_7028 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_7028 v0 v1 v2
  = coe
      du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3542 v0 v1
-- Data.Nat.Properties.*-+-isSemiring
d_'42''45''43''45'isSemiring_7030 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'42''45''43''45'isSemiring_7030
  = coe d_'43''45''42''45'isSemiring_4120
-- Data.Nat.Properties.*-+-isCommutativeSemiring
d_'42''45''43''45'isCommutativeSemiring_7032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'42''45''43''45'isCommutativeSemiring_7032
  = coe d_'43''45''42''45'isCommutativeSemiring_4122
-- Data.Nat.Properties.*-+-semiring
d_'42''45''43''45'semiring_7034 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_'42''45''43''45'semiring_7034
  = coe d_'43''45''42''45'semiring_4134
-- Data.Nat.Properties.*-+-commutativeSemiring
d_'42''45''43''45'commutativeSemiring_7036 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'42''45''43''45'commutativeSemiring_7036
  = coe d_'43''45''42''45'commutativeSemiring_4136
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_7038 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_7038 = erased
-- Data.Nat.Properties.m≤n⇒n⊔m≡n
d_m'8804'n'8658'n'8852'm'8801'n_7040 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8852'm'8801'n_7040 = erased
-- Data.Nat.Properties.m≤n⇒n⊓m≡m
d_m'8804'n'8658'n'8851'm'8801'm_7042 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8851'm'8801'm_7042 = erased
-- Data.Nat.Properties.n⊔m≡m⇒n≤m
d_n'8852'm'8801'm'8658'n'8804'm_7044 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8852'm'8801'm'8658'n'8804'm_7044
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
-- Data.Nat.Properties.n⊔m≡n⇒m≤n
d_n'8852'm'8801'n'8658'm'8804'n_7046 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8852'm'8801'n'8658'm'8804'n_7046
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
-- Data.Nat.Properties.n≤m⊔n
d_n'8804'm'8852'n_7048 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'm'8852'n_7048
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
-- Data.Nat.Properties.⊔-least
d_'8852''45'least_7050 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'least_7050
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
-- Data.Nat.Properties.⊓-greatest
d_'8851''45'greatest_7052 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'greatest_7052
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850)
-- Data.Nat.Properties.⊔-pres-≤m
d_'8852''45'pres'45''8804'm_7054 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'pres'45''8804'm_7054
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3202))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_4852))
-- Data.Nat.Properties.⊓-pres-m≤
d_'8851''45'pres'45'm'8804'_7056 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'pres'45'm'8804'_7056
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
      (coe d_'8804''45'totalPreorder_3202)
      (coe d_'8851''45'operator_4850)
-- Data.Nat.Properties.⊔-abs-⊓
d_'8852''45'abs'45''8851'_7058 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'abs'45''8851'_7058 = erased
-- Data.Nat.Properties.⊓-abs-⊔
d_'8851''45'abs'45''8852'_7060 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'abs'45''8852'_7060 = erased
-- Data.Nat.Properties.suc[pred[n]]≡n
d_suc'91'pred'91'n'93''93''8801'n_7062 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'91'pred'91'n'93''93''8801'n_7062 = erased
-- Data.Nat.Properties.≤-step
d_'8804''45'step_7068 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'step_7068 ~v0 ~v1 v2 = du_'8804''45'step_7068 v2
du_'8804''45'step_7068 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'step_7068 v0 = coe v0
-- Data.Nat.Properties.≤-stepsˡ
d_'8804''45'steps'737'_7070 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'steps'737'_7070 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'737'_7070 v3
du_'8804''45'steps'737'_7070 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'steps'737'_7070 v0 = coe v0
-- Data.Nat.Properties.≤-stepsʳ
d_'8804''45'steps'691'_7072 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'steps'691'_7072 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'691'_7072 v3
du_'8804''45'steps'691'_7072 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'steps'691'_7072 v0 = coe v0
-- Data.Nat.Properties.<-step
d_'60''45'step_7074 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'step_7074 v0 v1 v2
  = coe du_m'60'n'8658'm'60'1'43'n_3444 v2
-- Data.Nat.Properties.pred-mono
d_pred'45'mono_7076 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono_7076 v0 v1 v2
  = coe du_pred'45'mono'45''8804'_6156 v0 v2
-- Data.Nat.Properties.<-transʳ
d_'60''45'trans'691'_7078 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans'691'_7078 v0 v1 v2 v3 v4
  = coe du_'8804''45''60''45'trans_3368 v3 v4
-- Data.Nat.Properties.<-transˡ
d_'60''45'trans'737'_7080 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans'737'_7080 v0 v1 v2 v3 v4
  = coe du_'60''45''8804''45'trans_3374 v3 v4
