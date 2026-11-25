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
import qualified MAlonzo.Code.Agda.Builtin.Nat
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
import qualified MAlonzo.Code.Relation.Binary.Consequences
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
-- Data.Integer.Properties._.Central
d_Central_34 :: (Integer -> Integer -> Integer) -> Integer -> ()
d_Central_34 = erased
-- Data.Integer.Properties._.Commutative
d_Commutative_36 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_36 = erased
-- Data.Integer.Properties._.Congruent₁
d_Congruent'8321'_38 :: (Integer -> Integer) -> ()
d_Congruent'8321'_38 = erased
-- Data.Integer.Properties._.Congruent₂
d_Congruent'8322'_40 :: (Integer -> Integer -> Integer) -> ()
d_Congruent'8322'_40 = erased
-- Data.Integer.Properties._.Conical
d_Conical_42 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Conical_42 = erased
-- Data.Integer.Properties._.Flexible
d_Flexible_44 :: (Integer -> Integer -> Integer) -> ()
d_Flexible_44 = erased
-- Data.Integer.Properties._.Idempotent
d_Idempotent_46 :: (Integer -> Integer -> Integer) -> ()
d_Idempotent_46 = erased
-- Data.Integer.Properties._.IdempotentFun
d_IdempotentFun_48 :: (Integer -> Integer) -> ()
d_IdempotentFun_48 = erased
-- Data.Integer.Properties._.Identical
d_Identical_50 :: (Integer -> Integer -> Integer) -> ()
d_Identical_50 = erased
-- Data.Integer.Properties._.Identity
d_Identity_52 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_52 = erased
-- Data.Integer.Properties._.Interchangable
d_Interchangable_54 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Interchangable_54 = erased
-- Data.Integer.Properties._.Inverse
d_Inverse_56 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_56 = erased
-- Data.Integer.Properties._.Invertible
d_Invertible_58 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_Invertible_58 = erased
-- Data.Integer.Properties._.Involutive
d_Involutive_60 :: (Integer -> Integer) -> ()
d_Involutive_60 = erased
-- Data.Integer.Properties._.LeftAlternative
d_LeftAlternative_62 :: (Integer -> Integer -> Integer) -> ()
d_LeftAlternative_62 = erased
-- Data.Integer.Properties._.LeftBol
d_LeftBol_64 :: (Integer -> Integer -> Integer) -> ()
d_LeftBol_64 = erased
-- Data.Integer.Properties._.LeftCancellative
d_LeftCancellative_66 :: (Integer -> Integer -> Integer) -> ()
d_LeftCancellative_66 = erased
-- Data.Integer.Properties._.LeftCongruent
d_LeftCongruent_68 :: (Integer -> Integer -> Integer) -> ()
d_LeftCongruent_68 = erased
-- Data.Integer.Properties._.LeftConical
d_LeftConical_70 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftConical_70 = erased
-- Data.Integer.Properties._.LeftDivides
d_LeftDivides_72 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides_72 = erased
-- Data.Integer.Properties._.LeftDividesʳ
d_LeftDivides'691'_74 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'691'_74 = erased
-- Data.Integer.Properties._.LeftDividesˡ
d_LeftDivides'737'_76 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'737'_76 = erased
-- Data.Integer.Properties._.LeftIdentity
d_LeftIdentity_78 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_78 = erased
-- Data.Integer.Properties._.LeftInverse
d_LeftInverse_80 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_80 = erased
-- Data.Integer.Properties._.LeftInvertible
d_LeftInvertible_82 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_LeftInvertible_82 = erased
-- Data.Integer.Properties._.LeftSemimedial
d_LeftSemimedial_84 :: (Integer -> Integer -> Integer) -> ()
d_LeftSemimedial_84 = erased
-- Data.Integer.Properties._.LeftZero
d_LeftZero_86 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_86 = erased
-- Data.Integer.Properties._.Medial
d_Medial_88 :: (Integer -> Integer -> Integer) -> ()
d_Medial_88 = erased
-- Data.Integer.Properties._.MiddleBol
d_MiddleBol_90 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_MiddleBol_90 = erased
-- Data.Integer.Properties._.RightAlternative
d_RightAlternative_92 :: (Integer -> Integer -> Integer) -> ()
d_RightAlternative_92 = erased
-- Data.Integer.Properties._.RightBol
d_RightBol_94 :: (Integer -> Integer -> Integer) -> ()
d_RightBol_94 = erased
-- Data.Integer.Properties._.RightCancellative
d_RightCancellative_96 :: (Integer -> Integer -> Integer) -> ()
d_RightCancellative_96 = erased
-- Data.Integer.Properties._.RightCongruent
d_RightCongruent_98 :: (Integer -> Integer -> Integer) -> ()
d_RightCongruent_98 = erased
-- Data.Integer.Properties._.RightConical
d_RightConical_100 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightConical_100 = erased
-- Data.Integer.Properties._.RightDivides
d_RightDivides_102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides_102 = erased
-- Data.Integer.Properties._.RightDividesʳ
d_RightDivides'691'_104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'691'_104 = erased
-- Data.Integer.Properties._.RightDividesˡ
d_RightDivides'737'_106 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'737'_106 = erased
-- Data.Integer.Properties._.RightIdentity
d_RightIdentity_108 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_108 = erased
-- Data.Integer.Properties._.RightInverse
d_RightInverse_110 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_110 = erased
-- Data.Integer.Properties._.RightInvertible
d_RightInvertible_112 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_RightInvertible_112 = erased
-- Data.Integer.Properties._.RightSemimedial
d_RightSemimedial_114 :: (Integer -> Integer -> Integer) -> ()
d_RightSemimedial_114 = erased
-- Data.Integer.Properties._.RightZero
d_RightZero_116 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_116 = erased
-- Data.Integer.Properties._.Selective
d_Selective_118 :: (Integer -> Integer -> Integer) -> ()
d_Selective_118 = erased
-- Data.Integer.Properties._.SelfInverse
d_SelfInverse_120 :: (Integer -> Integer) -> ()
d_SelfInverse_120 = erased
-- Data.Integer.Properties._.Semimedial
d_Semimedial_122 :: (Integer -> Integer -> Integer) -> ()
d_Semimedial_122 = erased
-- Data.Integer.Properties._.StarDestructive
d_StarDestructive_124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarDestructive_124 = erased
-- Data.Integer.Properties._.StarExpansive
d_StarExpansive_126 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarExpansive_126 = erased
-- Data.Integer.Properties._.StarLeftDestructive
d_StarLeftDestructive_128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftDestructive_128 = erased
-- Data.Integer.Properties._.StarLeftExpansive
d_StarLeftExpansive_130 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftExpansive_130 = erased
-- Data.Integer.Properties._.StarRightDestructive
d_StarRightDestructive_132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightDestructive_132 = erased
-- Data.Integer.Properties._.StarRightExpansive
d_StarRightExpansive_134 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightExpansive_134 = erased
-- Data.Integer.Properties._.Zero
d_Zero_136 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_136 = erased
-- Data.Integer.Properties._.IsAbelianGroup
d_IsAbelianGroup_140 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_144 a0 = ()
-- Data.Integer.Properties._.IsBand
d_IsBand_148 a0 = ()
-- Data.Integer.Properties._.IsBooleanRing
d_IsBooleanRing_152 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsBooleanSemiring
d_IsBooleanSemiring_156 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_160 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsCommutativeBand
d_IsCommutativeBand_164 a0 = ()
-- Data.Integer.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_168 a0 = ()
-- Data.Integer.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_172 a0 a1 = ()
-- Data.Integer.Properties._.IsCommutativeRing
d_IsCommutativeRing_176 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_180 a0 = ()
-- Data.Integer.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_184 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_188 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_192 a0 = ()
-- Data.Integer.Properties._.IsGroup
d_IsGroup_196 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_200 a0 a1 = ()
-- Data.Integer.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_204 a0 = ()
-- Data.Integer.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_208 a0 a1 = ()
-- Data.Integer.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_212 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_216 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_220 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_224 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_228 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsLoop
d_IsLoop_232 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsMagma
d_IsMagma_236 a0 = ()
-- Data.Integer.Properties._.IsMedialMagma
d_IsMedialMagma_240 a0 = ()
-- Data.Integer.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_244 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsMonoid
d_IsMonoid_248 a0 a1 = ()
-- Data.Integer.Properties._.IsMoufangLoop
d_IsMoufangLoop_252 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsNearSemiring
d_IsNearSemiring_256 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsNearring
d_IsNearring_260 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_264 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsQuasigroup
d_IsQuasigroup_268 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsQuasiring
d_IsQuasiring_272 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsRightBolLoop
d_IsRightBolLoop_276 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsRing
d_IsRing_280 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_284 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_288 a0 = ()
-- Data.Integer.Properties._.IsSemigroup
d_IsSemigroup_292 a0 = ()
-- Data.Integer.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_296 a0 = ()
-- Data.Integer.Properties._.IsSemiring
d_IsSemiring_300 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_304 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_308 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsSuccessorSet
d_IsSuccessorSet_312 a0 a1 = ()
-- Data.Integer.Properties._.IsUnitalMagma
d_IsUnitalMagma_316 a0 a1 = ()
-- Data.Integer.Properties._.IsAbelianGroup._//_
d__'47''47'__322 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> Integer -> Integer
d__'47''47'__322 v0 ~v1 v2 ~v3 = du__'47''47'__322 v0 v2
du__'47''47'__322 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsAbelianGroup.assoc
d_assoc_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_324 = erased
-- Data.Integer.Properties._.IsAbelianGroup.comm
d_comm_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_326 = erased
-- Data.Integer.Properties._.IsAbelianGroup.identity
d_identity_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Integer.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_330 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_330 = erased
-- Data.Integer.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_332 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_332 = erased
-- Data.Integer.Properties._.IsAbelianGroup.inverse
d_inverse_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_336 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_336 = erased
-- Data.Integer.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_338 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_338 = erased
-- Data.Integer.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_340 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_340 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_340 v3
du_isCommutativeMagma_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_340 v0
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
-- Data.Integer.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_342 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_342 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246 v3
-- Data.Integer.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_344 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_344 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_344 v3
du_isCommutativeSemigroup_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
         (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))))
-- Data.Integer.Properties._.IsAbelianGroup.isGroup
d_isGroup_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_348 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)
-- Data.Integer.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_350 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_350 ~v0 ~v1 ~v2 v3
  = du_isInvertibleMagma_350 v3
du_isInvertibleMagma_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_352 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_352 ~v0 ~v1 ~v2 v3
  = du_isInvertibleUnitalMagma_352 v3
du_isInvertibleUnitalMagma_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isMagma
d_isMagma_354 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_354 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))))
-- Data.Integer.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_356 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_356 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_358 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_358 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_358 v3
du_isPartialEquivalence_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_358 v0
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
-- Data.Integer.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_360 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Integer.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_362 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_362 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_362 v3
du_isUnitalMagma_362 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_362 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1)))
-- Data.Integer.Properties._.IsAbelianGroup.refl
d_refl_364 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_364 = erased
-- Data.Integer.Properties._.IsAbelianGroup.reflexive
d_reflexive_366 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_366 = erased
-- Data.Integer.Properties._.IsAbelianGroup.setoid
d_setoid_368 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_368 ~v0 ~v1 ~v2 v3 = du_setoid_368 v3
du_setoid_368 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_368 v0
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
-- Data.Integer.Properties._.IsAbelianGroup.sym
d_sym_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_370 = erased
-- Data.Integer.Properties._.IsAbelianGroup.trans
d_trans_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_372 = erased
-- Data.Integer.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_374 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_374 = erased
-- Data.Integer.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_376 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_376 = erased
-- Data.Integer.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_378 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_380 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_382 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_382 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_384 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_384 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.alter
d_alter_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_388 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_302 (coe v0)
-- Data.Integer.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_390 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_390 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_392 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_392 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Integer.Properties._.IsAlternativeMagma.isMagma
d_isMagma_396 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_396 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Integer.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_398 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_398 ~v0 v1 = du_isPartialEquivalence_398 v1
du_isPartialEquivalence_398 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_398 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsAlternativeMagma.refl
d_refl_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_400 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.reflexive
d_reflexive_402 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_402 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.setoid
d_setoid_404 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_404 ~v0 v1 = du_setoid_404 v1
du_setoid_404 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Integer.Properties._.IsAlternativeMagma.sym
d_sym_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_406 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.trans
d_trans_408 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_408 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_410 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_410 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_412 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_412 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_414 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_414 = erased
-- Data.Integer.Properties._.IsBand.assoc
d_assoc_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_418 = erased
-- Data.Integer.Properties._.IsBand.idem
d_idem_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_420 = erased
-- Data.Integer.Properties._.IsBand.isEquivalence
d_isEquivalence_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)))
-- Data.Integer.Properties._.IsBand.isMagma
d_isMagma_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0))
-- Data.Integer.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_426 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_426 ~v0 v1 = du_isPartialEquivalence_426 v1
du_isPartialEquivalence_426 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_426 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Integer.Properties._.IsBand.isSemigroup
d_isSemigroup_428 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_428 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)
-- Data.Integer.Properties._.IsBand.refl
d_refl_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_430 = erased
-- Data.Integer.Properties._.IsBand.reflexive
d_reflexive_432 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_432 = erased
-- Data.Integer.Properties._.IsBand.setoid
d_setoid_434 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_434 ~v0 v1 = du_setoid_434 v1
du_setoid_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_434 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Integer.Properties._.IsBand.sym
d_sym_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_436 = erased
-- Data.Integer.Properties._.IsBand.trans
d_trans_438 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_438 = erased
-- Data.Integer.Properties._.IsBand.∙-cong
d_'8729''45'cong_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_440 = erased
-- Data.Integer.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_442 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_442 = erased
-- Data.Integer.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_444 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_444 = erased
-- Data.Integer.Properties._.IsBooleanRing._//_
d__'47''47'__448 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> Integer -> Integer
d__'47''47'__448 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__448 v0 v2
du__'47''47'__448 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__448 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsBooleanRing.*-assoc
d_'42''45'assoc_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_450 = erased
-- Data.Integer.Properties._.IsBooleanRing.*-comm
d_'42''45'comm_452 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_452 = erased
-- Data.Integer.Properties._.IsBooleanRing.*-cong
d_'42''45'cong_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_454 = erased
-- Data.Integer.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_456 ::
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
d_'8729''45'cong'691'_456 = erased
-- Data.Integer.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_458 ::
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
d_'8729''45'cong'737'_458 = erased
-- Data.Integer.Properties._.IsBooleanRing.*-idem
d_'42''45'idem_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_460 = erased
-- Data.Integer.Properties._.IsBooleanRing.*-identity
d_'42''45'identity_462 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Integer.Properties._.IsBooleanRing.identityʳ
d_identity'691'_464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_464 = erased
-- Data.Integer.Properties._.IsBooleanRing.identityˡ
d_identity'737'_466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_466 = erased
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_468 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_468 v0 v1 v2 v3 v5
du_isCommutativeMagma_468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_468 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_470 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_470 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_470 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_470 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Integer.Properties._.IsBooleanRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_472 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_472 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_472 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.*-isMagma
d_'42''45'isMagma_474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_474 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_474 v0 v1 v2 v3 v5
du_'42''45'isMagma_474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_474 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.*-isMonoid
d_'42''45'isMonoid_476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_476 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_476 v0 v1 v2 v3 v5
du_'42''45'isMonoid_476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_476 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5)))
-- Data.Integer.Properties._.IsBooleanRing.*-isSemigroup
d_'42''45'isSemigroup_478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_478 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_478 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_478 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.assoc
d_assoc_480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_480 = erased
-- Data.Integer.Properties._.IsBooleanRing.comm
d_comm_482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_482 = erased
-- Data.Integer.Properties._.IsBooleanRing.∙-cong
d_'8729''45'cong_484 ::
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
d_'8729''45'cong_484 = erased
-- Data.Integer.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_486 ::
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
d_'8729''45'cong'691'_486 = erased
-- Data.Integer.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_488 ::
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
d_'8729''45'cong'737'_488 = erased
-- Data.Integer.Properties._.IsBooleanRing.identity
d_identity_490 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_490 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_490 v5
du_identity_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_490 v0
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
-- Data.Integer.Properties._.IsBooleanRing.identityʳ
d_identity'691'_492 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_492 = erased
-- Data.Integer.Properties._.IsBooleanRing.identityˡ
d_identity'737'_494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_494 = erased
-- Data.Integer.Properties._.IsBooleanRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_496 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_498 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_498 v5
du_isCommutativeMagma_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_498 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeMonoid
d_isCommutativeMonoid_500 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_500 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_500 v5
du_isCommutativeMonoid_500 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_500 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeSemigroup
d_isCommutativeSemigroup_502 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_502 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_502 v5
du_isCommutativeSemigroup_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_502 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isGroup
d_isGroup_504 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_504 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_504 v5
du_isGroup_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_504 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isInvertibleMagma
d_isInvertibleMagma_506 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_506 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_506 v5
du_isInvertibleMagma_506 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_506 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_508 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_508 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_508 v5
du_isInvertibleUnitalMagma_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_508 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isMagma
d_isMagma_510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_510 v5
du_isMagma_510 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_510 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isMonoid
d_isMonoid_512 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_512 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_512 v5
du_isMonoid_512 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_512 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isSemigroup
d_isSemigroup_514 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_514 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_514 v5
du_isSemigroup_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_514 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isUnitalMagma
d_isUnitalMagma_516 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_516 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_516 v5
du_isUnitalMagma_516 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_516 v0
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
-- Data.Integer.Properties._.IsBooleanRing.⁻¹-cong
d_'8315''185''45'cong_518 ::
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
d_'8315''185''45'cong_518 = erased
-- Data.Integer.Properties._.IsBooleanRing.inverse
d_inverse_520 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_520 v5
du_inverse_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_520 v0
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
-- Data.Integer.Properties._.IsBooleanRing.inverseʳ
d_inverse'691'_522 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_522 = erased
-- Data.Integer.Properties._.IsBooleanRing.inverseˡ
d_inverse'737'_524 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_524 = erased
-- Data.Integer.Properties._.IsBooleanRing.distrib
d_distrib_526 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_3032
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)))
-- Data.Integer.Properties._.IsBooleanRing.distribʳ
d_distrib'691'_528 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_528 = erased
-- Data.Integer.Properties._.IsBooleanRing.distribˡ
d_distrib'737'_530 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_530 = erased
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeRing
d_isCommutativeRing_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_isCommutativeRing_532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeSemiring
d_isCommutativeSemiring_534 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_534 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiring_534 v0 v1 v2 v3 v5
du_isCommutativeSemiring_534 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_534 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v4))
-- Data.Integer.Properties._.IsBooleanRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_536 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_536 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_536 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_536 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Integer.Properties._.IsBooleanRing.isEquivalence
d_isEquivalence_538 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_538 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_538 v5
du_isEquivalence_538 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_538 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isNearSemiring
d_isNearSemiring_540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_540 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_540 v0 v1 v2 v3 v5
du_isNearSemiring_540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_540 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.isPartialEquivalence
d_isPartialEquivalence_542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_542 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_542 v5
du_isPartialEquivalence_542 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_542 v0
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
-- Data.Integer.Properties._.IsBooleanRing.isRing
d_isRing_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_3032
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0))
-- Data.Integer.Properties._.IsBooleanRing.isRingWithoutOne
d_isRingWithoutOne_546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_546 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_546 v5
du_isRingWithoutOne_546 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
du_isRingWithoutOne_546 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1)))
-- Data.Integer.Properties._.IsBooleanRing.isSemiring
d_isSemiring_548 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_548 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_548 v0 v1 v2 v3 v5
du_isSemiring_548 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_548 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v5)))
-- Data.Integer.Properties._.IsBooleanRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_550 v5
du_isSemiringWithoutAnnihilatingZero_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_550 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v1)))
-- Data.Integer.Properties._.IsBooleanRing.isSemiringWithoutOne
d_isSemiringWithoutOne_552 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_552 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_552 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_552 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_552 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.refl
d_refl_554 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_554 = erased
-- Data.Integer.Properties._.IsBooleanRing.reflexive
d_reflexive_556 ::
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
d_reflexive_556 = erased
-- Data.Integer.Properties._.IsBooleanRing.setoid
d_setoid_558 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_558 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_558 v5
du_setoid_558 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_558 v0
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
-- Data.Integer.Properties._.IsBooleanRing.sym
d_sym_560 ::
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
d_sym_560 = erased
-- Data.Integer.Properties._.IsBooleanRing.trans
d_trans_562 ::
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
d_trans_562 = erased
-- Data.Integer.Properties._.IsBooleanRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_564 ::
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
d_unique'691''45''8315''185'_564 = erased
-- Data.Integer.Properties._.IsBooleanRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_566 ::
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
d_unique'737''45''8315''185'_566 = erased
-- Data.Integer.Properties._.IsBooleanRing.zero
d_zero_568 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_568 v0 v1 v2 v3 ~v4 v5 = du_zero_568 v0 v1 v2 v3 v5
du_zero_568 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_568 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsBooleanRing.zeroʳ
d_zero'691'_570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_570 = erased
-- Data.Integer.Properties._.IsBooleanRing.zeroˡ
d_zero'737'_572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_572 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.*-assoc
d_'42''45'assoc_576 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_576 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.*-cong
d_'42''45'cong_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_578 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_580 ::
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
d_'8729''45'cong'691'_580 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_582 ::
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
d_'8729''45'cong'737'_582 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.*-idem
d_'42''45'idem_584 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_584 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.*-identity
d_'42''45'identity_586 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Integer.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_588 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_588 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_590 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.isBand
d_isBand_592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_592 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_592 v4
du_isBand_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
         (coe v0))
-- Data.Integer.Properties._.IsBooleanSemiring.*-isIdempotentMonoid
d_'42''45'isIdempotentMonoid_594 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_'42''45'isIdempotentMonoid_594 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
      v4
-- Data.Integer.Properties._.IsBooleanSemiring.*-isMagma
d_'42''45'isMagma_596 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_596 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_596 v4
du_'42''45'isMagma_596 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_596 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsBooleanSemiring.*-isMonoid
d_'42''45'isMonoid_598 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_598 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_598 v4
du_'42''45'isMonoid_598 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_598 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsBooleanSemiring.*-isSemigroup
d_'42''45'isSemigroup_600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_600 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_600 v4
du_'42''45'isSemigroup_600 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_600 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsBooleanSemiring.assoc
d_assoc_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_602 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.+-cancel
d_'43''45'cancel_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel_604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'cancel_2388 (coe v0)
-- Data.Integer.Properties._.IsBooleanSemiring.+-cancelʳ
d_'43''45'cancel'691'_606 ::
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
d_'43''45'cancel'691'_606 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.+-cancelˡ
d_'43''45'cancel'737'_608 ::
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
d_'43''45'cancel'737'_608 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.comm
d_comm_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_610 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.∙-cong
d_'8729''45'cong_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_612 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_614 ::
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
d_'8729''45'cong'691'_614 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_616 ::
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
d_'8729''45'cong'737'_616 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.identity
d_identity_618 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_618 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))
-- Data.Integer.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_620 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_622 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.isCommutativeMagma
d_isCommutativeMagma_624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_624 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_624 v4
du_isCommutativeMagma_624 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_624 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Integer.Properties._.IsBooleanSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_628 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_628 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_628 v4
du_isCommutativeSemigroup_628 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_628 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.isMagma
d_isMagma_630 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_630 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.isMonoid
d_isMonoid_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))))
-- Data.Integer.Properties._.IsBooleanSemiring.isSemigroup
d_isSemigroup_634 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))))
-- Data.Integer.Properties._.IsBooleanSemiring.isUnitalMagma
d_isUnitalMagma_636 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_636 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_636 v4
du_isUnitalMagma_636 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_636 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.distrib
d_distrib_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Integer.Properties._.IsBooleanSemiring.distribʳ
d_distrib'691'_640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_640 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.distribˡ
d_distrib'737'_642 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_642 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.isEquivalence
d_isEquivalence_644 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_644 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.isNearSemiring
d_isNearSemiring_646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_646 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_646 v4
du_isNearSemiring_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_646 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Integer.Properties._.IsBooleanSemiring.isPartialEquivalence
d_isPartialEquivalence_648 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_648 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_648 v4
du_isPartialEquivalence_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_648 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.isSemiring
d_isSemiring_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)
-- Data.Integer.Properties._.IsBooleanSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_652 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Integer.Properties._.IsBooleanSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_654 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_654 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_654 v4
du_isSemiringWithoutOne_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Integer.Properties._.IsBooleanSemiring.refl
d_refl_656 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_656 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.reflexive
d_reflexive_658 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_658 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.setoid
d_setoid_660 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_660 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_660 v4
du_setoid_660 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_660 v0
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
-- Data.Integer.Properties._.IsBooleanSemiring.sym
d_sym_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_662 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.trans
d_trans_664 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_664 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.zero
d_zero_666 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Integer.Properties._.IsBooleanSemiring.zeroʳ
d_zero'691'_668 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_668 = erased
-- Data.Integer.Properties._.IsBooleanSemiring.zeroˡ
d_zero'737'_670 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_670 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_674 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_676 ::
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
d_'42''45'cancel'691''45'nonZero_676 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_678 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_678 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_680 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_680 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_682 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_684 ::
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
d_'8729''45'cong'691'_684 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_686 ::
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
d_'8729''45'cong'737'_686 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_690 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_690 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_692 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_692 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_694 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_694 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_694 v4
du_isCommutativeMagma_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_694 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_696 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_696 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeMonoid_696 v4
du_'42''45'isCommutativeMonoid_696 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_696 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_698 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_698 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_698 v4
du_'42''45'isCommutativeSemigroup_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_698 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
            (coe v1)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_700 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_700 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_700 v4
du_'42''45'isMagma_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_700 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_702 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_702 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_702 v4
du_'42''45'isMonoid_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_702 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_704 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_704 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_704 v4
du_'42''45'isSemigroup_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_704 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_706 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_708 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_708 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_710 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_712 ::
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
d_'8729''45'cong'691'_712 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_714 ::
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
d_'8729''45'cong'737'_714 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_716 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_716 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_718 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_718 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_720 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_720 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_722 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_722 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_722 v4
du_isCommutativeMagma_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_722 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_726 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_726 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_726 v4
du_isCommutativeSemigroup_726 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_726 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_728 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_730 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_730 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_732 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_732 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_734 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_734 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_734 v4
du_isUnitalMagma_734 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_734 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_736 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_736 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
               (coe v0))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_738 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_740 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_740 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
      (coe v0)
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_744 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_744 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemiringWithoutOne_744 v4
du_isCommutativeSemiringWithoutOne_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_746 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_748 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_748 ~v0 ~v1 ~v2 ~v3 v4 = du_isNearSemiring_748 v4
du_isNearSemiring_748 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_748 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_750 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_750 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_750 v4
du_isPartialEquivalence_750 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_750 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_752 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_754 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_754 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
            (coe v0)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_756 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_756 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_756 v4
du_isSemiringWithoutOne_756 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_756 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v1)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_758 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_760 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_762 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_762 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_762 v4
du_setoid_762 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_762 v0
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_764 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_766 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
            (coe v0)))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_770 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_770 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_772 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_772 = erased
-- Data.Integer.Properties._.IsCommutativeBand.assoc
d_assoc_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_776 = erased
-- Data.Integer.Properties._.IsCommutativeBand.comm
d_comm_778 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_778 = erased
-- Data.Integer.Properties._.IsCommutativeBand.idem
d_idem_780 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_780 = erased
-- Data.Integer.Properties._.IsCommutativeBand.isBand
d_isBand_782 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_782 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Integer.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_784 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_784 ~v0 v1 = du_isCommutativeMagma_784 v1
du_isCommutativeMagma_784 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_786 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_786 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656 v1
-- Data.Integer.Properties._.IsCommutativeBand.isEquivalence
d_isEquivalence_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeBand.isMagma
d_isMagma_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_792 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_792 ~v0 v1 = du_isPartialEquivalence_792 v1
du_isPartialEquivalence_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_792 v0
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
-- Data.Integer.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Integer.Properties._.IsCommutativeBand.refl
d_refl_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_796 = erased
-- Data.Integer.Properties._.IsCommutativeBand.reflexive
d_reflexive_798 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_798 = erased
-- Data.Integer.Properties._.IsCommutativeBand.setoid
d_setoid_800 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_800 ~v0 v1 = du_setoid_800 v1
du_setoid_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_800 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeBand.sym
d_sym_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_802 = erased
-- Data.Integer.Properties._.IsCommutativeBand.trans
d_trans_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_804 = erased
-- Data.Integer.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_806 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_806 = erased
-- Data.Integer.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_808 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_808 = erased
-- Data.Integer.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_810 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_810 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.comm
d_comm_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_814 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_816 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMagma.isMagma
d_isMagma_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_818 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Integer.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_820 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_820 ~v0 v1 = du_isPartialEquivalence_820 v1
du_isPartialEquivalence_820 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_820 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsCommutativeMagma.refl
d_refl_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_822 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.reflexive
d_reflexive_824 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_824 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.setoid
d_setoid_826 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_826 ~v0 v1 = du_setoid_826 v1
du_setoid_826 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMagma.sym
d_sym_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_828 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.trans
d_trans_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_830 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_832 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_834 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_834 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_836 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_836 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.assoc
d_assoc_840 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_840 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.comm
d_comm_842 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_842 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.identity
d_identity_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_846 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_846 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_848 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_848 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_850 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_850 ~v0 ~v1 v2 = du_isCommutativeMagma_850 v2
du_isCommutativeMagma_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_852 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_852 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816 v2
-- Data.Integer.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_854 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_858 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)
-- Data.Integer.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_860 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_860 ~v0 ~v1 v2
  = du_isPartialEquivalence_860 v2
du_isPartialEquivalence_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_860 v0
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
-- Data.Integer.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_864 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_864 ~v0 ~v1 v2 = du_isUnitalMagma_864 v2
du_isUnitalMagma_864 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.refl
d_refl_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_866 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_868 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_868 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.setoid
d_setoid_870 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_870 ~v0 ~v1 v2 = du_setoid_870 v2
du_setoid_870 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_870 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeMonoid.sym
d_sym_872 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_872 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.trans
d_trans_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_874 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_876 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_878 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_878 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_880 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_880 = erased
-- Data.Integer.Properties._.IsCommutativeRing._//_
d__'47''47'__884 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> Integer -> Integer
d__'47''47'__884 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__884 v0 v2
du__'47''47'__884 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__884 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_886 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_888 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_890 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_892 ::
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
d_'8729''45'cong'691'_892 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_894 ::
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
d_'8729''45'cong'737'_894 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_898 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_898 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_900 = erased
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_902 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_902 v0 v1 v2 v3 v5
du_isCommutativeMagma_902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_902 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_904 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_904 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_904 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_904 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_906 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_906 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_906 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_908 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_908 v0 v1 v2 v3 v5
du_'42''45'isMagma_908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_908 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_910 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_910 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_910 v0 v1 v2 v3 v5
du_'42''45'isMonoid_910 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_910 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_912 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_912 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_912 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_912 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_912 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsCommutativeRing.assoc
d_assoc_914 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_914 = erased
-- Data.Integer.Properties._.IsCommutativeRing.comm
d_comm_916 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_916 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_918 ::
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
d_'8729''45'cong_918 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_920 ::
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
d_'8729''45'cong'691'_920 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_922 ::
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
d_'8729''45'cong'737'_922 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identity
d_identity_924 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_924 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_924 v5
du_identity_924 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_924 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_926 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_926 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_928 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_928 = erased
-- Data.Integer.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_932 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_932 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_932 v5
du_isCommutativeMagma_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_932 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_934 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_934 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_934 v5
du_isCommutativeMonoid_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_934 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_936 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_936 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_936 v5
du_isCommutativeSemigroup_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_936 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isGroup
d_isGroup_938 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_938 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_938 v5
du_isGroup_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_938 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_940 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_940 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_940 v5
du_isInvertibleMagma_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_940 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_942 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_942 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_942 v5
du_isInvertibleUnitalMagma_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_942 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isMagma
d_isMagma_944 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_944 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_944 v5
du_isMagma_944 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_944 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_946 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_946 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_946 v5
du_isMonoid_946 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_946 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_948 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_948 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_948 v5
du_isSemigroup_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_948 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_950 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_950 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_950 v5
du_isUnitalMagma_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_950 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_952 ::
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
d_'8315''185''45'cong_952 = erased
-- Data.Integer.Properties._.IsCommutativeRing.inverse
d_inverse_954 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_954 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_954 v5
du_inverse_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_954 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_956 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_956 = erased
-- Data.Integer.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_958 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_958 = erased
-- Data.Integer.Properties._.IsCommutativeRing.distrib
d_distrib_960 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_962 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_962 = erased
-- Data.Integer.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_964 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_964 = erased
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_966 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_966 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146 v0 v1
      v2 v3 v5
-- Data.Integer.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_968 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_968 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_968 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_968 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_968 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_970 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_970 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_970 v5
du_isEquivalence_970 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_970 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_972 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_972 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_972 v0 v1 v2 v3 v5
du_isNearSemiring_972 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_972 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v5)))
-- Data.Integer.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_974 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_974 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_974 v5
du_isPartialEquivalence_974 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_974 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isRing
d_isRing_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_976 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0)
-- Data.Integer.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_978 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_978 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_978 v5
du_isRingWithoutOne_978 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
du_isRingWithoutOne_978 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_980 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_980 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_980 v0 v1 v2 v3 v5
du_isSemiring_980 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_980 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Integer.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_982 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_982 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutAnnihilatingZero_982 v5
du_isSemiringWithoutAnnihilatingZero_982 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_984 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_984 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_984 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_984 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_984 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Data.Integer.Properties._.IsCommutativeRing.refl
d_refl_986 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_986 = erased
-- Data.Integer.Properties._.IsCommutativeRing.reflexive
d_reflexive_988 ::
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
d_reflexive_988 = erased
-- Data.Integer.Properties._.IsCommutativeRing.setoid
d_setoid_990 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_990 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_990 v5
du_setoid_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_990 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.sym
d_sym_992 ::
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
d_sym_992 = erased
-- Data.Integer.Properties._.IsCommutativeRing.trans
d_trans_994 ::
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
d_trans_994 = erased
-- Data.Integer.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_996 ::
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
d_unique'691''45''8315''185'_996 = erased
-- Data.Integer.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_998 ::
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
d_unique'737''45''8315''185'_998 = erased
-- Data.Integer.Properties._.IsCommutativeRing.zero
d_zero_1000 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1000 v0 v1 v2 v3 ~v4 v5 = du_zero_1000 v0 v1 v2 v3 v5
du_zero_1000 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1000 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v5)))
-- Data.Integer.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_1002 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1002 = erased
-- Data.Integer.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_1004 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1004 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.assoc
d_assoc_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1008 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.comm
d_comm_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1010 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_1012 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1012 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608 v1
-- Data.Integer.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_1018 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1018 ~v0 v1
  = du_isPartialEquivalence_1018 v1
du_isPartialEquivalence_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1018 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1020 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemigroup.refl
d_refl_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1022 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_1024 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1024 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.setoid
d_setoid_1026 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1026 ~v0 v1 = du_setoid_1026 v1
du_setoid_1026 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1026 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemigroup.sym
d_sym_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1028 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.trans
d_trans_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1030 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1032 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_1034 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1034 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_1036 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1036 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1040 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1042 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1044 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_1046 ::
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
d_'8729''45'cong'691'_1046 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_1048 ::
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
d_'8729''45'cong'737'_1048 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_1052 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1052 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_1054 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1054 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_1056 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1056 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1056 v4
du_isCommutativeMagma_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1056 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1058 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_1058 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      v4
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1060 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1060 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isCommutativeSemigroup_1060 v4
du_'42''45'isCommutativeSemigroup_1060 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_1060 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_1062 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1062 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1062 v4
du_'42''45'isMagma_1062 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1062 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_1064 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1064 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1064 v4
du_'42''45'isMonoid_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1064 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_1066 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1066 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1066 v4
du_'42''45'isSemigroup_1066 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1066 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.assoc
d_assoc_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1068 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.comm
d_comm_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1070 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1072 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_1074 ::
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
d_'8729''45'cong'691'_1074 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_1076 ::
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
d_'8729''45'cong'737'_1076 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identity
d_identity_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))
-- Data.Integer.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_1080 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1080 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_1082 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1082 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_1084 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1084 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1084 v4
du_isCommutativeMagma_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1084 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1088 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1088 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1088 v4
du_isCommutativeSemigroup_1088 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1088 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_1090 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1090 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_1092 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_1094 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1094 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))))
-- Data.Integer.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_1096 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1096 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1096 v4
du_isUnitalMagma_1096 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1096 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.distrib
d_distrib_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_1100 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1100 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_1102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1102 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_1104 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      v4
-- Data.Integer.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_1106 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1106 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_1108 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1108 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1108 v4
du_isNearSemiring_1108 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1108 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_1110 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1110 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1110 v4
du_isPartialEquivalence_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1110 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1112 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1114 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1116 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1116 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1116 v4
du_isSemiringWithoutOne_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.refl
d_refl_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1118 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_1120 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1120 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.setoid
d_setoid_1122 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1122 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1122 v4
du_setoid_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1122 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.sym
d_sym_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1124 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.trans
d_trans_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1126 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.zero
d_zero_1128 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_1130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1130 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_1132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1132 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1136 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1138 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1140 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1142 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1142 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1144 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1144 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1146 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1146 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_1146 v3
du_isCommutativeMagma_1146 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1148 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1148 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      v3
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_1150 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1150 ~v0 ~v1 ~v2 v3 = du_'42''45'isMagma_1150 v3
du_'42''45'isMagma_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_1152 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1152 ~v0 ~v1 ~v2 v3
  = du_'42''45'isSemigroup_1152 v3
du_'42''45'isSemigroup_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1154 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1156 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_1158 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1158 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1160 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1160 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1162 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.identity
d_identity_1164 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
               (coe v0))))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_1166 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1166 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_1168 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1168 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1170 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1170 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_1170 v3
du_isCommutativeMagma_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1170 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_1174 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1174 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_1174 v3
du_isCommutativeSemigroup_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1174 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1176 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
            (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_1180 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1180 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_1182 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1182 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
d_isEquivalence_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1184 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_1186 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1186 ~v0 ~v1 ~v2 v3 = du_isNearSemiring_1186 v3
du_isNearSemiring_1186 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_1188 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1188 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1188 v3
du_isPartialEquivalence_1188 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1188 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
      (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1192 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_1194 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1194 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_1196 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1196 ~v0 ~v1 ~v2 v3 = du_setoid_1196 v3
du_setoid_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1196 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1198 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_1200 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1200 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_1202 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_1204 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1204 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_1206 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1206 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.flex
d_flex_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_1210 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Integer.Properties._.IsFlexibleMagma.isMagma
d_isMagma_1214 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1214 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0)
-- Data.Integer.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_1216 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1216 ~v0 v1
  = du_isPartialEquivalence_1216 v1
du_isPartialEquivalence_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1216 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsFlexibleMagma.refl
d_refl_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1218 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.reflexive
d_reflexive_1220 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1220 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.setoid
d_setoid_1222 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1222 ~v0 v1 = du_setoid_1222 v1
du_setoid_1222 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Integer.Properties._.IsFlexibleMagma.sym
d_sym_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1224 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.trans
d_trans_1226 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1226 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_1228 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1228 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_1230 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1230 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_1232 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1232 = erased
-- Data.Integer.Properties._.IsGroup._-_
d__'45'__1236 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> Integer -> Integer
d__'45'__1236 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1144 v0 v2
-- Data.Integer.Properties._.IsGroup._//_
d__'47''47'__1238 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> Integer -> Integer
d__'47''47'__1238 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 v0 v2 v4 v5
-- Data.Integer.Properties._.IsGroup._\\_
d__'92''92'__1240 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> Integer -> Integer
d__'92''92'__1240 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1132 v0 v2 v4 v5
-- Data.Integer.Properties._.IsGroup.assoc
d_assoc_1242 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1242 = erased
-- Data.Integer.Properties._.IsGroup.identity
d_identity_1244 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Integer.Properties._.IsGroup.identityʳ
d_identity'691'_1246 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1246 = erased
-- Data.Integer.Properties._.IsGroup.identityˡ
d_identity'737'_1248 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1248 = erased
-- Data.Integer.Properties._.IsGroup.inverse
d_inverse_1250 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1250 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1092 (coe v0)
-- Data.Integer.Properties._.IsGroup.inverseʳ
d_inverse'691'_1252 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1252 = erased
-- Data.Integer.Properties._.IsGroup.inverseˡ
d_inverse'737'_1254 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1254 = erased
-- Data.Integer.Properties._.IsGroup.isEquivalence
d_isEquivalence_1256 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))))
-- Data.Integer.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_1258 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1258 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162 v3
-- Data.Integer.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1260 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_1260 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164 v3
-- Data.Integer.Properties._.IsGroup.isMagma
d_isMagma_1262 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)))
-- Data.Integer.Properties._.IsGroup.isMonoid
d_isMonoid_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1264 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)
-- Data.Integer.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_1266 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1266 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1266 v3
du_isPartialEquivalence_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1266 v0
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
-- Data.Integer.Properties._.IsGroup.isSemigroup
d_isSemigroup_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Integer.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_1270 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1270 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_1270 v3
du_isUnitalMagma_1270 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Integer.Properties._.IsGroup.refl
d_refl_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1272 = erased
-- Data.Integer.Properties._.IsGroup.reflexive
d_reflexive_1274 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1274 = erased
-- Data.Integer.Properties._.IsGroup.setoid
d_setoid_1276 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1276 ~v0 ~v1 ~v2 v3 = du_setoid_1276 v3
du_setoid_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1276 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Integer.Properties._.IsGroup.sym
d_sym_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1278 = erased
-- Data.Integer.Properties._.IsGroup.trans
d_trans_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1280 = erased
-- Data.Integer.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1282 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1282 = erased
-- Data.Integer.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1284 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1284 = erased
-- Data.Integer.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_1286 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1286 = erased
-- Data.Integer.Properties._.IsGroup.∙-cong
d_'8729''45'cong_1288 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1288 = erased
-- Data.Integer.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_1290 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1290 = erased
-- Data.Integer.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_1292 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1292 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_1296 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1296 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_1298 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1298 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_1300 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1300 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_1302 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_1304 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1304 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_1306 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1306 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_1308 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1308 ~v0 ~v1 v2 = du_isBand_1308 v2
du_isBand_1308 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_1310 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1310 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 v2
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_1312 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1312 ~v0 ~v1 v2
  = du_isCommutativeMagma_1312 v2
du_isCommutativeMagma_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1312 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_1314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0)
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_1316 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1316 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1316 v2
du_isCommutativeSemigroup_1316 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1318 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_1320 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1320 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 v2
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_1322 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
               (coe v0))))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_1326 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1326 ~v0 ~v1 v2
  = du_isPartialEquivalence_1326 v2
du_isPartialEquivalence_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1326 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_1328 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1330 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1330 ~v0 ~v1 v2 = du_isUnitalMagma_1330 v2
du_isUnitalMagma_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1330 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1332 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1334 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1334 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1336 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1336 ~v0 ~v1 v2 = du_setoid_1336 v2
du_setoid_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1336 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1338 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1340 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1342 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1342 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1344 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1344 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1346 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1346 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.idem
d_idem_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1350 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1354 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1354 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0)
-- Data.Integer.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1356 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1356 ~v0 v1
  = du_isPartialEquivalence_1356 v1
du_isPartialEquivalence_1356 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1356 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsIdempotentMagma.refl
d_refl_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1358 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1360 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1360 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.setoid
d_setoid_1362 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1362 ~v0 v1 = du_setoid_1362 v1
du_setoid_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1362 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMagma.sym
d_sym_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1364 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.trans
d_trans_1366 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1366 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1368 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1368 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1370 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1370 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1372 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1372 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.assoc
d_assoc_1376 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1376 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.idem
d_idem_1378 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1378 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.identity
d_identity_1380 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1382 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1382 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1384 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1384 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.isBand
d_isBand_1386 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1386 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_878 v2
-- Data.Integer.Properties._.IsIdempotentMonoid.isEquivalence
d_isEquivalence_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))))
-- Data.Integer.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1392 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)
-- Data.Integer.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1394 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1394 ~v0 ~v1 v2
  = du_isPartialEquivalence_1394 v2
du_isPartialEquivalence_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1394 v0
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
-- Data.Integer.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1398 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1398 ~v0 ~v1 v2 = du_isUnitalMagma_1398 v2
du_isUnitalMagma_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMonoid.refl
d_refl_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1400 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1402 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1402 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.setoid
d_setoid_1404 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1404 ~v0 ~v1 v2 = du_setoid_1404 v2
du_setoid_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1404 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Integer.Properties._.IsIdempotentMonoid.sym
d_sym_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1406 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.trans
d_trans_1408 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1408 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1410 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1410 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1412 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1412 = erased
-- Data.Integer.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1414 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1414 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1418 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1418 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1420 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1420 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1422 ::
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
d_'8729''45'cong'691'_1422 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1424 ::
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
d_'8729''45'cong'737'_1424 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1426 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1428 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1428 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1430 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1430 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1432 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1432 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_1432 v4
du_'42''45'isMagma_1432 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1432 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1434 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1434 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_1434 v4
du_'42''45'isMonoid_1434 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1434 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1436 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1436 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_1436 v4
du_'42''45'isSemigroup_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1436 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.assoc
d_assoc_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1438 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.comm
d_comm_1440 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1440 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1442 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1444 ::
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
d_'8729''45'cong'691'_1444 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1446 ::
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
d_'8729''45'cong'737'_1446 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1448 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1448 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identity
d_identity_1450 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))
-- Data.Integer.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1452 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1454 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1454 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.isBand
d_isBand_1456 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1456 ~v0 ~v1 ~v2 ~v3 v4 = du_isBand_1456 v4
du_isBand_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1456 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1458 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeBand_1458 v4
du_isCommutativeBand_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_1458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
         (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1460 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_1460 v4
du_isCommutativeMagma_1460 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1460 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1464 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_1464 v4
du_isCommutativeSemigroup_1464 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1464 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1466 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1466 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      v4
-- Data.Integer.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1468 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1468 ~v0 ~v1 ~v2 ~v3 v4
  = du_isIdempotentMonoid_1468 v4
du_isIdempotentMonoid_1468 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_1468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
      (coe
         MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
         (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1470 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))))
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1474 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1474 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))))
-- Data.Integer.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1476 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_1476 v4
du_isUnitalMagma_1476 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1476 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.distrib
d_distrib_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1480 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1482 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1484 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1486 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1486 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_1486 v4
du_isNearSemiring_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1486 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
            (coe v1)))
-- Data.Integer.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1488 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1488 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1488 v4
du_isPartialEquivalence_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1488 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1490 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1494 ~v0 ~v1 ~v2 ~v3 v4
  = du_isSemiringWithoutOne_1494 v4
du_isSemiringWithoutOne_1494 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.refl
d_refl_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1496 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1498 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.setoid
d_setoid_1500 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1500 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1500 v4
du_setoid_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1500 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.sym
d_sym_1502 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1502 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.trans
d_trans_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1504 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.zero
d_zero_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1506 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1508 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1508 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1510 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.inverse
d_inverse_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1514 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_976 (coe v0)
-- Data.Integer.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1516 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1516 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1518 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1518 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Integer.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1522 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0)
-- Data.Integer.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1524 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1524 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1524 v3
du_isPartialEquivalence_1524 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1524 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsInvertibleMagma.refl
d_refl_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1526 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1528 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1528 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.setoid
d_setoid_1530 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1530 ~v0 ~v1 ~v2 v3 = du_setoid_1530 v3
du_setoid_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Integer.Properties._.IsInvertibleMagma.sym
d_sym_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1532 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.trans
d_trans_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1534 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1536 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1538 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1540 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1540 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1542 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1542 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1546 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_1028 (coe v0)
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1548 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1548 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1550 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1550 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_976
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1554 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1554 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1556 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1556 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_974
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_974
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1564 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1564 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1564 v3
du_isPartialEquivalence_1564 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1564 v0
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
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1566 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1566 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1066 v3
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1568 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1570 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1570 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1572 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1572 ~v0 ~v1 ~v2 v3 = du_setoid_1572 v3
du_setoid_1572 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1572 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v1)))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1574 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1576 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1576 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1578 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1578 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1580 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1582 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1582 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1584 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1584 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1588 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1590 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1592 ::
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
d_'8729''45'cong'691'_1592 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1594 ::
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
d_'8729''45'cong'737'_1594 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1596 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1598 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1598 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1600 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1602 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_1602 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_1602 v5
du_'42''45'isMagma_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_1602 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1604 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_1604 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_1604 v5
du_'42''45'isMonoid_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_1604 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_1606 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_1606 v5
du_'42''45'isSemigroup_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_1606 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.assoc
d_assoc_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1608 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.comm
d_comm_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1610 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1612 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1614 ::
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
d_'8729''45'cong'691'_1614 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1616 ::
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
d_'8729''45'cong'737'_1616 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1618 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identity
d_identity_1620 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1620 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1622 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1624 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.isBand
d_isBand_1626 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isBand_1626 v5
du_isBand_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_1626 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1628 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1628 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeBand_1628 v5
du_isCommutativeBand_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_1628 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
            (coe v1)))
-- Data.Integer.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1630 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1630 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_1630 v5
du_isCommutativeMagma_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_1630 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1632 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1634 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_1634 v5
du_isCommutativeSemigroup_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1634 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1636 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1636 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'isIdempotentCommutativeMonoid_1636 v5
du_'43''45'isIdempotentCommutativeMonoid_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
du_'43''45'isIdempotentCommutativeMonoid_1636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Integer.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1638 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1638 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isIdempotentMonoid_1638 v5
du_isIdempotentMonoid_1638 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_1638 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944
         (coe
            MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
            (coe v1)))
-- Data.Integer.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1640 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1642 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1644 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1644 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1646 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1646 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_1646 v5
du_isUnitalMagma_1646 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1646 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.distrib
d_distrib_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1648 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1650 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1650 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1652 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1652 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1654 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000
d_isIdempotentSemiring_1656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
      (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1658 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_1658 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_1658 v5
du_isNearSemiring_1658 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_1658 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1660 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1660 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_1660 v5
du_isPartialEquivalence_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1660 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1664 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1664 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
            (coe v0)))
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1666 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1666 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_1666 v5
du_isSemiringWithoutOne_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1666 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v1)))
-- Data.Integer.Properties._.IsKleeneAlgebra.refl
d_refl_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1668 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1670 ::
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
d_reflexive_1670 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.setoid
d_setoid_1672 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1672 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1672 v5
du_setoid_1672 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1672 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2146 (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1676 ::
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
d_starDestructive'691'_1676 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1678 ::
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
d_starDestructive'737'_1678 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1680 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2144 (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1682 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1682 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1684 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1684 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.sym
d_sym_1686 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1686 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.trans
d_trans_1688 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1688 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.zero
d_zero_1690 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
            (coe v0)))
-- Data.Integer.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1692 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1692 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1694 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1694 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1698 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1698 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1700 ::
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
d_'47''47''45'cong'691'_1700 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1702 ::
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
d_'47''47''45'cong'737'_1702 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1704 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1706 ::
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
d_'92''92''45'cong'691'_1706 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1708 ::
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
d_'92''92''45'cong'737'_1708 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.identity
d_identity_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Integer.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1712 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1712 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1714 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1714 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1716 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))))
-- Data.Integer.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1718 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)
-- Data.Integer.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1722 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1722 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1722 v4
du_isPartialEquivalence_1722 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1722 v0
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
-- Data.Integer.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1724 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Integer.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1726 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1726 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1728 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1730 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1730 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1732 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1732 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.refl
d_refl_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1734 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1736 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1736 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1740 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1740 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1742 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1742 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.setoid
d_setoid_1744 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1744 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1744 v4
du_setoid_1744 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1744 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Integer.Properties._.IsLeftBolLoop.sym
d_sym_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1746 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.trans
d_trans_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1748 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1750 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1752 ::
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
d_'8729''45'cong'691'_1752 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1754 ::
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
d_'8729''45'cong'737'_1754 = erased
-- Data.Integer.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1758 = erased
-- Data.Integer.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1760 ::
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
d_'47''47''45'cong'691'_1760 = erased
-- Data.Integer.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1762 ::
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
d_'47''47''45'cong'737'_1762 = erased
-- Data.Integer.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1764 = erased
-- Data.Integer.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1766 ::
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
d_'92''92''45'cong'691'_1766 = erased
-- Data.Integer.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1768 ::
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
d_'92''92''45'cong'737'_1768 = erased
-- Data.Integer.Properties._.IsLoop.identity
d_identity_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1770 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3422 (coe v0)
-- Data.Integer.Properties._.IsLoop.identityʳ
d_identity'691'_1772 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1772 = erased
-- Data.Integer.Properties._.IsLoop.identityˡ
d_identity'737'_1774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1774 = erased
-- Data.Integer.Properties._.IsLoop.isEquivalence
d_isEquivalence_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)))
-- Data.Integer.Properties._.IsLoop.isMagma
d_isMagma_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Integer.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1780 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1780 v4
du_isPartialEquivalence_1780 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1780 v0
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
-- Data.Integer.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1782 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)
-- Data.Integer.Properties._.IsLoop.leftDivides
d_leftDivides_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Integer.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1786 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1786 = erased
-- Data.Integer.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1788 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1788 = erased
-- Data.Integer.Properties._.IsLoop.refl
d_refl_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1790 = erased
-- Data.Integer.Properties._.IsLoop.reflexive
d_reflexive_1792 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1792 = erased
-- Data.Integer.Properties._.IsLoop.rightDivides
d_rightDivides_1794 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Integer.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1796 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1796 = erased
-- Data.Integer.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1798 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1798 = erased
-- Data.Integer.Properties._.IsLoop.setoid
d_setoid_1800 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1800 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1800 v4
du_setoid_1800 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1800 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v1)))
-- Data.Integer.Properties._.IsLoop.sym
d_sym_1802 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1802 = erased
-- Data.Integer.Properties._.IsLoop.trans
d_trans_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1804 = erased
-- Data.Integer.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1806 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1806 = erased
-- Data.Integer.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1808 ::
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
d_'8729''45'cong'691'_1808 = erased
-- Data.Integer.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1810 ::
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
d_'8729''45'cong'737'_1810 = erased
-- Data.Integer.Properties._.IsMagma.isEquivalence
d_isEquivalence_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1814 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0)
-- Data.Integer.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1816 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1816 ~v0 v1
  = du_isPartialEquivalence_1816 v1
du_isPartialEquivalence_1816 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1816 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0))
-- Data.Integer.Properties._.IsMagma.refl
d_refl_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1818 = erased
-- Data.Integer.Properties._.IsMagma.reflexive
d_reflexive_1820 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1820 = erased
-- Data.Integer.Properties._.IsMagma.setoid
d_setoid_1822 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1822 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 v1
-- Data.Integer.Properties._.IsMagma.sym
d_sym_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1824 = erased
-- Data.Integer.Properties._.IsMagma.trans
d_trans_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1826 = erased
-- Data.Integer.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1828 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1828 = erased
-- Data.Integer.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1830 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1830 = erased
-- Data.Integer.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1832 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1832 = erased
-- Data.Integer.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Integer.Properties._.IsMedialMagma.isMagma
d_isMagma_1838 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1838 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0)
-- Data.Integer.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1840 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1840 ~v0 v1
  = du_isPartialEquivalence_1840 v1
du_isPartialEquivalence_1840 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1840 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsMedialMagma.medial
d_medial_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1842 = erased
-- Data.Integer.Properties._.IsMedialMagma.refl
d_refl_1844 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1844 = erased
-- Data.Integer.Properties._.IsMedialMagma.reflexive
d_reflexive_1846 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1846 = erased
-- Data.Integer.Properties._.IsMedialMagma.setoid
d_setoid_1848 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1848 ~v0 v1 = du_setoid_1848 v1
du_setoid_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Integer.Properties._.IsMedialMagma.sym
d_sym_1850 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1850 = erased
-- Data.Integer.Properties._.IsMedialMagma.trans
d_trans_1852 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1852 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1854 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1856 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1856 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1858 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1858 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1862 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1864 ::
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
d_'47''47''45'cong'691'_1864 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1866 ::
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
d_'47''47''45'cong'737'_1866 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1868 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1870 ::
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
d_'92''92''45'cong'691'_1870 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1872 ::
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
d_'92''92''45'cong'737'_1872 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.identity
d_identity_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Integer.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1876 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1876 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1878 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1878 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))))
-- Data.Integer.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1882 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)
-- Data.Integer.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1886 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1886 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1886 v4
du_isPartialEquivalence_1886 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1886 v0
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
-- Data.Integer.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1892 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1892 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1894 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1894 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1896 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.refl
d_refl_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1898 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1900 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1902 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1902 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1904 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1904 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1906 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.setoid
d_setoid_1908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1908 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1908 v4
du_setoid_1908 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1908 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Integer.Properties._.IsMiddleBolLoop.sym
d_sym_1910 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1910 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.trans
d_trans_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1912 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1914 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1916 ::
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
d_'8729''45'cong'691'_1916 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1918 ::
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
d_'8729''45'cong'737'_1918 = erased
-- Data.Integer.Properties._.IsMonoid.assoc
d_assoc_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1922 = erased
-- Data.Integer.Properties._.IsMonoid.identity
d_identity_1924 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1924 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Data.Integer.Properties._.IsMonoid.identityʳ
d_identity'691'_1926 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1926 = erased
-- Data.Integer.Properties._.IsMonoid.identityˡ
d_identity'737'_1928 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1928 = erased
-- Data.Integer.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1930 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)))
-- Data.Integer.Properties._.IsMonoid.isMagma
d_isMagma_1932 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1932 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0))
-- Data.Integer.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1934 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1934 ~v0 ~v1 v2
  = du_isPartialEquivalence_1934 v2
du_isPartialEquivalence_1934 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1934 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Data.Integer.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1936 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Data.Integer.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1938 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1938 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758 v2
-- Data.Integer.Properties._.IsMonoid.refl
d_refl_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1940 = erased
-- Data.Integer.Properties._.IsMonoid.reflexive
d_reflexive_1942 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1942 = erased
-- Data.Integer.Properties._.IsMonoid.setoid
d_setoid_1944 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1944 ~v0 ~v1 v2 = du_setoid_1944 v2
du_setoid_1944 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1944 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Data.Integer.Properties._.IsMonoid.sym
d_sym_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1946 = erased
-- Data.Integer.Properties._.IsMonoid.trans
d_trans_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1948 = erased
-- Data.Integer.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1950 = erased
-- Data.Integer.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1952 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1952 = erased
-- Data.Integer.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1954 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1954 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1958 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1960 ::
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
d_'47''47''45'cong'691'_1960 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1962 ::
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
d_'47''47''45'cong'737'_1962 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1964 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1966 ::
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
d_'92''92''45'cong'691'_1966 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1968 ::
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
d_'92''92''45'cong'737'_1968 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identical
d_identical_1970 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1970 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identity
d_identity_1972 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1972 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))
-- Data.Integer.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1974 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1974 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1976 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1976 = erased
-- Data.Integer.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1978 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1978 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1980 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486
d_isLeftBolLoop_1980 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)
-- Data.Integer.Properties._.IsMoufangLoop.isLoop
d_isLoop_1982 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3500
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))
-- Data.Integer.Properties._.IsMoufangLoop.isMagma
d_isMagma_1984 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1984 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1986 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1986 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_1986 v4
du_isPartialEquivalence_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1986 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1988 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1988 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_3500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)))
-- Data.Integer.Properties._.IsMoufangLoop.leftBol
d_leftBol_1990 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1990 = erased
-- Data.Integer.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1994 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1994 = erased
-- Data.Integer.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1996 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1996 = erased
-- Data.Integer.Properties._.IsMoufangLoop.refl
d_refl_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1998 = erased
-- Data.Integer.Properties._.IsMoufangLoop.reflexive
d_reflexive_2000 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2000 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightBol
d_rightBol_2002 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2002 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2004 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_3500
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_2006 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2006 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_2008 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2008 = erased
-- Data.Integer.Properties._.IsMoufangLoop.setoid
d_setoid_2010 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2010 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2010 v4
du_setoid_2010 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2010 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.sym
d_sym_2012 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2012 = erased
-- Data.Integer.Properties._.IsMoufangLoop.trans
d_trans_2014 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2014 = erased
-- Data.Integer.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_2016 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2016 = erased
-- Data.Integer.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_2018 ::
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
d_'8729''45'cong'691'_2018 = erased
-- Data.Integer.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_2020 ::
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
d_'8729''45'cong'737'_2020 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_2024 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2024 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2026 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_2028 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2028 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_2030 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2030 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_2032 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2032 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326 v3
-- Data.Integer.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_2034 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2034 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328 v3
-- Data.Integer.Properties._.IsNearSemiring.assoc
d_assoc_2036 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2036 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2038 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_2040 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2040 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_2042 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2042 = erased
-- Data.Integer.Properties._.IsNearSemiring.identity
d_identity_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.identityʳ
d_identity'691'_2046 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2046 = erased
-- Data.Integer.Properties._.IsNearSemiring.identityˡ
d_identity'737'_2048 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2048 = erased
-- Data.Integer.Properties._.IsNearSemiring.isMagma
d_isMagma_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)))
-- Data.Integer.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)
-- Data.Integer.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_2054 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_2056 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2056 ~v0 ~v1 ~v2 v3 = du_isUnitalMagma_2056 v3
du_isUnitalMagma_2056 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2056 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2058 = erased
-- Data.Integer.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_2060 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2060 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))))
-- Data.Integer.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_2062 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2062 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2062 v3
du_isPartialEquivalence_2062 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2062 v0
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
-- Data.Integer.Properties._.IsNearSemiring.refl
d_refl_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2064 = erased
-- Data.Integer.Properties._.IsNearSemiring.reflexive
d_reflexive_2066 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2066 = erased
-- Data.Integer.Properties._.IsNearSemiring.setoid
d_setoid_2068 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2068 ~v0 ~v1 ~v2 v3 = du_setoid_2068 v3
du_setoid_2068 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2068 v0
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
-- Data.Integer.Properties._.IsNearSemiring.sym
d_sym_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2070 = erased
-- Data.Integer.Properties._.IsNearSemiring.trans
d_trans_2072 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2072 = erased
-- Data.Integer.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_2074 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2074 = erased
-- Data.Integer.Properties._.IsNearring.*-assoc
d_'42''45'assoc_2078 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2078 = erased
-- Data.Integer.Properties._.IsNearring.*-cong
d_'42''45'cong_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2080 = erased
-- Data.Integer.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_2082 ::
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
d_'8729''45'cong'691'_2082 = erased
-- Data.Integer.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_2084 ::
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
d_'8729''45'cong'737'_2084 = erased
-- Data.Integer.Properties._.IsNearring.*-identity
d_'42''45'identity_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.identityʳ
d_identity'691'_2088 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2088 = erased
-- Data.Integer.Properties._.IsNearring.identityˡ
d_identity'737'_2090 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2090 = erased
-- Data.Integer.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_2092 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2092 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_2092 v5
du_'42''45'isMagma_2092 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2092 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_2094 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2094 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_2094 v5
du_'42''45'isMonoid_2094 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_2094 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_2096 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2096 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_2096 v5
du_'42''45'isSemigroup_2096 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2096 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.assoc
d_assoc_2098 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2098 = erased
-- Data.Integer.Properties._.IsNearring.∙-cong
d_'8729''45'cong_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2100 = erased
-- Data.Integer.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_2102 ::
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
d_'8729''45'cong'691'_2102 = erased
-- Data.Integer.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_2104 ::
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
d_'8729''45'cong'737'_2104 = erased
-- Data.Integer.Properties._.IsNearring.identity
d_identity_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Integer.Properties._.IsNearring.identityʳ
d_identity'691'_2108 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2108 = erased
-- Data.Integer.Properties._.IsNearring.identityˡ
d_identity'737'_2110 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2110 = erased
-- Data.Integer.Properties._.IsNearring.+-inverse
d_'43''45'inverse_2112 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_2112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2774 (coe v0)
-- Data.Integer.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_2114 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_2114 = erased
-- Data.Integer.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_2116 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_2116 = erased
-- Data.Integer.Properties._.IsNearring.isMagma
d_isMagma_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))))
-- Data.Integer.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.isSemigroup
d_isSemigroup_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Integer.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_2124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2124 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2124 v5
du_isUnitalMagma_2124 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2124 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v1)))
-- Data.Integer.Properties._.IsNearring.distrib
d_distrib_2126 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2292
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.distribʳ
d_distrib'691'_2128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2128 = erased
-- Data.Integer.Properties._.IsNearring.distribˡ
d_distrib'737'_2130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2130 = erased
-- Data.Integer.Properties._.IsNearring.identityʳ
d_identity'691'_2132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2132 = erased
-- Data.Integer.Properties._.IsNearring.identityˡ
d_identity'737'_2134 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2134 = erased
-- Data.Integer.Properties._.IsNearring.isEquivalence
d_isEquivalence_2136 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2136 v0
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
-- Data.Integer.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_2138 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2138 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2138 v5
du_isPartialEquivalence_2138 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2138 v0
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
-- Data.Integer.Properties._.IsNearring.isQuasiring
d_isQuasiring_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262
d_isQuasiring_2140 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)
-- Data.Integer.Properties._.IsNearring.refl
d_refl_2142 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2142 = erased
-- Data.Integer.Properties._.IsNearring.reflexive
d_reflexive_2144 ::
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
d_reflexive_2144 = erased
-- Data.Integer.Properties._.IsNearring.setoid
d_setoid_2146 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2146 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2146 v5
du_setoid_2146 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2146 v0
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
-- Data.Integer.Properties._.IsNearring.sym
d_sym_2148 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2148 = erased
-- Data.Integer.Properties._.IsNearring.trans
d_trans_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2150 = erased
-- Data.Integer.Properties._.IsNearring.zero
d_zero_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2294
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Integer.Properties._.IsNearring.zeroʳ
d_zero'691'_2154 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2154 = erased
-- Data.Integer.Properties._.IsNearring.zeroˡ
d_zero'737'_2156 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2156 = erased
-- Data.Integer.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2158 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing._//_
d__'47''47'__2162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> Integer -> Integer
d__'47''47'__2162 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2162 v0 v2
du__'47''47'__2162 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2162 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2164 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2166 ::
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
d_'8729''45'cong'691'_2166 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2168 ::
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
d_'8729''45'cong'737'_2168 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_2170 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2648 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_2172 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_2172 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_2174 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_2174 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_2176 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2176 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2728 v5
-- Data.Integer.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_2178 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_'42''45'isUnitalMagma_2178 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734 v5
-- Data.Integer.Properties._.IsNonAssociativeRing.assoc
d_assoc_2180 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2180 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.comm
d_comm_2182 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2182 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_2184 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2184 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2186 ::
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
d_'8729''45'cong'691'_2186 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2188 ::
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
d_'8729''45'cong'737'_2188 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.identity
d_identity_2190 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
               (coe v0))))
-- Data.Integer.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_2192 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2192 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_2194 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2194 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
      (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_2198 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2198 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2198 v5
du_isCommutativeMagma_2198 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2198 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_2200 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2200 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2200 v5
du_isCommutativeMonoid_2200 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2200 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Integer.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2202 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2202 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2202 v5
du_isCommutativeSemigroup_2202 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2202 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Integer.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_2206 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2206 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2206 v5
du_isInvertibleMagma_2206 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2206 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2208 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2208 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2208 v5
du_isInvertibleUnitalMagma_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2208 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_2210 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2210 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_2212 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
            (coe v0)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_2214 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
               (coe v0))))
-- Data.Integer.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_2216 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2216 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2216 v5
du_isUnitalMagma_2216 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2216 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_2218 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2218 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.inverse
d_inverse_2220 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
            (coe v0)))
-- Data.Integer.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_2222 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2222 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_2224 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2224 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.distrib
d_distrib_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2226 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2650 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_2228 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2228 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_2230 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2230 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_2232 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2232 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_2234 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2234 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2234 v5
du_isPartialEquivalence_2234 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2234 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.refl
d_refl_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2236 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_2238 ::
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
d_reflexive_2238 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.setoid
d_setoid_2240 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2240 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2240 v5
du_setoid_2240 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2240 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.sym
d_sym_2242 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2242 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.trans
d_trans_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2244 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2246 ::
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
d_unique'691''45''8315''185'_2246 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2248 ::
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
d_unique'737''45''8315''185'_2248 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.zero
d_zero_2250 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2250 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2652 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_2252 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2252 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_2254 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2254 = erased
-- Data.Integer.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_2258 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2258 = erased
-- Data.Integer.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_2260 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2260 = erased
-- Data.Integer.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_2262 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2262 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2264 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_2266 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2266 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_2268 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2268 = erased
-- Data.Integer.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_2270 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Integer.Properties._.IsQuasigroup.isMagma
d_isMagma_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2272 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_2274 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2274 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2274 v3
du_isPartialEquivalence_2274 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2274 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsQuasigroup.leftDivides
d_leftDivides_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2276 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_3346 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_2278 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2278 = erased
-- Data.Integer.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_2280 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2280 = erased
-- Data.Integer.Properties._.IsQuasigroup.refl
d_refl_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2282 = erased
-- Data.Integer.Properties._.IsQuasigroup.reflexive
d_reflexive_2284 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2284 = erased
-- Data.Integer.Properties._.IsQuasigroup.rightDivides
d_rightDivides_2286 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2286 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_3348 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_2288 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2288 = erased
-- Data.Integer.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_2290 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2290 = erased
-- Data.Integer.Properties._.IsQuasigroup.setoid
d_setoid_2292 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2292 ~v0 ~v1 ~v2 v3 = du_setoid_2292 v3
du_setoid_2292 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Integer.Properties._.IsQuasigroup.sym
d_sym_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2294 = erased
-- Data.Integer.Properties._.IsQuasigroup.trans
d_trans_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2296 = erased
-- Data.Integer.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2298 = erased
-- Data.Integer.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_2300 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2300 = erased
-- Data.Integer.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_2302 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2302 = erased
-- Data.Integer.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_2306 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2306 = erased
-- Data.Integer.Properties._.IsQuasiring.*-cong
d_'42''45'cong_2308 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2308 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2310 ::
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
d_'8729''45'cong'691'_2310 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2312 ::
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
d_'8729''45'cong'737'_2312 = erased
-- Data.Integer.Properties._.IsQuasiring.*-identity
d_'42''45'identity_2314 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.identityʳ
d_identity'691'_2316 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2316 = erased
-- Data.Integer.Properties._.IsQuasiring.identityˡ
d_identity'737'_2318 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2318 = erased
-- Data.Integer.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_2320 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2320 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344 v4
-- Data.Integer.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2322 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2322 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348 v4
-- Data.Integer.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2324 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2324 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346 v4
-- Data.Integer.Properties._.IsQuasiring.assoc
d_assoc_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2326 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2328 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2328 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2330 ::
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
d_'8729''45'cong'691'_2330 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2332 ::
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
d_'8729''45'cong'737'_2332 = erased
-- Data.Integer.Properties._.IsQuasiring.identity
d_identity_2334 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.identityʳ
d_identity'691'_2336 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2336 = erased
-- Data.Integer.Properties._.IsQuasiring.identityˡ
d_identity'737'_2338 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2338 = erased
-- Data.Integer.Properties._.IsQuasiring.isMagma
d_isMagma_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)))
-- Data.Integer.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2344 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2346 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2346 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2346 v4
du_isUnitalMagma_2346 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.distrib
d_distrib_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2348 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2292 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2350 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2350 = erased
-- Data.Integer.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2352 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2352 = erased
-- Data.Integer.Properties._.IsQuasiring.identityʳ
d_identity'691'_2354 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2354 = erased
-- Data.Integer.Properties._.IsQuasiring.identityˡ
d_identity'737'_2356 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2356 = erased
-- Data.Integer.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_2358 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2358 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))))
-- Data.Integer.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2360 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2360 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2360 v4
du_isPartialEquivalence_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2360 v0
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
-- Data.Integer.Properties._.IsQuasiring.refl
d_refl_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2362 = erased
-- Data.Integer.Properties._.IsQuasiring.reflexive
d_reflexive_2364 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2364 = erased
-- Data.Integer.Properties._.IsQuasiring.setoid
d_setoid_2366 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2366 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2366 v4
du_setoid_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2366 v0
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
-- Data.Integer.Properties._.IsQuasiring.sym
d_sym_2368 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2368 = erased
-- Data.Integer.Properties._.IsQuasiring.trans
d_trans_2370 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2370 = erased
-- Data.Integer.Properties._.IsQuasiring.zero
d_zero_2372 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2372 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2294 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2374 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2374 = erased
-- Data.Integer.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2376 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2376 = erased
-- Data.Integer.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2380 = erased
-- Data.Integer.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2382 ::
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
d_'47''47''45'cong'691'_2382 = erased
-- Data.Integer.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2384 ::
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
d_'47''47''45'cong'737'_2384 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2386 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2388 ::
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
d_'92''92''45'cong'691'_2388 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2390 ::
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
d_'92''92''45'cong'737'_2390 = erased
-- Data.Integer.Properties._.IsRightBolLoop.identity
d_identity_2392 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Integer.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2394 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2394 = erased
-- Data.Integer.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2396 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2396 = erased
-- Data.Integer.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_2398 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))))
-- Data.Integer.Properties._.IsRightBolLoop.isLoop
d_isLoop_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_2400 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)
-- Data.Integer.Properties._.IsRightBolLoop.isMagma
d_isMagma_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2404 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2404 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2404 v4
du_isPartialEquivalence_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2404 v0
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
-- Data.Integer.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_2406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Integer.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2408 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2410 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2410 = erased
-- Data.Integer.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2412 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2412 = erased
-- Data.Integer.Properties._.IsRightBolLoop.refl
d_refl_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2414 = erased
-- Data.Integer.Properties._.IsRightBolLoop.reflexive
d_reflexive_2416 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2416 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightBol
d_rightBol_2418 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2418 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2422 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2422 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2424 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2424 = erased
-- Data.Integer.Properties._.IsRightBolLoop.setoid
d_setoid_2426 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2426 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2426 v4
du_setoid_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2426 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v2))))
-- Data.Integer.Properties._.IsRightBolLoop.sym
d_sym_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2428 = erased
-- Data.Integer.Properties._.IsRightBolLoop.trans
d_trans_2430 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2430 = erased
-- Data.Integer.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2432 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2432 = erased
-- Data.Integer.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2434 ::
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
d_'8729''45'cong'691'_2434 = erased
-- Data.Integer.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2436 ::
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
d_'8729''45'cong'737'_2436 = erased
-- Data.Integer.Properties._.IsRing._//_
d__'47''47'__2440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> Integer -> Integer
d__'47''47'__2440 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2440 v0 v2
du__'47''47'__2440 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2440 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsRing.*-assoc
d_'42''45'assoc_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2442 = erased
-- Data.Integer.Properties._.IsRing.*-cong
d_'42''45'cong_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2444 = erased
-- Data.Integer.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2446 ::
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
d_'8729''45'cong'691'_2446 = erased
-- Data.Integer.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2448 ::
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
d_'8729''45'cong'737'_2448 = erased
-- Data.Integer.Properties._.IsRing.*-identity
d_'42''45'identity_2450 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896 (coe v0)
-- Data.Integer.Properties._.IsRing.identityʳ
d_identity'691'_2452 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2452 = erased
-- Data.Integer.Properties._.IsRing.identityˡ
d_identity'737'_2454 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2454 = erased
-- Data.Integer.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2456 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2456 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2456 v0 v1 v2 v3 v5
du_'42''45'isMagma_2456 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2456 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2458 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2458 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 v0 v1 v2
      v3 v5
-- Data.Integer.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2460 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2460 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2460 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2460 v0 v1 v2 v3 v4
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
-- Data.Integer.Properties._.IsRing.assoc
d_assoc_2462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2462 = erased
-- Data.Integer.Properties._.IsRing.comm
d_comm_2464 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2464 = erased
-- Data.Integer.Properties._.IsRing.∙-cong
d_'8729''45'cong_2466 ::
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
d_'8729''45'cong_2466 = erased
-- Data.Integer.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2468 ::
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
d_'8729''45'cong'691'_2468 = erased
-- Data.Integer.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2470 ::
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
d_'8729''45'cong'737'_2470 = erased
-- Data.Integer.Properties._.IsRing.identity
d_identity_2472 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2472 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2472 v5
du_identity_2472 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v0))))
-- Data.Integer.Properties._.IsRing.identityʳ
d_identity'691'_2474 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2474 = erased
-- Data.Integer.Properties._.IsRing.identityˡ
d_identity'737'_2476 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2476 = erased
-- Data.Integer.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe v0)
-- Data.Integer.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2480 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2480 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_2480 v5
du_isCommutativeMagma_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2480 v0
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
-- Data.Integer.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2482 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2482 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMonoid_2482 v5
du_isCommutativeMonoid_2482 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2482 v0
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
-- Data.Integer.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2484 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2484 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_2484 v5
du_isCommutativeSemigroup_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2484 v0
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
-- Data.Integer.Properties._.IsRing.isGroup
d_isGroup_2486 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2486 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2486 v5
du_isGroup_2486 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_isGroup_2486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
         (coe v0))
-- Data.Integer.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2488 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2488 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleMagma_2488 v5
du_isInvertibleMagma_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2488 v0
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
-- Data.Integer.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2490 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2490 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isInvertibleUnitalMagma_2490 v5
du_isInvertibleUnitalMagma_2490 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2490 v0
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
-- Data.Integer.Properties._.IsRing.isMagma
d_isMagma_2492 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2492 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2492 v5
du_isMagma_2492 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_2492 v0
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
-- Data.Integer.Properties._.IsRing.isMonoid
d_isMonoid_2494 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2494 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2494 v5
du_isMonoid_2494 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_isMonoid_2494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v0)))
-- Data.Integer.Properties._.IsRing.isSemigroup
d_isSemigroup_2496 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2496 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2496 v5
du_isSemigroup_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_2496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
               (coe v0))))
-- Data.Integer.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2498 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2498 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_2498 v5
du_isUnitalMagma_2498 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2498 v0
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
-- Data.Integer.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2500 ::
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
d_'8315''185''45'cong_2500 = erased
-- Data.Integer.Properties._.IsRing.inverse
d_inverse_2502 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2502 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2502 v5
du_inverse_2502 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2502 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
            (coe v0)))
-- Data.Integer.Properties._.IsRing.inverseʳ
d_inverse'691'_2504 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2504 = erased
-- Data.Integer.Properties._.IsRing.inverseˡ
d_inverse'737'_2506 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2506 = erased
-- Data.Integer.Properties._.IsRing.distrib
d_distrib_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2508 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2898 (coe v0)
-- Data.Integer.Properties._.IsRing.distribʳ
d_distrib'691'_2510 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2510 = erased
-- Data.Integer.Properties._.IsRing.distribˡ
d_distrib'737'_2512 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2512 = erased
-- Data.Integer.Properties._.IsRing.isEquivalence
d_isEquivalence_2514 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2514 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2514 v5
du_isEquivalence_2514 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_2514 v0
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
-- Data.Integer.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2516 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2516 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2516 v0 v1 v2 v3 v5
du_isNearSemiring_2516 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2516 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Integer.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2518 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2518 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2518 v5
du_isPartialEquivalence_2518 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2518 v0
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
-- Data.Integer.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2520 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_2520 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 v5
-- Data.Integer.Properties._.IsRing.isSemiring
d_isSemiring_2522 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_2522 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 v0 v1 v2 v3 v5
-- Data.Integer.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2524 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2524 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      v5
-- Data.Integer.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2526 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2526 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2526 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2526 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2526 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsRing.refl
d_refl_2528 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2528 = erased
-- Data.Integer.Properties._.IsRing.reflexive
d_reflexive_2530 ::
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
d_reflexive_2530 = erased
-- Data.Integer.Properties._.IsRing.setoid
d_setoid_2532 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2532 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2532 v5
du_setoid_2532 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2532 v0
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
-- Data.Integer.Properties._.IsRing.sym
d_sym_2534 ::
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
d_sym_2534 = erased
-- Data.Integer.Properties._.IsRing.trans
d_trans_2536 ::
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
d_trans_2536 = erased
-- Data.Integer.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2538 ::
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
d_unique'691''45''8315''185'_2538 = erased
-- Data.Integer.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2540 ::
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
d_unique'737''45''8315''185'_2540 = erased
-- Data.Integer.Properties._.IsRing.zero
d_zero_2542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2542 v0 v1 v2 v3 ~v4 v5 = du_zero_2542 v0 v1 v2 v3 v5
du_zero_2542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2542 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Integer.Properties._.IsRing.zeroʳ
d_zero'691'_2544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2544 = erased
-- Data.Integer.Properties._.IsRing.zeroˡ
d_zero'737'_2546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2546 = erased
-- Data.Integer.Properties._.IsRingWithoutOne._//_
d__'47''47'__2550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> Integer -> Integer
d__'47''47'__2550 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2550 v0 v2
du__'47''47'__2550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) -> Integer -> Integer -> Integer
du__'47''47'__2550 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Integer.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2552 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2552 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2554 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2554 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2556 ::
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
d_'8729''45'cong'691'_2556 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2558 ::
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
d_'8729''45'cong'737'_2558 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2560 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2560 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2562 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2562 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Integer.Properties._.IsRingWithoutOne.assoc
d_assoc_2564 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2564 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.comm
d_comm_2566 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2566 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2568 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2568 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2570 ::
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
d_'8729''45'cong'691'_2570 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2572 ::
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
d_'8729''45'cong'737'_2572 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.identity
d_identity_2574 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2574 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v0))))
-- Data.Integer.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2576 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2578 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2580 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
      (coe v0)
-- Data.Integer.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2582 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2582 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2582 v4
du_isCommutativeMagma_2582 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2582 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2584 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2584 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMonoid_2584 v4
du_isCommutativeMonoid_2584 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2584 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Integer.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2586 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2586 v4
du_isCommutativeSemigroup_2586 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2586 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Data.Integer.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2588 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Integer.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2590 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_2590 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleMagma_2590 v4
du_isInvertibleMagma_2590 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_2590 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Integer.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2592 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2592 ~v0 ~v1 ~v2 ~v3 v4
  = du_isInvertibleUnitalMagma_2592 v4
du_isInvertibleUnitalMagma_2592 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2592 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Data.Integer.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2594 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2594 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2596 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v0)))
-- Data.Integer.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2598 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
               (coe v0))))
-- Data.Integer.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2600 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2600 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2600 v4
du_isUnitalMagma_2600 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2600 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2602 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2602 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.inverse
d_inverse_2604 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
            (coe v0)))
-- Data.Integer.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2606 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2606 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2608 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2608 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.distrib
d_distrib_2610 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2610 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2520 (coe v0)
-- Data.Integer.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2612 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2612 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2614 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2614 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2616 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2616 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2618 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2618
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598
-- Data.Integer.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2620 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2620 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2620 v4
du_isPartialEquivalence_2620 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2620 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.refl
d_refl_2622 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2622 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2624 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.setoid
d_setoid_2626 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2626 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2626 v4
du_setoid_2626 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2626 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.sym
d_sym_2628 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2628 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.trans
d_trans_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2630 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2632 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2632 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2634 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2634 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.zero
d_zero_2636 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2636 = coe MAlonzo.Code.Algebra.Structures.du_zero_2596
-- Data.Integer.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2638 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2638 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2640 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2640 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Integer.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2646 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2646 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0)
-- Data.Integer.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2648 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2648 ~v0 v1
  = du_isPartialEquivalence_2648 v1
du_isPartialEquivalence_2648 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2648 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsSelectiveMagma.refl
d_refl_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2650 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2652 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2652 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.sel
d_sel_2654 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2654 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_462 (coe v0)
-- Data.Integer.Properties._.IsSelectiveMagma.setoid
d_setoid_2656 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2656 ~v0 v1 = du_setoid_2656 v1
du_setoid_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Integer.Properties._.IsSelectiveMagma.sym
d_sym_2658 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2658 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.trans
d_trans_2660 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2660 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2662 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2662 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2664 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2664 = erased
-- Data.Integer.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2666 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2666 = erased
-- Data.Integer.Properties._.IsSemigroup.assoc
d_assoc_2670 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2670 = erased
-- Data.Integer.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2672 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Integer.Properties._.IsSemigroup.isMagma
d_isMagma_2674 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2674 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Data.Integer.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2676 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2676 ~v0 v1
  = du_isPartialEquivalence_2676 v1
du_isPartialEquivalence_2676 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2676 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsSemigroup.refl
d_refl_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2678 = erased
-- Data.Integer.Properties._.IsSemigroup.reflexive
d_reflexive_2680 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2680 = erased
-- Data.Integer.Properties._.IsSemigroup.setoid
d_setoid_2682 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2682 ~v0 v1 = du_setoid_2682 v1
du_setoid_2682 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Integer.Properties._.IsSemigroup.sym
d_sym_2684 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2684 = erased
-- Data.Integer.Properties._.IsSemigroup.trans
d_trans_2686 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2686 = erased
-- Data.Integer.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2688 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2688 = erased
-- Data.Integer.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2690 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2690 = erased
-- Data.Integer.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2692 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2692 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2696 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2696 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Integer.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2698 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2698 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0)
-- Data.Integer.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2700 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2700 ~v0 v1
  = du_isPartialEquivalence_2700 v1
du_isPartialEquivalence_2700 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2700 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsSemimedialMagma.refl
d_refl_2702 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2702 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2704 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2704 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2706 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2706 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_420 (coe v0)
-- Data.Integer.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2708 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2708 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2710 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2710 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.setoid
d_setoid_2712 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2712 ~v0 v1 = du_setoid_2712 v1
du_setoid_2712 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2712 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Integer.Properties._.IsSemimedialMagma.sym
d_sym_2714 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2714 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.trans
d_trans_2716 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2716 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2718 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2718 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2720 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2720 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2722 ::
  (Integer -> Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2722 = erased
-- Data.Integer.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2726 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2726 = erased
-- Data.Integer.Properties._.IsSemiring.*-cong
d_'42''45'cong_2728 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2728 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2730 ::
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
d_'8729''45'cong'691'_2730 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2732 ::
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
d_'8729''45'cong'737'_2732 = erased
-- Data.Integer.Properties._.IsSemiring.*-identity
d_'42''45'identity_2734 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.identityʳ
d_identity'691'_2736 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2736 = erased
-- Data.Integer.Properties._.IsSemiring.identityˡ
d_identity'737'_2738 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2738 = erased
-- Data.Integer.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2740 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2740 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMagma_2740 v4
du_'42''45'isMagma_2740 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'42''45'isMagma_2740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2742 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2742 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isMonoid_2742 v4
du_'42''45'isMonoid_2742 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_2742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2744 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2744 ~v0 ~v1 ~v2 ~v3 v4
  = du_'42''45'isSemigroup_2744 v4
du_'42''45'isSemigroup_2744 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'42''45'isSemigroup_2744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.assoc
d_assoc_2746 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2746 = erased
-- Data.Integer.Properties._.IsSemiring.comm
d_comm_2748 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2748 = erased
-- Data.Integer.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2750 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2752 ::
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
d_'8729''45'cong'691'_2752 = erased
-- Data.Integer.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2754 ::
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
d_'8729''45'cong'737'_2754 = erased
-- Data.Integer.Properties._.IsSemiring.identity
d_identity_2756 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v0))))
-- Data.Integer.Properties._.IsSemiring.identityʳ
d_identity'691'_2758 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2758 = erased
-- Data.Integer.Properties._.IsSemiring.identityˡ
d_identity'737'_2760 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2760 = erased
-- Data.Integer.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2762 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2762 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2762 v4
du_isCommutativeMagma_2762 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2762 v0
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
-- Data.Integer.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2766 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2766 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2766 v4
du_isCommutativeSemigroup_2766 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2766 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v1)))
-- Data.Integer.Properties._.IsSemiring.isMagma
d_isMagma_2768 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2768 v0
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
-- Data.Integer.Properties._.IsSemiring.isMonoid
d_isMonoid_2770 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
            (coe v0)))
-- Data.Integer.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2772 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2772 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe v0))))
-- Data.Integer.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2774 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2774 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2774 v4
du_isUnitalMagma_2774 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2774 v0
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
-- Data.Integer.Properties._.IsSemiring.distrib
d_distrib_2776 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.distribʳ
d_distrib'691'_2778 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2778 = erased
-- Data.Integer.Properties._.IsSemiring.distribˡ
d_distrib'737'_2780 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2780 = erased
-- Data.Integer.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2782 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2782 v0
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
-- Data.Integer.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2784 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2784 ~v0 ~v1 ~v2 ~v3 v4
  = du_isNearSemiring_2784 v4
du_isNearSemiring_2784 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2786 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2786 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2786 v4
du_isPartialEquivalence_2786 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2786 v0
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
-- Data.Integer.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2788 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe v0)
-- Data.Integer.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2790 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2790 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732 v4
-- Data.Integer.Properties._.IsSemiring.refl
d_refl_2792 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2792 = erased
-- Data.Integer.Properties._.IsSemiring.reflexive
d_reflexive_2794 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2794 = erased
-- Data.Integer.Properties._.IsSemiring.setoid
d_setoid_2796 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2796 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2796 v4
du_setoid_2796 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2796 v0
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
-- Data.Integer.Properties._.IsSemiring.sym
d_sym_2798 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2798 = erased
-- Data.Integer.Properties._.IsSemiring.trans
d_trans_2800 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2800 = erased
-- Data.Integer.Properties._.IsSemiring.zero
d_zero_2802 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2802 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1658 (coe v0)
-- Data.Integer.Properties._.IsSemiring.zeroʳ
d_zero'691'_2804 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2804 = erased
-- Data.Integer.Properties._.IsSemiring.zeroˡ
d_zero'737'_2806 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2806 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2810 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2810 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2812 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2812 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2814 ::
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
d_'8729''45'cong'691'_2814 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2816 ::
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
d_'8729''45'cong'737'_2816 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2820 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2820 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2822 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2822 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2824 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2824 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616 v4
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2826 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2826 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620 v4
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2828 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618 v4
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2830 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2830 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2832 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2832 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2834 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2834 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2836 ::
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
d_'8729''45'cong'691'_2836 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2838 ::
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
d_'8729''45'cong'737'_2838 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2840 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2842 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2842 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2844 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2844 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2846 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2846 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeMagma_2846 v4
du_isCommutativeMagma_2846 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2846 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2848 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2850 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2850 ~v0 ~v1 ~v2 ~v3 v4
  = du_isCommutativeSemigroup_2850 v4
du_isCommutativeSemigroup_2850 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2850 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2852 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
               (coe v0))))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2854 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2856 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2858 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_2858 ~v0 ~v1 ~v2 ~v3 v4 = du_isUnitalMagma_2858 v4
du_isUnitalMagma_2858 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_2858 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2860 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2860 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1566 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2862 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2862 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2864 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2864 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2866 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2866 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2868 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2868 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_2868 v4
du_isPartialEquivalence_2868 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2868 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2870 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2870 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2872 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2872 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2874 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2874 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2874 v4
du_setoid_2874 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2874 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2876 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2876 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2878 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2878 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2882 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2882 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2884 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2884 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2886 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2886 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2888 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2888 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2890 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2890 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412 v3
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2892 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2892 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414 v3
-- Data.Integer.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2894 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2894 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.comm
d_comm_2896 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2896 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2898 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2898 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2900 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2900 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2902 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2902 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.identity
d_identity_2904 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2904 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2906 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2906 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2908 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2908 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2910 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_2910 ~v0 ~v1 ~v2 v3
  = du_isCommutativeMagma_2910 v3
du_isCommutativeMagma_2910 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_2910 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Integer.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2912 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2912 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2914 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2914 ~v0 ~v1 ~v2 v3
  = du_isCommutativeSemigroup_2914 v3
du_isCommutativeSemigroup_2914 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2916 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2916 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2918 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2918 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1368 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2920 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2920 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2922 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2922 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.isEquivalence
d_isEquivalence_2924 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2924 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2926 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2926 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430 v3
-- Data.Integer.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2928 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2928 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2928 v3
du_isPartialEquivalence_2928 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2928 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.refl
d_refl_2930 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2930 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2932 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2932 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2934 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2934 ~v0 ~v1 ~v2 v3 = du_setoid_2934 v3
du_setoid_2934 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2934 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.sym
d_sym_2936 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2936 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.trans
d_trans_2938 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2938 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.zero
d_zero_2940 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2940 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1370 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2942 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2942 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2944 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2944 = erased
-- Data.Integer.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2948 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2948 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0)
-- Data.Integer.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2950 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2950 ~v0 ~v1 v2
  = du_isPartialEquivalence_2950 v2
du_isPartialEquivalence_2950 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2950 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0))
-- Data.Integer.Properties._.IsSuccessorSet.refl
d_refl_2952 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2952 = erased
-- Data.Integer.Properties._.IsSuccessorSet.reflexive
d_reflexive_2954 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2954 = erased
-- Data.Integer.Properties._.IsSuccessorSet.setoid
d_setoid_2956 ::
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2956 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_174 v2
-- Data.Integer.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2958 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2958 = erased
-- Data.Integer.Properties._.IsSuccessorSet.sym
d_sym_2960 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2960 = erased
-- Data.Integer.Properties._.IsSuccessorSet.trans
d_trans_2962 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2962 = erased
-- Data.Integer.Properties._.IsUnitalMagma.identity
d_identity_2966 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2966 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_680 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2968 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2968 = erased
-- Data.Integer.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2970 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2970 = erased
-- Data.Integer.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2972 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2972 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Integer.Properties._.IsUnitalMagma.isMagma
d_isMagma_2974 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2974 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2976 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2976 ~v0 ~v1 v2
  = du_isPartialEquivalence_2976 v2
du_isPartialEquivalence_2976 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2976 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v1)))
-- Data.Integer.Properties._.IsUnitalMagma.refl
d_refl_2978 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2978 = erased
-- Data.Integer.Properties._.IsUnitalMagma.reflexive
d_reflexive_2980 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2980 = erased
-- Data.Integer.Properties._.IsUnitalMagma.setoid
d_setoid_2982 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2982 ~v0 ~v1 v2 = du_setoid_2982 v2
du_setoid_2982 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_204
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Integer.Properties._.IsUnitalMagma.sym
d_sym_2984 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2984 = erased
-- Data.Integer.Properties._.IsUnitalMagma.trans
d_trans_2986 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2986 = erased
-- Data.Integer.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2988 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2988 = erased
-- Data.Integer.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2990 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2990 = erased
-- Data.Integer.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2992 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2992 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₀
d_Homomorphic'8320'_2996 ::
  (Integer -> Integer) -> Integer -> Integer -> ()
d_Homomorphic'8320'_2996 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₁
d_Homomorphic'8321'_2998 ::
  (Integer -> Integer) ->
  (Integer -> Integer) -> (Integer -> Integer) -> ()
d_Homomorphic'8321'_2998 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₂
d_Homomorphic'8322'_3000 ::
  (Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Homomorphic'8322'_3000 = erased
-- Data.Integer.Properties.ℤtoℕ.Morphism
d_Morphism_3002 :: ()
d_Morphism_3002 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₀
d_Homomorphic'8320'_3006 ::
  (Integer -> Integer) -> Integer -> Integer -> ()
d_Homomorphic'8320'_3006 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₁
d_Homomorphic'8321'_3008 ::
  (Integer -> Integer) ->
  (Integer -> Integer) -> (Integer -> Integer) -> ()
d_Homomorphic'8321'_3008 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₂
d_Homomorphic'8322'_3010 ::
  (Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Homomorphic'8322'_3010 = erased
-- Data.Integer.Properties.ℕtoℤ.Morphism
d_Morphism_3012 :: ()
d_Morphism_3012 = erased
-- Data.Integer.Properties.+-injective
d_'43''45'injective_3030 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'injective_3030 = erased
-- Data.Integer.Properties.-[1+-injective
d_'45''91'1'43''45'injective_3032 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''91'1'43''45'injective_3032 = erased
-- Data.Integer.Properties.+[1+-injective
d_'43''91'1'43''45'injective_3034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''91'1'43''45'injective_3034 = erased
-- Data.Integer.Properties._≟_
d__'8799'__3036 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__3036 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                  erased erased
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__3032 (coe v0) (coe v1))
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
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                          erased erased
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__3032 (coe v2)
                             (coe v3))))
-- Data.Integer.Properties.≡-setoid
d_'8801''45'setoid_3054 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''45'setoid_3054
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Integer.Properties.≡-decSetoid
d_'8801''45'decSetoid_3056 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_'8801''45'decSetoid_3056
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__3036)
-- Data.Integer.Properties.drop‿+≤+
d_drop'8255''43''8804''43'_3058 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''43''8804''43'_3058 ~v0 ~v1 v2
  = du_drop'8255''43''8804''43'_3058 v2
du_drop'8255''43''8804''43'_3058 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''43''8804''43'_3058 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿-≤-
d_drop'8255''45''8804''45'_3062 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''45''8804''45'_3062 ~v0 ~v1 v2
  = du_drop'8255''45''8804''45'_3062 v2
du_drop'8255''45''8804''45'_3062 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''45''8804''45'_3062 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤-reflexive
d_'8804''45'reflexive_3066 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'reflexive_3066 v0 ~v1 ~v2
  = du_'8804''45'reflexive_3066 v0
du_'8804''45'reflexive_3066 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'8804''45'reflexive_3066 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
            (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140 (coe v0))
      _ -> let v1 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140 (coe v1)))
-- Data.Integer.Properties.≤-refl
d_'8804''45'refl_3072 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'refl_3072 v0 = coe du_'8804''45'reflexive_3066 (coe v0)
-- Data.Integer.Properties.≤-trans
d_'8804''45'trans_3074 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'trans_3074 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_3074 v3 v4
du_'8804''45'trans_3074 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'8804''45'trans_3074 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_3148 (coe v7)
                       (coe v4))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_3148 (coe v4)
                       (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤-antisym
d_'8804''45'antisym_3088 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3088 = erased
-- Data.Integer.Properties.≤-total
d_'8804''45'total_3098 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3098 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Sum.Base.du_map_84
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70)
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70)
                  (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_3168
                     (coe v0) (coe v1))
            _ -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                   (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Sum.Base.du_map_84
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56)
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56)
                          (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_3168
                             (coe v3) (coe v2))))
-- Data.Integer.Properties._≤?_
d__'8804''63'__3116 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3116 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70)
                  (coe du_drop'8255''43''8804''43'_3058)
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__3160 (coe v0)
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
                         (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62))
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56)
                          (coe du_drop'8255''45''8804''45'_3062)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__3160 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.≤-irrelevant
d_'8804''45'irrelevant_3134 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3134 = erased
-- Data.Integer.Properties.≤-isPreorder
d_'8804''45'isPreorder_3144 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_3144
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3066 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_3074 v3 v4)
-- Data.Integer.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_3146 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_132
d_'8804''45'isTotalPreorder_3146
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_178
      (coe d_'8804''45'isPreorder_3144) (coe d_'8804''45'total_3098)
-- Data.Integer.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3148 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_3148
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe d_'8804''45'isPreorder_3144) erased
-- Data.Integer.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3150 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_3150
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe d_'8804''45'isPartialOrder_3148) (coe d_'8804''45'total_3098)
-- Data.Integer.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3152 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'8804''45'isDecTotalOrder_3152
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe d_'8804''45'isTotalOrder_3150) (coe d__'8799'__3036)
      (coe d__'8804''63'__3116)
-- Data.Integer.Properties.≤-preorder
d_'8804''45'preorder_3154 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8804''45'preorder_3154
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      d_'8804''45'isPreorder_3144
-- Data.Integer.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_3156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240
d_'8804''45'totalPreorder_3156
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_334
      d_'8804''45'isTotalPreorder_3146
-- Data.Integer.Properties.≤-poset
d_'8804''45'poset_3158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8804''45'poset_3158
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      d_'8804''45'isPartialOrder_3148
-- Data.Integer.Properties.≤-totalOrder
d_'8804''45'totalOrder_3160 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'8804''45'totalOrder_3160
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      d_'8804''45'isTotalOrder_3150
-- Data.Integer.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8804''45'decTotalOrder_3162
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      d_'8804''45'isDecTotalOrder_3152
-- Data.Integer.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_3164 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''7495''8658''8804'_3164 v0 v1 ~v2
  = du_'8804''7495''8658''8804'_3164 v0 v1
du_'8804''7495''8658''8804'_3164 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'8804''7495''8658''8804'_3164 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_3094
               (coe v0))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
             _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_3094
                          (coe v2)))
-- Data.Integer.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_3172 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> AgdaAny
d_'8804''8658''8804''7495'_3172 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_3172 v2
du_'8804''8658''8804''7495'_3172 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> AgdaAny
du_'8804''8658''8804''7495'_3172 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_3106
             (coe v3)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_3106
             (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<ᵇ⇒<
d_'60''7495''8658''60'_3178 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'60''7495''8658''60'_3178 v0 v1 ~v2
  = du_'60''7495''8658''60'_3178 v0 v1
du_'60''7495''8658''60'_3178 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'60''7495''8658''60'_3178 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
               (coe v0))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
             _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                          (coe v2)))
-- Data.Integer.Properties.<⇒<ᵇ
d_'60''8658''60''7495'_3186 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> AgdaAny
d_'60''8658''60''7495'_3186 ~v0 ~v1 v2
  = du_'60''8658''60''7495'_3186 v2
du_'60''8658''60''7495'_3186 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> AgdaAny
du_'60''8658''60''7495'_3186 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'60''8658''60''7495'_3076
             (coe v3)
      MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'60''8658''60''7495'_3076
             (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿+<+
d_drop'8255''43''60''43'_3192 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''43''60''43'_3192 ~v0 ~v1 v2
  = du_drop'8255''43''60''43'_3192 v2
du_drop'8255''43''60''43'_3192 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''43''60''43'_3192 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿-<-
d_drop'8255''45''60''45'_3196 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''45''60''45'_3196 ~v0 ~v1 v2
  = du_drop'8255''45''60''45'_3196 v2
du_drop'8255''45''60''45'_3196 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''45''60''45'_3196 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+≮0
d_'43''8814'0_3200 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''8814'0_3200 = erased
-- Data.Integer.Properties.+≮-
d_'43''8814''45'_3202 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''8814''45'_3202 = erased
-- Data.Integer.Properties.<⇒≤
d_'60''8658''8804'_3204 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'60''8658''8804'_3204 ~v0 ~v1 v2 = du_'60''8658''8804'_3204 v2
du_'60''8658''8804'_3204 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'60''8658''8804'_3204 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v3
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 (coe v3))
      MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v3
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<⇒≢
d_'60''8658''8802'_3210 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_3210 = erased
-- Data.Integer.Properties.<⇒≱
d_'60''8658''8817'_3216 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_3216 = erased
-- Data.Integer.Properties.≤⇒≯
d_'8804''8658''8815'_3222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_3222 = erased
-- Data.Integer.Properties.≰⇒>
d_'8816''8658''62'_3232 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'8816''8658''62'_3232 v0 v1 ~v2 = du_'8816''8658''62'_3232 v0 v1
du_'8816''8658''62'_3232 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'8816''8658''62'_3232 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_3272 (coe v0)
                     (coe v1))
            _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_3272 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.≮⇒≥
d_'8814''8658''8805'_3258 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8814''8658''8805'_3258 v0 v1 ~v2
  = du_'8814''8658''8805'_3258 v0 v1
du_'8814''8658''8805'_3258 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'8814''8658''8805'_3258 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                     (coe v0) (coe v1))
            _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                             (coe v3) (coe v2))))
-- Data.Integer.Properties.>⇒≰
d_'62''8658''8816'_3284 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8816'_3284 = erased
-- Data.Integer.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_3286 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'8804''8743''8802''8658''60'_3286 v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_3286 v0 v1 v2
du_'8804''8743''8802''8658''60'_3286 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'8804''8743''8802''8658''60'_3286 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v5
        -> let v6 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                   (coe v6) (coe v5)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                (coe v1) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_3298 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  (MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_3298 = erased
-- Data.Integer.Properties.<-irrefl
d_'60''45'irrefl_3304 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3304 = erased
-- Data.Integer.Properties.<-asym
d_'60''45'asym_3310 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3310 = erased
-- Data.Integer.Properties.≤-<-trans
d_'8804''45''60''45'trans_3316 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'8804''45''60''45'trans_3316 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45''60''45'trans_3316 v3 v4
du_'8804''45''60''45'trans_3316 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'8804''45''60''45'trans_3316 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_3374
                       (coe v7) (coe v4))
             MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368
                       (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<-≤-trans
d_'60''45''8804''45'trans_3330 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'60''45''8804''45'trans_3330 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45''8804''45'trans_3330 v3 v4
du_'60''45''8804''45'trans_3330 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'60''45''8804''45'trans_3330 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368
                       (coe v7) (coe v4))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
        -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_3374
                       (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<-trans
d_'60''45'trans_3344 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'60''45'trans_3344 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45'trans_3344 v3 v4
du_'60''45'trans_3344 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'60''45'trans_3344 v0 v1
  = coe
      du_'8804''45''60''45'trans_3316
      (coe du_'60''8658''8804'_3204 (coe v0)) (coe v1)
-- Data.Integer.Properties.<-cmp
d_'60''45'cmp_3350 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3350 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          let v2
                = coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                    (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86) in
          coe
            (case coe v0 of
               0 -> case coe v1 of
                      0 -> coe
                             MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
                      _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                          coe
                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                            (coe
                               MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
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
                                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                         _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                             let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                             coe
                               (let v5
                                      = coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                          erased
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_3022
                                               (coe v3))
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe eqInt (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
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
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                                            (coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                                                                               (coe v3)))
                                                                  else coe
                                                                         seq
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                                            (coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                                                                               (coe v3)
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                                                                                  (coe v3)
                                                                                  (coe v4)))))) in
                                                  coe
                                                    (case coe v8 of
                                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v9
                                                         -> coe
                                                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
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
                                                                 MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                                    v11))
                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                         _ -> coe
                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)))
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                      (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (let v4
                              = coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                  erased
                                  (\ v4 ->
                                     coe
                                       MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_3022
                                       (coe v2))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe eqInt (coe v0) (coe v1))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
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
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                                    (coe v7))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                                                                       (coe v2)))
                                                          else coe
                                                                 seq
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                                    (coe v7))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                                                                       (coe v2)
                                                                       (coe
                                                                          MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                                                                          (coe v2) (coe v3)))))) in
                                          coe
                                            (case coe v7 of
                                               MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v8
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                      (coe
                                                         MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                                                         v8)
                                               MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                                                      erased
                                               MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v10
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                      (coe
                                                         MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                                                         v10)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                             _ -> MAlonzo.RTE.mazUnreachableError)))
-- Data.Integer.Properties._<?_
d__'60''63'__3440 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3440 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94)
                  (coe du_drop'8255''43''60''43'_3192)
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'60''63'__3412 (coe v0)
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
                         (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86))
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80)
                          (coe du_drop'8255''45''60''45'_3196)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'60''63'__3412 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.<-irrelevant
d_'60''45'irrelevant_3458 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3458 = erased
-- Data.Integer.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3468 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'60''45'isStrictPartialOrder_3468
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3344 v3 v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
-- Data.Integer.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3474 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''45'isStrictTotalOrder_3474
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe d_'60''45'isStrictPartialOrder_3468) (coe d_'60''45'cmp_3350)
-- Data.Integer.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3476 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'60''45'strictPartialOrder_3476
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      d_'60''45'isStrictPartialOrder_3468
-- Data.Integer.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3478 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'60''45'strictTotalOrder_3478
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      d_'60''45'isStrictTotalOrder_3474
-- Data.Integer.Properties.i≮i
d_i'8814'i_3480 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_i'8814'i_3480 = erased
-- Data.Integer.Properties.>-irrefl
d_'62''45'irrefl_3482 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''45'irrefl_3482 = erased
-- Data.Integer.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3488 a0 a1 = ()
-- Data.Integer.Properties.≤-Reasoning._._∎
d__'8718'_3490 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3490
  = let v0 = d_'8804''45'isPreorder_3144 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Integer.Properties.≤-Reasoning._.<-go
d_'60''45'go_3492 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3492
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3344 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45''8804''45'trans_3330 v3 v4)
-- Data.Integer.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3494 a0 a1 a2 = ()
-- Data.Integer.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3496 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3496 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Integer.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3498 a0 a1 a2 = ()
-- Data.Integer.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3500 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3502 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_begin__3502
  = let v0 = d_'8804''45'isPreorder_3144 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_3204 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Integer.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3504 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3504 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__248
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3506 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3506 = erased
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3508 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_begin__3508
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.Integer.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3510 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3510
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Integer.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3514 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3514 = erased
-- Data.Integer.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3516 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_extractStrict_3516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Integer.Properties.≤-Reasoning._.start
d_start_3524 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_start_3524
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_3144)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_3204 v2)
-- Data.Integer.Properties.≤-Reasoning._.step-<
d_step'45''60'_3526 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3526
  = let v0 = \ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_3344 v3 v4 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164 in
       coe
         (let v2
                = \ v2 v3 v4 v5 v6 -> coe du_'60''45''8804''45'trans_3330 v5 v6 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Integer.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3528 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3528
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3530 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3530 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3530 v2
du_step'45''8801''45''8739'_3530 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3530 v0 = coe v0
-- Data.Integer.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3532 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3532
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3534 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3534
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3536 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3536
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3538 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3538
  = let v0 = d_'8804''45'isPreorder_3144 in
    coe
      (let v1
             = \ v1 v2 v3 v4 v5 -> coe du_'8804''45''60''45'trans_3316 v4 v5 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Integer.Properties.≤-Reasoning._.stop
d_stop_3540 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3540
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_3144)
-- Data.Integer.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3544 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3544
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Integer.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3546
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_3144)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
-- Data.Integer.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3548 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3548 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3548 v4
du_'8801''45'go_3548 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3548 v0 = coe v0
-- Data.Integer.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3550 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3550
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_3144)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45''60''45'trans_3316 v3 v4)
-- Data.Integer.Properties.positive⁻¹
d_positive'8315''185'_3570 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_positive'8315''185'_3570 ~v0 ~v1 = du_positive'8315''185'_3570
du_positive'8315''185'_3570 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_positive'8315''185'_3570
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Integer.Properties.negative⁻¹
d_negative'8315''185'_3576 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_negative'8315''185'_3576 ~v0 ~v1 = du_negative'8315''185'_3576
du_negative'8315''185'_3576 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_negative'8315''185'_3576
  = coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
-- Data.Integer.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_3582 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_nonPositive'8315''185'_3582 v0 ~v1
  = du_nonPositive'8315''185'_3582 v0
du_nonPositive'8315''185'_3582 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_nonPositive'8315''185'_3582 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
-- Data.Integer.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_3588 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_nonNegative'8315''185'_3588 ~v0 ~v1
  = du_nonNegative'8315''185'_3588
du_nonNegative'8315''185'_3588 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_nonNegative'8315''185'_3588
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Integer.Properties.negative<positive
d_negative'60'positive_3596 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_negative'60'positive_3596 ~v0 ~v1 ~v2 ~v3
  = du_negative'60'positive_3596
du_negative'60'positive_3596 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_negative'60'positive_3596
  = coe
      du_'60''45'trans_3344 (coe du_negative'8315''185'_3576)
      (coe du_positive'8315''185'_3570)
-- Data.Integer.Properties.neg-involutive
d_neg'45'involutive_3604 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'involutive_3604 = erased
-- Data.Integer.Properties.neg-injective
d_neg'45'injective_3610 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'injective_3610 = erased
-- Data.Integer.Properties.neg-≤-pos
d_neg'45''8804''45'pos_3626 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_neg'45''8804''45'pos_3626 v0 ~v1
  = du_neg'45''8804''45'pos_3626 v0
du_neg'45''8804''45'pos_3626 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_neg'45''8804''45'pos_3626 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
-- Data.Integer.Properties.neg-mono-≤
d_neg'45'mono'45''8804'_3630 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_neg'45'mono'45''8804'_3630 ~v0 v1 v2
  = du_neg'45'mono'45''8804'_3630 v1 v2
du_neg'45'mono'45''8804'_3630 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_neg'45'mono'45''8804'_3630 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v4
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe du_neg'45''8804''45'pos_3626 (coe v0)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe du_neg'45''8804''45'pos_3626 (coe v0)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-cancel-≤
d_neg'45'cancel'45''8804'_3636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_neg'45'cancel'45''8804'_3636 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            0 -> coe
                   seq (coe v2)
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
            _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                case coe v2 of
                  MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v5
                    -> coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                         (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                  _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe
                   seq (coe v2)
                   (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
      _ -> case coe v2 of
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
               -> case coe v5 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                      -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-mono-<
d_neg'45'mono'45''60'_3660 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_neg'45'mono'45''60'_3660 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v2 of
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v5
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                   (coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70 (coe v5))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v1 of
             0 -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 coe
                   seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
             _ -> case coe v2 of
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v5
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-cancel-<
d_neg'45'cancel'45''60'_3674 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_neg'45'cancel'45''60'_3674 v0 v1 v2
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            0 -> coe
                   seq (coe v2)
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
            _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                case coe v2 of
                  MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v5
                    -> coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                         (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                  _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe
                   seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
      _ -> case coe v2 of
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v5
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                    (coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70 (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.∣i∣≡0⇒i≡0
d_'8739'i'8739''8801'0'8658'i'8801'0_3698 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'8739''8801'0'8658'i'8801'0_3698 = erased
-- Data.Integer.Properties.∣-i∣≡∣i∣
d_'8739''45'i'8739''8801''8739'i'8739'_3702 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'i'8739''8801''8739'i'8739'_3702 = erased
-- Data.Integer.Properties.n⊖n≡0
d_n'8854'n'8801'0_3710 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8854'n'8801'0_3710 = erased
-- Data.Integer.Properties.[1+m]⊖[1+n]≡m⊖n
d_'91'1'43'm'93''8854''91'1'43'n'93''8801'm'8854'n_3728 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'1'43'm'93''8854''91'1'43'n'93''8801'm'8854'n_3728 = erased
-- Data.Integer.Properties.⊖-swap
d_'8854''45'swap_3750 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45'swap_3750 = erased
-- Data.Integer.Properties.⊖-≥
d_'8854''45''8805'_3764 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8805'_3764 = erased
-- Data.Integer.Properties.≤-⊖
d_'8804''45''8854'_3792 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45''8854'_3792 = erased
-- Data.Integer.Properties.⊖-≤
d_'8854''45''8804'_3806 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8804'_3806 = erased
-- Data.Integer.Properties.⊖-<
d_'8854''45''60'_3842 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''60'_3842 = erased
-- Data.Integer.Properties.⊖-≰
d_'8854''45''8816'_3844 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8816'_3844 = erased
-- Data.Integer.Properties.∣⊖∣-≤
d_'8739''8854''8739''45''8804'_3846 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''8804'_3846 = erased
-- Data.Integer.Properties.∣⊖∣-<
d_'8739''8854''8739''45''60'_3858 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''60'_3858 = erased
-- Data.Integer.Properties.∣⊖∣-≰
d_'8739''8854''8739''45''8816'_3870 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''8816'_3870 = erased
-- Data.Integer.Properties.-m+n≡n⊖m
d_'45'm'43'n'8801'n'8854'm_3876 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'm'43'n'8801'n'8854'm_3876 = erased
-- Data.Integer.Properties.m-n≡m⊖n
d_m'45'n'8801'm'8854'n_3888 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'45'n'8801'm'8854'n_3888 = erased
-- Data.Integer.Properties.-[n⊖m]≡-m+n
d_'45''91'n'8854'm'93''8801''45'm'43'n_3902 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''91'n'8854'm'93''8801''45'm'43'n_3902 = erased
-- Data.Integer.Properties.∣m⊖n∣≡∣n⊖m∣
d_'8739'm'8854'n'8739''8801''8739'n'8854'm'8739'_3936 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'8854'n'8739''8801''8739'n'8854'm'8739'_3936 = erased
-- Data.Integer.Properties.+-cancelˡ-⊖
d_'43''45'cancel'737''45''8854'_3952 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8854'_3952 = erased
-- Data.Integer.Properties.m⊖n≤m
d_m'8854'n'8804'm_3972 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8854'n'8804'm_3972 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_3072
             (coe
                MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)
                (coe (0 :: Integer)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                             (coe d_'8804''45'isPreorder_3144)
                             (\ v4 v5 v6 -> coe du_'60''8658''8804'_3204 v6))
                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0) (coe v1))
                          v0
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                             (\ v4 v5 v6 v7 v8 -> v8)
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0) (coe v1))
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v3) (coe v2))
                             v0
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                   (coe d_'8804''45'isPreorder_3144)
                                   (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3316 v7 v8))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v3) (coe v2))
                                v3 v0
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                      (coe d_'8804''45'isPreorder_3144)
                                      (\ v4 v5 v6 v7 v8 ->
                                         coe du_'8804''45''60''45'trans_3316 v7 v8))
                                   v3 v0 v0
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe d_'8804''45'isPreorder_3144))
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                                      (MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_3228
                                         (coe v3))))
                                (d_m'8854'n'8804'm_3972 (coe v3) (coe v2)))
                             erased)))
-- Data.Integer.Properties.m⊖n<1+m
d_m'8854'n'60'1'43'm_3990 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_m'8854'n'60'1'43'm_3990 v0 v1
  = coe
      du_'8804''45''60''45'trans_3316
      (coe d_m'8854'n'8804'm_3972 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_m'60'n'43'm_3988 (coe v0)
            (coe
               MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
-- Data.Integer.Properties.m⊖1+n<m
d_m'8854'1'43'n'60'm_4002 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_m'8854'1'43'n'60'm_4002 v0 v1 ~v2
  = du_m'8854'1'43'n'60'm_4002 v0 v1
du_m'8854'1'43'n'60'm_4002 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_m'8854'1'43'n'60'm_4002 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v3 = subInt (coe v1) (coe (1 :: Integer)) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0) (coe v1))
                   (coe v0)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                      (\ v4 v5 v6 v7 v8 -> v8)
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0) (coe v1))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2) (coe v3))
                      v0
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                            (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans_3344 v7 v8)
                            (coe
                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                            (\ v4 v5 v6 v7 v8 -> coe du_'60''45''8804''45'trans_3330 v7 v8))
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2) (coe v3))
                         v0 v0
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe d_'8804''45'isPreorder_3144))
                            (coe v0))
                         (d_m'8854'n'60'1'43'm_3990 (coe v2) (coe v3)))
                      erased)))
-- Data.Integer.Properties.-1+m<n⊖m
d_'45'1'43'm'60'n'8854'm_4018 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'45'1'43'm'60'n'8854'm_4018 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                       (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140 (coe v0))
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                          (coe subInt (coe (-1 :: Integer)) (coe v0))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v0))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans_3344 v7 v8)
                                (coe
                                   MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                (\ v4 v5 v6 v7 v8 -> coe du_'60''45''8804''45'trans_3330 v7 v8))
                             (subInt (coe (-1 :: Integer)) (coe v0))
                             (subInt (coe (0 :: Integer)) (coe v0))
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v0))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                   (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans_3344 v7 v8)
                                   (coe
                                      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                   (\ v4 v5 v6 v7 v8 -> coe du_'60''45''8804''45'trans_3330 v7 v8))
                                (subInt (coe (0 :: Integer)) (coe v0))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v3) (coe v2))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v0))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                   (\ v4 v5 v6 v7 v8 -> v8)
                                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v3) (coe v2))
                                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v0))
                                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v0))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe d_'8804''45'isPreorder_3144))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1)
                                         (coe v0)))
                                   erased)
                                (d_'45'1'43'm'60'n'8854'm_4018 (coe v2) (coe v3)))
                             (coe
                                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
                                   (coe v0))))))
-- Data.Integer.Properties.-[1+m]≤n⊖m+1
d_'45''91'1'43'm'93''8804'n'8854'm'43'1_4036 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'45''91'1'43'm'93''8804'n'8854'm'43'1_4036 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_3072 (coe subInt (coe (-1 :: Integer)) (coe v0))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe d_'8804''45'isPreorder_3144)
                   (\ v3 v4 v5 -> coe du_'60''8658''8804'_3204 v5))
                (subInt (coe (-1 :: Integer)) (coe v0))
                (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                   (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe d_'8804''45'isPreorder_3144)
                      (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_3316 v6 v7))
                   (subInt (coe (-1 :: Integer)) (coe v0))
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2) (coe v0))
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                      (\ v3 v4 v5 v6 v7 -> v7)
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2) (coe v0))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                         (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                         (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe d_'8804''45'isPreorder_3144))
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1)
                            (coe addInt (coe (1 :: Integer)) (coe v0))))
                      erased)
                   (coe
                      du_'60''8658''8804'_3204
                      (coe d_'45'1'43'm'60'n'8854'm_4018 (coe v0) (coe v2)))))
-- Data.Integer.Properties.-1+m≤n⊖m
d_'45'1'43'm'8804'n'8854'm_4052 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'45'1'43'm'8804'n'8854'm_4052 v0 v1
  = coe
      du_'60''8658''8804'_3204
      (coe d_'45'1'43'm'60'n'8854'm_4018 (coe v0) (coe v1))
-- Data.Integer.Properties.0⊖m≤+
d_0'8854'm'8804''43'_4062 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_0'8854'm'8804''43'_4062 v0 ~v1 = du_0'8854'm'8804''43'_4062 v0
du_0'8854'm'8804''43'_4062 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_0'8854'm'8804''43'_4062 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
-- Data.Integer.Properties.sign-⊖-<
d_sign'45''8854''45''60'_4066 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''8854''45''60'_4066 = erased
-- Data.Integer.Properties.sign-⊖-≰
d_sign'45''8854''45''8816'_4078 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''8854''45''8816'_4078 = erased
-- Data.Integer.Properties.⊖-monoʳ-≥-≤
d_'8854''45'mono'691''45''8805''45''8804'_4080 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8854''45'mono'691''45''8805''45''8804'_4080 v0 v1 v2 v3
  = case coe v0 of
      0 -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe du_0'8854'm'8804''43'_4062 (coe v1)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       seq (coe v3)
                       (coe
                          d_'8804''45'refl_3072
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0))
                             (\ v5 v6 -> v5) (0 :: Integer) (0 :: Integer)))
                _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v3 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_3144)
                                    (\ v7 v8 v9 -> coe du_'60''8658''8804'_3204 v9))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0))
                                    (\ v7 v8 -> v7) v1 (0 :: Integer))
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                    (\ v7 v8 -> v8)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)) v1
                                    (0 :: Integer))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                    (\ v7 v8 v9 v10 v11 -> v11)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v0) (coe v1))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v4) (coe v5))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                       (\ v7 v8 -> v8)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)) v1
                                       (0 :: Integer))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                          (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_3344 v10 v11)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                          (\ v7 v8 v9 v10 v11 ->
                                             coe du_'60''45''8804''45'trans_3330 v10 v11))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v4) (coe v5))
                                       v0
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                          (\ v7 v8 -> v8)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0))
                                          v1 (0 :: Integer))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                             (coe d_'8804''45'isPreorder_3144))
                                          (coe v0))
                                       (d_m'8854'n'60'1'43'm_3990 (coe v4) (coe v5)))
                                    erased)
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                            -> let v9 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                       (coe d_'8804''45'isPreorder_3144)
                                       (\ v10 v11 v12 -> coe du_'60''8658''8804'_3204 v12))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0))
                                       (\ v10 v11 -> v10) v1 v2)
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                       (\ v10 v11 -> v11)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)) v1
                                       v2)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v0) (coe v1))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v4) (coe v5))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                          (\ v10 v11 -> v11)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0))
                                          v1 v2)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                             (coe d_'8804''45'isPreorder_3144)
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe du_'8804''45''60''45'trans_3316 v13 v14))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v4) (coe v5))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v4) (coe v9))
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                             (\ v10 v11 -> v11)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v0))
                                             v1 v2)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v4) (coe v9))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v0) (coe v2))
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                (\ v10 v11 -> v11)
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                   (coe v0))
                                                v1 v2)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe d_'8804''45'isPreorder_3144))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                   (coe v0) (coe v2)))
                                             erased)
                                          (d_'8854''45'mono'691''45''8805''45''8804'_4080
                                             (coe v4) (coe v5) (coe v9) (coe v8)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoˡ-≤
d_'8854''45'mono'737''45''8804'_4108 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8854''45'mono'737''45''8804'_4108 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v3
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                0 -> coe
                       seq (coe v3)
                       (coe
                          d_'8804''45'refl_3072
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                             (\ v5 ->
                                MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v5) (coe v0))
                             (\ v5 v6 -> v5) (0 :: Integer) (0 :: Integer)))
                _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                     coe
                       (case coe v3 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_3144)
                                    (\ v7 v8 v9 -> coe du_'60''8658''8804'_3204 v9))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                    (\ v7 ->
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                         (coe v7) (coe v0))
                                    (\ v7 v8 -> v7) (0 :: Integer) v2)
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                    (\ v7 v8 -> v8)
                                    (\ v7 ->
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                         (coe v7) (coe v0))
                                    (0 :: Integer) v2)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                       (coe d_'8804''45'isPreorder_3144)
                                       (\ v7 v8 v9 v10 v11 ->
                                          coe du_'8804''45''60''45'trans_3316 v10 v11))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe (0 :: Integer)) (coe v0))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe (0 :: Integer)) (coe v4))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                       (\ v7 v8 -> v8)
                                       (\ v7 ->
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                            (coe v7) (coe v0))
                                       (0 :: Integer) v2)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe d_'8804''45'isPreorder_3144)
                                          (\ v7 v8 v9 v10 v11 ->
                                             coe du_'8804''45''60''45'trans_3316 v10 v11))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe (0 :: Integer)) (coe v4))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v5) (coe v4))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                          (\ v7 v8 -> v8)
                                          (\ v7 ->
                                             MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                               (coe v7) (coe v0))
                                          (0 :: Integer) v2)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                          (\ v7 v8 v9 v10 v11 -> v11)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v5) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v2) (coe v0))
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                             (\ v7 v8 -> v8)
                                             (\ v7 ->
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                  (coe v7) (coe v0))
                                             (0 :: Integer) v2)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_3144))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v2) (coe v0)))
                                          erased)
                                       (d_'8854''45'mono'737''45''8804'_4108
                                          (coe v4) (coe (0 :: Integer)) (coe v5)
                                          (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                                    (d_'8854''45'mono'691''45''8805''45''8804'_4080
                                       (coe (0 :: Integer)) (coe v0) (coe v4)
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_3228
                                          (coe v4))))
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                            -> let v9 = subInt (coe v1) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                       (coe d_'8804''45'isPreorder_3144)
                                       (\ v10 v11 v12 -> coe du_'60''8658''8804'_3204 v12))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                       (\ v10 ->
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                            (coe v10) (coe v0))
                                       (\ v10 v11 -> v10) v1 v2)
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                       (\ v10 v11 -> v11)
                                       (\ v10 ->
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                            (coe v10) (coe v0))
                                       v1 v2)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v1) (coe v0))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v9) (coe v4))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                          (\ v10 v11 -> v11)
                                          (\ v10 ->
                                             MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                               (coe v10) (coe v0))
                                          v1 v2)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                             (coe d_'8804''45'isPreorder_3144)
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe du_'8804''45''60''45'trans_3316 v13 v14))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v9) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v5) (coe v4))
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                             (\ v10 v11 -> v11)
                                             (\ v10 ->
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                  (coe v10) (coe v0))
                                             v1 v2)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v5) (coe v4))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v2) (coe v0))
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                (\ v10 v11 -> v11)
                                                (\ v10 ->
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                     (coe v10) (coe v0))
                                                v1 v2)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe d_'8804''45'isPreorder_3144))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                   (coe v2) (coe v0)))
                                             erased)
                                          (d_'8854''45'mono'737''45''8804'_4108
                                             (coe v4) (coe v9) (coe v5) (coe v8)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoʳ->-<
d_'8854''45'mono'691''45''62''45''60'_4134 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'8854''45'mono'691''45''62''45''60'_4134 v0 v1 v2 v3
  = case coe v0 of
      0 -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> case coe v6 of
                    MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                      -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
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
                            -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0) (coe v1))
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                    (\ v10 v11 v12 v13 v14 -> v14)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v0) (coe v1))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v4) (coe v5))
                                    v0
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                          (\ v10 v11 v12 v13 v14 ->
                                             coe du_'60''45'trans_3344 v13 v14)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                          (\ v10 v11 v12 v13 v14 ->
                                             coe du_'60''45''8804''45'trans_3330 v13 v14))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v4) (coe v5))
                                       v0 v0
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                             (coe d_'8804''45'isPreorder_3144))
                                          (coe v0))
                                       (d_m'8854'n'60'1'43'm_3990 (coe v4) (coe v5)))
                                    erased)
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11
                            -> let v12 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                       (\ v13 v14 v15 v16 v17 -> v17)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v0) (coe v1))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v4) (coe subInt (coe v1) (coe (1 :: Integer))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v0) (coe v2))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                             (\ v13 v14 v15 v16 v17 ->
                                                coe du_'60''45'trans_3344 v16 v17)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                             (\ v13 v14 v15 v16 v17 ->
                                                coe du_'60''45''8804''45'trans_3330 v16 v17))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v4) (coe subInt (coe v1) (coe (1 :: Integer))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v4) (coe v12))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v0) (coe v2))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                             (\ v13 v14 v15 v16 v17 -> v17)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v4) (coe v12))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v0) (coe v2))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v0) (coe v2))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe d_'8804''45'isPreorder_3144))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                   (coe v0) (coe v2)))
                                             erased)
                                          (d_'8854''45'mono'691''45''62''45''60'_4134
                                             (coe v4) (coe subInt (coe v1) (coe (1 :: Integer)))
                                             (coe v12)
                                             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoˡ-<
d_'8854''45'mono'737''45''60'_4158 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'8854''45'mono'737''45''60'_4158 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v3
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                     -> case coe v8 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                 (coe subInt (coe (0 :: Integer)) (coe v0))
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2) (coe v0))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                       (\ v10 v11 v12 v13 v14 -> coe du_'60''45'trans_3344 v13 v14)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                       (\ v10 v11 v12 v13 v14 ->
                                          coe du_'60''45''8804''45'trans_3330 v13 v14))
                                    (subInt (coe (0 :: Integer)) (coe v0))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v5) (coe v4))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v2) (coe v0))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v5) (coe v4))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v2) (coe v0))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v2) (coe v0))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                             (coe d_'8804''45'isPreorder_3144))
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2)
                                             (coe v0)))
                                       erased)
                                    (d_'45'1'43'm'60'n'8854'm_4018 (coe v4) (coe v5)))
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11
                            -> let v12 = subInt (coe v1) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1)
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v2)
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                       (\ v13 v14 v15 v16 v17 -> v17)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v1) (coe v0))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v12) (coe v4))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v2) (coe v0))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                             (\ v13 v14 v15 v16 v17 ->
                                                coe du_'60''45'trans_3344 v16 v17)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                             (\ v13 v14 v15 v16 v17 ->
                                                coe du_'60''45''8804''45'trans_3330 v16 v17))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v12) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe subInt (coe v2) (coe (1 :: Integer))) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v2) (coe v0))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                             (\ v13 v14 v15 v16 v17 -> v17)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe subInt (coe v2) (coe (1 :: Integer))) (coe v4))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v2) (coe v0))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                (coe v2) (coe v0))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe d_'8804''45'isPreorder_3144))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                                   (coe v2) (coe v0)))
                                             erased)
                                          (d_'8854''45'mono'737''45''60'_4158
                                             (coe v4) (coe v12)
                                             (coe subInt (coe v2) (coe (1 :: Integer)))
                                             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.0≤i⇒+∣i∣≡i
d_0'8804'i'8658''43''8739'i'8739''8801'i_4182 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'i'8658''43''8739'i'8739''8801'i_4182 = erased
-- Data.Integer.Properties.+∣i∣≡i⇒0≤i
d_'43''8739'i'8739''8801'i'8658'0'8804'i_4184 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''8739'i'8739''8801'i'8658'0'8804'i_4184 ~v0 ~v1
  = du_'43''8739'i'8739''8801'i'8658'0'8804'i_4184
du_'43''8739'i'8739''8801'i'8658'0'8804'i_4184 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'43''8739'i'8739''8801'i'8658'0'8804'i_4184
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Integer.Properties.+∣i∣≡i⊎+∣i∣≡-i
d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_4190 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_4190 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Integer.Properties.∣m⊝n∣≤m⊔n
d_'8739'm'8861'n'8739''8804'm'8852'n_4200 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'8861'n'8739''8804'm'8852'n_4200
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Consequences.du_wlog_804
              (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_3168)
              (coe (\ v0 v1 v2 -> v2)) in
    coe
      (coe
         v0
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                 (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                 (\ v4 v5 v6 ->
                    coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 v6))
              (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v2)))
              (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                 (\ v4 v5 v6 v7 v8 -> v8)
                 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1) (coe v2)))
                 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_'45'__278
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v1)))
                 (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2))
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                    (\ v4 v5 v6 v7 v8 -> v8)
                    (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d_'45'__278
                          (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v1)))
                    (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v1))
                    (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                          (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                          (\ v4 v5 v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v7
                               v8))
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v1) v2
                       (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                             (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                             (\ v4 v5 v6 v7 v8 ->
                                coe
                                  MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368
                                  v7 v8))
                          v2 (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2))
                          (MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190))
                             (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v1) (coe v2)))
                          (coe
                             MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
                             (coe
                                MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_3202))
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                                (coe MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4852))
                             (coe v1) (coe v2)))
                       (MAlonzo.Code.Data.Nat.Properties.d_m'8760'n'8804'm_5458
                          (coe v2) (coe v1)))
                    erased)
                 erased)))
-- Data.Integer.Properties.∣i+j∣≤∣i∣+∣j∣
d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_4220 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_4220 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
                (coe
                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe (0 :: Integer))
                      (coe v1))))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v1)))
            _ -> coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                      (\ v2 v3 v4 ->
                         coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 v4))
                   (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v1)))
                   (addInt
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                         (\ v2 v3 v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v5
                              v6))
                      (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v0)
                            (coe subInt (coe (0 :: Integer)) (coe v1))))
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__208
                         (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1)))
                      (addInt
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                            (\ v2 v3 v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v5
                                 v6))
                         (MAlonzo.Code.Data.Nat.Base.d__'8852'__208
                            (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1)))
                         (subInt (coe v0) (coe v1))
                         (addInt
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190))
                            (coe subInt (coe v0) (coe v1)))
                         (MAlonzo.Code.Data.Nat.Properties.d_m'8852'n'8804'm'43'n_5242
                            (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1))))
                      (coe
                         d_'8739'm'8861'n'8739''8804'm'8852'n_4200 v0
                         (subInt (coe (0 :: Integer)) (coe v1))))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                      (\ v2 v3 v4 ->
                         coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 v4))
                   (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v1)))
                   (addInt
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                         (\ v2 v3 v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v5
                              v6))
                      (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v1)
                            (coe subInt (coe (0 :: Integer)) (coe v0))))
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__208
                         (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0)))
                      (addInt
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
                            (\ v2 v3 v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v5
                                 v6))
                         (MAlonzo.Code.Data.Nat.Base.d__'8852'__208
                            (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0)))
                         (subInt (coe v1) (coe v0))
                         (addInt
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                            (\ v2 v3 v4 v5 v6 -> v6) (subInt (coe v1) (coe v0))
                            (subInt (coe v1) (coe v0))
                            (addInt
                               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190))
                               (coe subInt (coe v1) (coe v0)))
                            erased)
                         (MAlonzo.Code.Data.Nat.Properties.d_m'8852'n'8804'm'43'n_5242
                            (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0))))
                      (coe
                         d_'8739'm'8861'n'8739''8804'm'8852'n_4200 v1
                         (subInt (coe (0 :: Integer)) (coe v0))))
             _ -> coe
                    MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
                    (coe subInt (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1))
-- Data.Integer.Properties.∣i-j∣≤∣i∣+∣j∣
d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_4258 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_4258 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
         (\ v2 v3 v4 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238 v4))
      (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1)))
      (addInt
         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190)
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_3368 v5
                 v6))
         (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1)))
         (addInt
            (coe
               MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
         (addInt
            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v2 v3 v4 v5 v6 -> v6)
            (addInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
            (addInt
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
            (addInt
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_3190))
               (coe
                  addInt
                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))))
            erased)
         (d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_4220
            (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))))
-- Data.Integer.Properties.◃-nonZero
d_'9667''45'nonZero_4276 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'9667''45'nonZero_4276 v0 ~v1 ~v2 = du_'9667''45'nonZero_4276 v0
du_'9667''45'nonZero_4276 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'9667''45'nonZero_4276 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_constructor_120
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Integer.Properties.◃-inverse
d_'9667''45'inverse_4280 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'inverse_4280 = erased
-- Data.Integer.Properties.◃-cong
d_'9667''45'cong_4286 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'cong_4286 = erased
-- Data.Integer.Properties.+◃n≡+n
d_'43''9667'n'8801''43'n_4302 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''9667'n'8801''43'n_4302 = erased
-- Data.Integer.Properties.-◃n≡-n
d_'45''9667'n'8801''45'n_4306 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''9667'n'8801''45'n_4306 = erased
-- Data.Integer.Properties.sign-◃
d_sign'45''9667'_4314 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''9667'_4314 = erased
-- Data.Integer.Properties.abs-◃
d_abs'45''9667'_4320 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''9667'_4320 = erased
-- Data.Integer.Properties.signᵢ◃∣i∣≡i
d_sign'7522''9667''8739'i'8739''8801'i_4328 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'7522''9667''8739'i'8739''8801'i_4328 = erased
-- Data.Integer.Properties.sign-cong
d_sign'45'cong_4338 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45'cong_4338 = erased
-- Data.Integer.Properties.sign-cong′
d_sign'45'cong'8242'_4354 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sign'45'cong'8242'_4354 v0 v1 ~v2 ~v3 ~v4
  = du_sign'45'cong'8242'_4354 v0 v1
du_sign'45'cong'8242'_4354 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sign'45'cong'8242'_4354 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> let v2
                 = coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased in
           coe (coe seq (coe v0) (coe v2))
-- Data.Integer.Properties.abs-cong
d_abs'45'cong_4388 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45'cong_4388 = erased
-- Data.Integer.Properties.∣s◃m∣*∣t◃n∣≡m*n
d_'8739's'9667'm'8739''42''8739't'9667'n'8739''8801'm'42'n_4412 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739's'9667'm'8739''42''8739't'9667'n'8739''8801'm'42'n_4412
  = erased
-- Data.Integer.Properties.+◃-mono-<
d_'43''9667''45'mono'45''60'_4422 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'43''9667''45'mono'45''60'_4422 v0 ~v1 v2
  = du_'43''9667''45'mono'45''60'_4422 v0 v2
du_'43''9667''45'mono'45''60'_4422 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'43''9667''45'mono'45''60'_4422 v0 v1
  = coe
      seq (coe v0)
      (coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v1)
-- Data.Integer.Properties.+◃-cancel-<
d_'43''9667''45'cancel'45''60'_4434 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''9667''45'cancel'45''60'_4434 v0 ~v1 v2
  = du_'43''9667''45'cancel'45''60'_4434 v0 v2
du_'43''9667''45'cancel'45''60'_4434 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''9667''45'cancel'45''60'_4434 v0 v1
  = coe
      seq (coe v0)
      (case coe v1 of
         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v4 -> coe v4
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.neg◃-cancel-<
d_neg'9667''45'cancel'45''60'_4448 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_neg'9667''45'cancel'45''60'_4448 ~v0 v1 v2
  = du_neg'9667''45'cancel'45''60'_4448 v1 v2
du_neg'9667''45'cancel'45''60'_4448 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_neg'9667''45'cancel'45''60'_4448 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v4
               -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.-◃<+◃
d_'45''9667''60''43''9667'_4464 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'45''9667''60''43''9667'_4464 ~v0 v1 ~v2
  = du_'45''9667''60''43''9667'_4464 v1
du_'45''9667''60''43''9667'_4464 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'45''9667''60''43''9667'_4464 v0
  = coe
      seq (coe v0) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
-- Data.Integer.Properties.+◃≮-◃
d_'43''9667''8814''45''9667'_4466 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''9667''8814''45''9667'_4466 = erased
-- Data.Integer.Properties.+-comm
d_'43''45'comm_4470 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4470 = erased
-- Data.Integer.Properties.+-identityˡ
d_'43''45'identity'737'_4480 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4480 = erased
-- Data.Integer.Properties.+-identityʳ
d_'43''45'identity'691'_4482 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4482 = erased
-- Data.Integer.Properties.+-identity
d_'43''45'identity_4484 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4484
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.distribˡ-⊖-+-pos
d_distrib'737''45''8854''45''43''45'pos_4492 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737''45''8854''45''43''45'pos_4492 = erased
-- Data.Integer.Properties.distribˡ-⊖-+-neg
d_distrib'737''45''8854''45''43''45'neg_4512 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737''45''8854''45''43''45'neg_4512 = erased
-- Data.Integer.Properties.distribʳ-⊖-+-pos
d_distrib'691''45''8854''45''43''45'pos_4532 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''8854''45''43''45'pos_4532 = erased
-- Data.Integer.Properties.distribʳ-⊖-+-neg
d_distrib'691''45''8854''45''43''45'neg_4552 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''8854''45''43''45'neg_4552 = erased
-- Data.Integer.Properties.+-assoc
d_'43''45'assoc_4566 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4566 = erased
-- Data.Integer.Properties.+-inverseˡ
d_'43''45'inverse'737'_4746 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_4746 = erased
-- Data.Integer.Properties.+-inverseʳ
d_'43''45'inverse'691'_4752 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_4752 = erased
-- Data.Integer.Properties.+-inverse
d_'43''45'inverse_4754 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_4754
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.+-isMagma
d_'43''45'isMagma_4756 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'43''45'isMagma_4756
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Integer.Properties.+-isSemigroup
d_'43''45'isSemigroup_4758 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'43''45'isSemigroup_4758
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'43''45'isMagma_4756) erased
-- Data.Integer.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_4760 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'43''45'isCommutativeSemigroup_4760
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_610
      (coe d_'43''45'isSemigroup_4758) erased
-- Data.Integer.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_4762 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'0'45'isMonoid_4762
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'43''45'isSemigroup_4758) (coe d_'43''45'identity_4484)
-- Data.Integer.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'0'45'isCommutativeMonoid_4764
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'43''45'0'45'isMonoid_4762) erased
-- Data.Integer.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_4766 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_'43''45'0'45'isGroup_4766
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1166
      (coe d_'43''45'0'45'isMonoid_4762) (coe d_'43''45'inverse_4754)
      erased
-- Data.Integer.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_4768 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'0'45'isAbelianGroup_4768
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1254
      (coe d_'43''45'0'45'isGroup_4766) erased
-- Data.Integer.Properties.+-magma
d_'43''45'magma_4770 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'43''45'magma_4770
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Integer.Base.d__'43'__302 d_'43''45'isMagma_4756
-- Data.Integer.Properties.+-semigroup
d_'43''45'semigroup_4772 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'43''45'semigroup_4772
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Integer.Base.d__'43'__302
      d_'43''45'isSemigroup_4758
-- Data.Integer.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_4774 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'43''45'commutativeSemigroup_4774
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754
      MAlonzo.Code.Data.Integer.Base.d__'43'__302
      d_'43''45'isCommutativeSemigroup_4760
-- Data.Integer.Properties.+-0-monoid
d_'43''45'0'45'monoid_4776 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'43''45'0'45'monoid_4776
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      MAlonzo.Code.Data.Integer.Base.d__'43'__302 (0 :: Integer)
      d_'43''45'0'45'isMonoid_4762
-- Data.Integer.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4778 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'0'45'commutativeMonoid_4778
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Integer.Base.d__'43'__302 (0 :: Integer)
      d_'43''45'0'45'isCommutativeMonoid_4764
-- Data.Integer.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_4780 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
d_'43''45'0'45'abelianGroup_4780
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1808
      MAlonzo.Code.Data.Integer.Base.d__'43'__302 (0 :: Integer)
      MAlonzo.Code.Data.Integer.Base.d_'45'__278
      d_'43''45'0'45'isAbelianGroup_4768
-- Data.Integer.Properties.pos-+
d_pos'45''43'_4782 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''43'_4782 = erased
-- Data.Integer.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_4794 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_4794 = erased
-- Data.Integer.Properties.◃-distrib-+
d_'9667''45'distrib'45''43'_4822 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'distrib'45''43'_4822 = erased
-- Data.Integer.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4840 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''45'mono'691''45''8804'_4840 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v3 of
            MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v6
              -> coe
                   d_'8854''45'mono'691''45''8805''45''8804'_4080 (coe v0)
                   (coe subInt (coe (0 :: Integer)) (coe v1))
                   (coe subInt (coe (0 :: Integer)) (coe v2))
                   (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
            MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
              -> coe
                   du_'8804''45'trans_3074
                   (coe
                      d_m'8854'n'8804'm_3972 (coe v0)
                      (coe subInt (coe (0 :: Integer)) (coe v1)))
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864 (coe v0)))
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'mono'691''45''8804'_3924
                      v0 v1 v2 v6)
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v3 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v6
               -> let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (let v8 = subInt (coe (-1 :: Integer)) (coe v2) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_'43''45'mono'691''45''8804'_3924
                             (subInt (coe (0 :: Integer)) (coe v0)) v8 v7 v6)))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
               -> coe
                    du_'8804''45'trans_3074
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864
                          (coe subInt (coe (0 :: Integer)) (coe v0))))
                    (coe
                       d_'45'1'43'm'8804'n'8854'm_4052
                       (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v2))
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
               -> coe
                    d_'8854''45'mono'737''45''8804'_4108
                    (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) (coe v2)
                    (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4866 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''45'mono'737''45''8804'_4866 v0 v1 v2
  = coe d_'43''45'mono'691''45''8804'_4840 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4882 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''45'mono'45''8804'_4882 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3144)
         (\ v6 v7 v8 -> coe du_'60''8658''8804'_3204 v8))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_3144)
            (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_3316 v9 v10))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3144)
               (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_3316 v9 v10))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3144))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3)))
            (d_'43''45'mono'691''45''8804'_4840
               (coe v1) (coe v2) (coe v3) (coe v5)))
         (coe d_'43''45'mono'737''45''8804'_4866 v2 v0 v1 v4))
-- Data.Integer.Properties.i≤j⇒i≤k+j
d_i'8804'j'8658'i'8804'k'43'j_4904 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'8658'i'8804'k'43'j_4904 v0 v1 v2 ~v3 v4
  = du_i'8804'j'8658'i'8804'k'43'j_4904 v0 v1 v2 v4
du_i'8804'j'8658'i'8804'k'43'j_4904 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'8804'j'8658'i'8804'k'43'j_4904 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4882 (coe (0 :: Integer)) (coe v2)
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      (coe v3)
-- Data.Integer.Properties.i≤j+i
d_i'8804'j'43'i_4918 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'43'i_4918 v0 v1 ~v2 = du_i'8804'j'43'i_4918 v0 v1
du_i'8804'j'43'i_4918 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'8804'j'43'i_4918 v0 v1
  = coe
      du_i'8804'j'8658'i'8804'k'43'j_4904 (coe v0) (coe v0) (coe v1)
      (coe d_'8804''45'refl_3072 (coe v0))
-- Data.Integer.Properties.i≤i+j
d_i'8804'i'43'j_4930 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'i'43'j_4930 v0 v1 ~v2 = du_i'8804'i'43'j_4930 v0 v1
du_i'8804'i'43'j_4930 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'8804'i'43'j_4930 v0 v1
  = coe du_i'8804'j'43'i_4918 (coe v0) (coe v1)
-- Data.Integer.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4940 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'43''45'mono'691''45''60'_4940 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v3 of
            MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v6
              -> coe
                   d_'8854''45'mono'691''45''62''45''60'_4134 (coe v0)
                   (coe subInt (coe (0 :: Integer)) (coe v1))
                   (coe subInt (coe (0 :: Integer)) (coe v2))
                   (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
            MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
              -> coe
                   du_'60''45''8804''45'trans_3330
                   (coe
                      du_m'8854'1'43'n'60'm_4002 (coe v0)
                      (coe subInt (coe (0 :: Integer)) (coe v1)))
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864 (coe v0)))
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v6
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3954
                      (coe v0) (coe v6))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v3 of
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v7
                  -> coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3954
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v7))
                MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
                  -> coe
                       du_'60''45''8804''45'trans_3330
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864
                             (coe subInt (coe (0 :: Integer)) (coe v0))))
                       (coe
                          d_'45''91'1'43'm'93''8804'n'8854'm'43'1_4036 (coe v4) (coe v2))
                MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v7
                  -> coe
                       d_'8854''45'mono'737''45''60'_4158
                       (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) (coe v2)
                       (coe v7)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4964 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'43''45'mono'737''45''60'_4964 v0 v1 v2
  = coe d_'43''45'mono'691''45''60'_4940 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.+-mono-<
d_'43''45'mono'45''60'_4980 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'43''45'mono'45''60'_4980 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
      (coe MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v2))
      (coe MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
            (\ v6 v7 v8 v9 v10 -> coe du_'60''45'trans_3344 v9 v10)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
            (\ v6 v7 v8 v9 v10 -> coe du_'60''45''8804''45'trans_3330 v9 v10))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v0) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v6 v7 v8 v9 v10 -> coe du_'60''45'trans_3344 v9 v10)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
               (\ v6 v7 v8 v9 v10 -> coe du_'60''45''8804''45'trans_3330 v9 v10))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3144))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__302 (coe v1) (coe v3)))
            (d_'43''45'mono'691''45''60'_4940
               (coe v1) (coe v2) (coe v3) (coe v5)))
         (coe d_'43''45'mono'737''45''60'_4964 v2 v0 v1 v4))
-- Data.Integer.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4998 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'43''45'mono'45''8804''45''60'_4998 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''45''60''45'trans_3316
      (coe d_'43''45'mono'737''45''8804'_4866 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''60'_4940 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Integer.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_5010 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'43''45'mono'45''60''45''8804'_5010 v0 v1 v2 v3 v4 v5
  = coe
      du_'60''45''8804''45'trans_3330
      (coe d_'43''45'mono'737''45''60'_4964 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''8804'_4840 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Integer.Properties.neg-minus-pos
d_neg'45'minus'45'pos_5026 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'minus'45'pos_5026 = erased
-- Data.Integer.Properties.+-minus-telescope
d_'43''45'minus'45'telescope_5042 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'minus'45'telescope_5042 = erased
-- Data.Integer.Properties.[+m]-[+n]≡m⊖n
d_'91''43'm'93''45''91''43'n'93''8801'm'8854'n_5064 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''43'm'93''45''91''43'n'93''8801'm'8854'n_5064 = erased
-- Data.Integer.Properties.∣i-j∣≡∣j-i∣
d_'8739'i'45'j'8739''8801''8739'j'45'i'8739'_5078 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'45'j'8739''8801''8739'j'45'i'8739'_5078 = erased
-- Data.Integer.Properties.∣-∣-≤
d_'8739''45''8739''45''8804'_5108 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45''8804'_5108 = erased
-- Data.Integer.Properties.i≡j⇒i-j≡0
d_i'8801'j'8658'i'45'j'8801'0_5146 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8801'j'8658'i'45'j'8801'0_5146 = erased
-- Data.Integer.Properties.i-j≡0⇒i≡j
d_i'45'j'8801'0'8658'i'8801'j_5154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'45'j'8801'0'8658'i'8801'j_5154 = erased
-- Data.Integer.Properties.i≤j⇒i-k≤j
d_i'8804'j'8658'i'45'k'8804'j_5172 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'8658'i'45'k'8804'j_5172 v0 ~v1 v2 ~v3 v4
  = du_i'8804'j'8658'i'45'k'8804'j_5172 v0 v2 v4
du_i'8804'j'8658'i'45'k'8804'j_5172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'8804'j'8658'i'45'k'8804'j_5172 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
                    coe
                      du_'8804''45'trans_3074
                      (coe d_m'8854'n'8804'm_3972 (coe v0) (coe v1)) (coe v2)
                _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v0) in
                     coe
                       (coe
                          du_'8804''45'trans_3074
                          (coe
                             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_3148
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864 (coe v4))
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_3228
                                   (coe addInt (coe v4) (coe v3)))))
                          (coe v2)))
-- Data.Integer.Properties.i-j≤i
d_i'45'j'8804'i_5200 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'45'j'8804'i_5200 v0 v1 ~v2 = du_i'45'j'8804'i_5200 v0 v1
du_i'45'j'8804'i_5200 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'45'j'8804'i_5200 v0 v1
  = coe
      du_i'8804'j'8658'i'45'k'8804'j_5172 (coe v0) (coe v1)
      (coe d_'8804''45'refl_3072 (coe v0))
-- Data.Integer.Properties.i≤j⇒i-j≤0
d_i'8804'j'8658'i'45'j'8804'0_5206 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'8658'i'45'j'8804'0_5206 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v5
        -> let v6 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe d_'8804''45'isPreorder_3144)
                      (\ v8 v9 v10 -> coe du_'60''8658''8804'_3204 v10))
                   (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
                   MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                      (\ v8 v9 v10 v11 v12 -> v12)
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                         (coe subInt (coe (0 :: Integer)) (coe v1))
                         (coe subInt (coe (0 :: Integer)) (coe v0)))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v7) (coe v6))
                      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe d_'8804''45'isPreorder_3144)
                            (\ v8 v9 v10 v11 v12 ->
                               coe du_'8804''45''60''45'trans_3316 v11 v12))
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v7) (coe v6))
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v7) (coe v7))
                         MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                            (\ v8 v9 v10 v11 v12 -> v12)
                            (MAlonzo.Code.Data.Integer.Base.d__'8854'__284 (coe v7) (coe v7))
                            MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                            MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_3144))
                               (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                            erased)
                         (d_'8854''45'mono'691''45''8805''45''8804'_4080
                            (coe v7) (coe v6) (coe v7) (coe v5)))
                      erased)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe
             du_i'8804'j'8658'i'45'k'8804'j_5172 (coe v0) (coe v1)
             (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
        -> case coe v1 of
             0 -> coe
                    seq (coe v5)
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
             _ -> let v6 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                         -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                         -> let v10 = subInt (coe v0) (coe (1 :: Integer)) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_3144)
                                    (\ v11 v12 v13 -> coe du_'60''8658''8804'_3204 v13))
                                 (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
                                 MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                    (\ v11 v12 v13 v14 v15 -> v15)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v0) (coe v1))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                       (coe v10) (coe v6))
                                    MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe d_'8804''45'isPreorder_3144)
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe du_'8804''45''60''45'trans_3316 v14 v15))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v10) (coe v6))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                          (coe v10) (coe v10))
                                       MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                          (\ v11 v12 v13 v14 v15 -> v15)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                                             (coe v10) (coe v10))
                                          MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                          MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_3144))
                                             (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                                          erased)
                                       (d_'8854''45'mono'691''45''8805''45''8804'_4080
                                          (coe v10) (coe v6) (coe v10) (coe v9)))
                                    erased))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i-j≤0⇒i≤j
d_i'45'j'8804'0'8658'i'8804'j_5232 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'45'j'8804'0'8658'i'8804'j_5232 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3144)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_3204 v5))
      v0 v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302
            (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302
               (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))
                  (coe v1)))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))
                     (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
                  (coe v1))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe d_'8804''45'isPreorder_3144)
                     (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_3316 v6 v7))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
                     (coe v1))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                        (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_3144))
                        (coe v1))
                     erased)
                  (coe
                     d_'43''45'mono'737''45''8804'_4866 v1
                     (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
                     MAlonzo.Code.Data.Integer.Base.d_0ℤ_12 v2))
               erased)
            erased)
         erased)
-- Data.Integer.Properties.i≤j⇒0≤j-i
d_i'8804'j'8658'0'8804'j'45'i_5244 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'8658'0'8804'j'45'i_5244 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3144)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_3204 v5))
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v3 v4 v5 v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
         (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v0))
         (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3144)
               (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_3316 v6 v7))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v0))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v1) (coe v0))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3144))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v1) (coe v0)))
            (coe
               d_'43''45'mono'737''45''8804'_4866
               (MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0)) v0 v1 v2))
         erased)
-- Data.Integer.Properties.0≤i-j⇒j≤i
d_0'8804'i'45'j'8658'j'8804'i_5256 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_0'8804'i'45'j'8658'j'8804'i_5256 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3144)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_3204 v5))
      v1 v0
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v3 v4 v5 v6 v7 -> v7) v1
         (MAlonzo.Code.Data.Integer.Base.d__'43'__302
            (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
         v0
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3144)
               (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_3316 v6 v7))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302
               (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302
               (coe MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
               (coe v1))
            v0
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
                  (coe v1))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))
                     (coe v1)))
               v0
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe v0)
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__302
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                  v0
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                        (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                     v0 v0
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_3144))
                        (coe v0))
                     erased)
                  erased)
               erased)
            (coe
               d_'43''45'mono'737''45''8804'_4866 v1
               MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
               (MAlonzo.Code.Data.Integer.Base.d__'45'__320 (coe v0) (coe v1))
               v2))
         erased)
-- Data.Integer.Properties.i≤j⇒i≤1+j
d_i'8804'j'8658'i'8804'1'43'j_5268 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'8658'i'8804'1'43'j_5268 v0 v1
  = coe
      du_i'8804'j'8658'i'8804'k'43'j_4904 (coe v0) (coe v1)
      (coe (1 :: Integer))
-- Data.Integer.Properties.i≤suc[i]
d_i'8804'suc'91'i'93'_5272 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'suc'91'i'93'_5272 v0
  = coe du_i'8804'j'43'i_4918 (coe v0) (coe (1 :: Integer))
-- Data.Integer.Properties.suc-+
d_suc'45''43'_5280 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''43'_5280 = erased
-- Data.Integer.Properties.i≢suc[i]
d_i'8802'suc'91'i'93'_5290 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_i'8802'suc'91'i'93'_5290 = erased
-- Data.Integer.Properties.1-[1+n]≡-n
d_1'45''91'1'43'n'93''8801''45'n_5296 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'45''91'1'43'n'93''8801''45'n_5296 = erased
-- Data.Integer.Properties.suc-mono
d_suc'45'mono_5300 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_suc'45'mono_5300 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v5
        -> coe
             d_'8854''45'mono'691''45''8805''45''8804'_4080 (coe (1 :: Integer))
             (coe subInt (coe (0 :: Integer)) (coe v0))
             (coe subInt (coe (0 :: Integer)) (coe v1))
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> let v5 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe d_'8804''45'isPreorder_3144)
                   (\ v6 v7 v8 -> coe du_'60''8658''8804'_3204 v8))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                   MAlonzo.Code.Data.Integer.Base.d_suc_326 (\ v6 v7 -> v6) v0 v1)
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                   (\ v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_suc_326 v0 v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                   (\ v6 v7 v8 v9 v10 -> v10)
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                      (coe (1 :: Integer)) (coe subInt (coe (0 :: Integer)) (coe v0)))
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                      (coe (0 :: Integer)) (coe v5))
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                      (\ v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_suc_326 v0 v1)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe d_'8804''45'isPreorder_3144)
                         (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_3316 v9 v10))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__284
                         (coe (0 :: Integer)) (coe v5))
                      (MAlonzo.Code.Data.Integer.Base.d_suc_326 (coe v1))
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                         (\ v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_suc_326 v0 v1)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe d_'8804''45'isPreorder_3144))
                         (coe MAlonzo.Code.Data.Integer.Base.d_suc_326 (coe v1)))
                      (coe du_0'8854'm'8804''43'_4062 (coe v5)))
                   erased))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.suc[i]≤j⇒i<j
d_suc'91'i'93''8804'j'8658'i'60'j_5314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_suc'91'i'93''8804'j'8658'i'60'j_5314 v0 v1 v2
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v2 of
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
              -> coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v5
            _ -> MAlonzo.RTE.mazUnreachableError
      -1 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86)
             _ -> case coe v2 of
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v5
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i<j⇒suc[i]≤j
d_i'60'j'8658'suc'91'i'93''8804'j_5334 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'60'j'8658'suc'91'i'93''8804'j_5334 v0 v1 v2
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v2 of
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v5
              -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
            _ -> MAlonzo.RTE.mazUnreachableError
      -1
        -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   seq (coe v2)
                   (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
             _ -> case coe v2 of
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v5
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                           (coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.suc-pred
d_suc'45'pred_5346 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_5346 = erased
-- Data.Integer.Properties.pred-suc
d_pred'45'suc_5356 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45'suc_5356 = erased
-- Data.Integer.Properties.+-pred
d_'43''45'pred_5368 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'pred_5368 = erased
-- Data.Integer.Properties.pred-+
d_pred'45''43'_5384 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45''43'_5384 = erased
-- Data.Integer.Properties.neg-suc
d_neg'45'suc_5396 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'suc_5396 = erased
-- Data.Integer.Properties.minus-suc
d_minus'45'suc_5404 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_minus'45'suc_5404 = erased
-- Data.Integer.Properties.i≤pred[j]⇒i<j
d_i'8804'pred'91'j'93''8658'i'60'j_5414 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_i'8804'pred'91'j'93''8658'i'60'j_5414 ~v0 v1 v2
  = du_i'8804'pred'91'j'93''8658'i'60'j_5414 v1 v2
du_i'8804'pred'91'j'93''8658'i'60'j_5414 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_i'8804'pred'91'j'93''8658'i'60'j_5414 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            du_'8804''45''60''45'trans_3316 (coe v1)
            (coe du_m'8854'1'43'n'60'm_4002 (coe v0) (coe (1 :: Integer)))
      _ -> coe
             du_'8804''45''60''45'trans_3316 (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140
                   (coe subInt (coe (0 :: Integer)) (coe v0))))
-- Data.Integer.Properties.i<j⇒i≤pred[j]
d_i'60'j'8658'i'8804'pred'91'j'93'_5424 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'60'j'8658'i'8804'pred'91'j'93'_5424 ~v0 v1 v2
  = du_i'60'j'8658'i'8804'pred'91'j'93'_5424 v1 v2
du_i'60'j'8658'i'8804'pred'91'j'93'_5424 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'60'j'8658'i'8804'pred'91'j'93'_5424 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
              -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v4
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                   (coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v4))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v4
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v4
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i≤j⇒pred[i]≤j
d_i'8804'j'8658'pred'91'i'93''8804'j_5436 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_i'8804'j'8658'pred'91'i'93''8804'j_5436 ~v0 ~v1 v2
  = du_i'8804'j'8658'pred'91'i'93''8804'j_5436 v2
du_i'8804'j'8658'pred'91'i'93''8804'j_5436 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_i'8804'j'8658'pred'91'i'93''8804'j_5436 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v3
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v3
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.pred-mono
d_pred'45'mono_5442 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_pred'45'mono_5442 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v5
        -> coe
             d_'8854''45'mono'737''45''8804'_4108 (coe (1 :: Integer)) (coe v0)
             (coe v1) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.*-comm
d_'42''45'comm_5450 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_5450 = erased
-- Data.Integer.Properties.*-identityˡ
d_'42''45'identity'737'_5484 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_5484 = erased
-- Data.Integer.Properties.*-identityʳ
d_'42''45'identity'691'_5498 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_5498 = erased
-- Data.Integer.Properties.*-identity
d_'42''45'identity_5500 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_5500
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-zeroˡ
d_'42''45'zero'737'_5502 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_5502 = erased
-- Data.Integer.Properties.*-zeroʳ
d_'42''45'zero'691'_5504 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_5504 = erased
-- Data.Integer.Properties.*-zero
d_'42''45'zero_5506 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_5506
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-assoc
d_'42''45'assoc_5508 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_5508 = erased
-- Data.Integer.Properties.distrib-lemma
d_distrib'45'lemma_5586 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'45'lemma_5586 = erased
-- Data.Integer.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_5662 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_5662 = erased
-- Data.Integer.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_5924 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_5924 = erased
-- Data.Integer.Properties.*-distrib-+
d_'42''45'distrib'45''43'_5926 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_5926
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-isMagma
d_'42''45'isMagma_5928 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_5928
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Integer.Properties.*-isSemigroup
d_'42''45'isSemigroup_5930 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_5930
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'42''45'isMagma_5928) erased
-- Data.Integer.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_5932 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_5932
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_610
      (coe d_'42''45'isSemigroup_5930) erased
-- Data.Integer.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_5934 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'1'45'isMonoid_5934
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'42''45'isSemigroup_5930) (coe d_'42''45'identity_5500)
-- Data.Integer.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_5936 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'1'45'isCommutativeMonoid_5936
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'42''45'1'45'isMonoid_5934) erased
-- Data.Integer.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_5938 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'43''45''42''45'isSemiring_5938
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1742
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe d_'43''45'0'45'isCommutativeMonoid_4764) erased erased
         (coe d_'42''45'identity_5500) (coe d_'42''45'distrib'45''43'_5926))
      (coe d_'42''45'zero_5506)
-- Data.Integer.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_5940 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'43''45''42''45'isCommutativeSemiring_5940
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe d_'43''45''42''45'isSemiring_5938) erased
-- Data.Integer.Properties.+-*-isRing
d_'43''45''42''45'isRing_5942 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_'43''45''42''45'isRing_5942
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3004
      (coe d_'43''45'0'45'isAbelianGroup_4768) erased erased
      (coe d_'42''45'identity_5500) (coe d_'42''45'distrib'45''43'_5926)
-- Data.Integer.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_5944 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_'43''45''42''45'isCommutativeRing_5944
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3158
      (coe d_'43''45''42''45'isRing_5942) erased
-- Data.Integer.Properties.*-magma
d_'42''45'magma_5946 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'42''45'magma_5946
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 d_'42''45'isMagma_5928
-- Data.Integer.Properties.*-semigroup
d_'42''45'semigroup_5948 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'42''45'semigroup_5948
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      d_'42''45'isSemigroup_5930
-- Data.Integer.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_5950 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'42''45'commutativeSemigroup_5950
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      d_'42''45'isCommutativeSemigroup_5932
-- Data.Integer.Properties.*-1-monoid
d_'42''45'1'45'monoid_5952 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'1'45'monoid_5952
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16 d_'42''45'1'45'isMonoid_5934
-- Data.Integer.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_5954 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'1'45'commutativeMonoid_5954
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'42''45'1'45'isCommutativeMonoid_5936
-- Data.Integer.Properties.+-*-semiring
d_'43''45''42''45'semiring_5956 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_'43''45''42''45'semiring_5956
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2518
      MAlonzo.Code.Data.Integer.Base.d__'43'__302
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isSemiring_5938
-- Data.Integer.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_5958 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'43''45''42''45'commutativeSemiring_5958
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      MAlonzo.Code.Data.Integer.Base.d__'43'__302
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isCommutativeSemiring_5940
-- Data.Integer.Properties.+-*-ring
d_'43''45''42''45'ring_5960 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096
d_'43''45''42''45'ring_5960
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4308
      MAlonzo.Code.Data.Integer.Base.d__'43'__302
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      MAlonzo.Code.Data.Integer.Base.d_'45'__278
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isRing_5942
-- Data.Integer.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_5962 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
d_'43''45''42''45'commutativeRing_5962
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4540
      MAlonzo.Code.Data.Integer.Base.d__'43'__302
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      MAlonzo.Code.Data.Integer.Base.d_'45'__278
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isCommutativeRing_5944
-- Data.Integer.Properties.abs-*
d_abs'45''42'_5964 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''42'_5964 = erased
-- Data.Integer.Properties.sign-*
d_sign'45''42'_5974 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''42'_5974 = erased
-- Data.Integer.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_5992 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_5992 = erased
-- Data.Integer.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_6036 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_6036 = erased
-- Data.Integer.Properties.suc-*
d_suc'45''42'_6056 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''42'_6056 = erased
-- Data.Integer.Properties.*-suc
d_'42''45'suc_6072 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_6072 = erased
-- Data.Integer.Properties.-1*i≡-i
d_'45'1'42'i'8801''45'i_6086 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'1'42'i'8801''45'i_6086 = erased
-- Data.Integer.Properties.i*j≡0⇒i≡0∨j≡0
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096 v0 ~v1 ~v2
  = du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096 v0
du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_4188
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
-- Data.Integer.Properties.i*j≢0
d_i'42'j'8802'0_6126 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_i'42'j'8802'0_6126 ~v0 ~v1 ~v2 ~v3 = du_i'42'j'8802'0_6126
du_i'42'j'8802'0_6126 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_i'42'j'8802'0_6126
  = coe MAlonzo.Code.Data.Nat.Properties.du_m'42'n'8802'0_4206
-- Data.Integer.Properties.^-identityʳ
d_'94''45'identity'691'_6138 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_6138 = erased
-- Data.Integer.Properties.^-zeroˡ
d_'94''45'zero'737'_6142 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_6142 = erased
-- Data.Integer.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_6156 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_6156 = erased
-- Data.Integer.Properties.^-isMagmaHomomorphism
d_'94''45'isMagmaHomomorphism_6178 ::
  Integer ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'94''45'isMagmaHomomorphism_6178 ~v0
  = du_'94''45'isMagmaHomomorphism_6178
du_'94''45'isMagmaHomomorphism_6178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'94''45'isMagmaHomomorphism_6178
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_210
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_46
         erased)
      erased
-- Data.Integer.Properties.^-isMonoidHomomorphism
d_'94''45'isMonoidHomomorphism_6188 ::
  Integer ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'94''45'isMonoidHomomorphism_6188 ~v0
  = du_'94''45'isMonoidHomomorphism_6188
du_'94''45'isMonoidHomomorphism_6188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
du_'94''45'isMonoidHomomorphism_6188
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_400
      (coe du_'94''45'isMagmaHomomorphism_6178) erased
-- Data.Integer.Properties.^-*-assoc
d_'94''45''42''45'assoc_6198 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_6198 = erased
-- Data.Integer.Properties.i^n≡0⇒i≡0
d_i'94'n'8801'0'8658'i'8801'0_6224 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'94'n'8801'0'8658'i'8801'0_6224 = erased
-- Data.Integer.Properties.pos-*
d_pos'45''42'_6232 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''42'_6232 = erased
-- Data.Integer.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_6246 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_6246 = erased
-- Data.Integer.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_6262 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_6262 = erased
-- Data.Integer.Properties.◃-distrib-*
d_'9667''45'distrib'45''42'_6280 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'distrib'45''42'_6280 = erased
-- Data.Integer.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_6314 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'cancel'691''45''8804''45'pos_6314 v0 v1 ~v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_6314 v0 v1 v4
du_'42''45'cancel'691''45''8804''45'pos_6314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'cancel'691''45''8804''45'pos_6314 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          coe
            seq (coe v2)
            (coe
               MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_4434
                  (coe v0)))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
             _ -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                       (coe
                          MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_4434
                             (coe subInt (coe (0 :: Integer)) (coe v1)))))
-- Data.Integer.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_6348 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'cancel'737''45''8804''45'pos_6348 v0 v1 ~v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_6348 v0 v1
du_'42''45'cancel'737''45''8804''45'pos_6348 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'cancel'737''45''8804''45'pos_6348 v0 v1
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_6314 (coe v0) (coe v1)
-- Data.Integer.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_6370 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'691''45''8804''45'nonNeg_6370 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonNeg_6370 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonNeg_6370 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'mono'691''45''8804''45'nonNeg_6370 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> case coe v3 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v6
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                    (coe
                       MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'45''8804'_4464
                          (coe subInt (coe (0 :: Integer)) (coe v1)) (coe v0)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_3140 (coe v0))))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
               -> case coe v1 of
                    0 -> case coe v2 of
                           0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
                           _ -> coe
                                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                    _ -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'42''45'mono'737''45''8804'_4472
                              v0 v1 v2 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_6412 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'737''45''8804''45'nonNeg_6412 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonNeg_6412 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonNeg_6412 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'mono'737''45''8804''45'nonNeg_6412 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_6370 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_6436 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'cancel'737''45''8804''45'neg_6436 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''8804''45'neg_6436 v0 v1 v2 v4
du_'42''45'cancel'737''45''8804''45'neg_6436 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'cancel'737''45''8804''45'neg_6436 v0 v1 v2 v3
  = coe
      d_neg'45'cancel'45''8804'_3636 (coe v1) (coe v2)
      (coe
         du_'42''45'cancel'737''45''8804''45'pos_6348
         (MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe d_'8804''45'isPreorder_3144)
               (\ v4 v5 v6 -> coe du_'60''8658''8804'_3204 v6))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v4 v5 v6 v7 v8 -> v8)
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                     (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                        (coe d_'8804''45'isPreorder_3144)
                        (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3316 v7 v8))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v2))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                        (\ v4 v5 v6 v7 v8 -> v8)
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v2))
                        (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                           (coe
                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                              (coe v2)))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                           (\ v4 v5 v6 v7 v8 -> v8)
                           (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                                 (coe v2)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                 (coe d_'8804''45'isPreorder_3144))
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))))
                           erased)
                        erased)
                     v3)
                  erased)
               erased)))
-- Data.Integer.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_6458 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'cancel'691''45''8804''45'neg_6458 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''8804''45'neg_6458 v0 v1 v2
du_'42''45'cancel'691''45''8804''45'neg_6458 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'cancel'691''45''8804''45'neg_6458 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''8804''45'neg_6436 (coe v2) (coe v0)
      (coe v1)
-- Data.Integer.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_6480 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'737''45''8804''45'nonPos_6480 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonPos_6480 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonPos_6480 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'mono'737''45''8804''45'nonPos_6480 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe d_'8804''45'isPreorder_3144)
                (\ v4 v5 v6 -> coe du_'60''8658''8804'_3204 v6))
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                (\ v4 v5 -> v5)
                (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)) v1 v2)
             (coe
                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0))
                (\ v4 v5 -> v4) v1 v2)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                (\ v4 v5 v6 v7 v8 -> v8)
                (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v2))
                (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                      (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                      (coe v2)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0))
                   (\ v4 v5 -> v4) v1 v2)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                   (\ v4 v5 v6 v7 v8 -> v8)
                   (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                         (coe v2)))
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                      (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                      (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                   (coe
                      MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0))
                      (\ v4 v5 -> v4) v1 v2)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe d_'8804''45'isPreorder_3144)
                         (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_3316 v7 v8))
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0))
                         (\ v4 v5 -> v4) v1 v2)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                         (\ v4 v5 v6 v7 v8 -> v8)
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                         (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                               (coe v1)))
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0))
                            (\ v4 v5 -> v4) v1 v2)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                            (\ v4 v5 v6 v7 v8 -> v8)
                            (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                                  (coe v1)))
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
                            (coe
                               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0))
                               (\ v4 v5 -> v4) v1 v2)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_3144))
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1)))
                            erased)
                         erased)
                      (coe
                         du_'42''45'mono'737''45''8804''45'nonNeg_6412
                         (MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                            (\ v4 v5 -> v5) MAlonzo.Code.Data.Integer.Base.d_'45'__278 v1 v2)
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                            MAlonzo.Code.Data.Integer.Base.d_'45'__278 (\ v4 v5 -> v4) v1 v2)
                         (coe du_neg'45'mono'45''8804'_3630 (coe v2) (coe v3))))
                   erased)
                erased)
-- Data.Integer.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_6508 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'691''45''8804''45'nonPos_6508 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonPos_6508 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonPos_6508 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'42''45'mono'691''45''8804''45'nonPos_6508 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_6480 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_6530 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'mono'737''45''60''45'pos_6530 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_6530 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_6530 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'mono'737''45''60''45'pos_6530 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v1 of
         _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
             case coe v3 of
               MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94 v7
                 -> coe
                      du_'43''9667''45'mono'45''60'_4422
                      (coe addInt (coe v1) (coe mulInt (coe v4) (coe v1)))
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''60''45''8804'_3926
                         (coe v7)
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'42''45'mono'691''45''8804'_4474
                            v4 v1 v2
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238
                               (coe v7))))
               _ -> MAlonzo.RTE.mazUnreachableError
         _ -> case coe v2 of
                _ | coe geqInt (coe v2) (coe (0 :: Integer)) ->
                    coe du_'45''9667''60''43''9667'_4464 (coe mulInt (coe v0) (coe v2))
                _ -> case coe v3 of
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80 v7
                         -> coe
                              MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''60''45''8804'_3926
                                 (coe v7)
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'42''45'mono'691''45''8804'_4474
                                    v4 (subInt (coe (0 :: Integer)) (coe v2))
                                    (subInt (coe (0 :: Integer)) (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_3238
                                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_6562 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'mono'691''45''60''45'pos_6562 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_6562 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_6562 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'mono'691''45''60''45'pos_6562 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_6530 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_6582 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'737''45''60''45'nonNeg_6582 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonNeg_6582 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonNeg_6582 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'cancel'737''45''60''45'nonNeg_6582 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d_'42''45'cancel'737''45''60'_4604
                     v2 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                     (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
                     (coe
                        du_'43''9667''45'cancel'45''60'_4434
                        (coe
                           mulInt (coe v2)
                           (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
                        (coe v3)))
            _ -> coe
                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86
             _ -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_80
                    (coe
                       MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d_'42''45'cancel'737''45''60'_4604
                          v2 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
                          (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                          (coe
                             du_neg'9667''45'cancel'45''60'_4448
                             (coe
                                mulInt (coe v2)
                                (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                             (coe v3))))
-- Data.Integer.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_6620 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'691''45''60''45'nonNeg_6620 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonNeg_6620 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonNeg_6620 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'cancel'691''45''60''45'nonNeg_6620 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_6582 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_6642 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'mono'737''45''60''45'neg_6642 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_6642 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_6642 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'mono'737''45''60''45'neg_6642 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
      (coe MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v2))
      (coe MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v4 v5 v6 v7 v8 -> v8)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__278
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
               (coe v2)))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v4 v5 v6 v7 v8 -> v8)
            (MAlonzo.Code.Data.Integer.Base.d_'45'__278
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                  (coe v2)))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans_3344 v7 v8)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                  (\ v4 v5 v6 v7 v8 -> coe du_'60''45''8804''45'trans_3330 v7 v8))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v4 v5 v6 v7 v8 -> v8)
                     (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                           (coe v1)))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_3144))
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0) (coe v1)))
                     erased)
                  erased)
               (coe
                  du_'42''45'mono'737''45''60''45'pos_6530
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v4 v5 -> v5) MAlonzo.Code.Data.Integer.Base.d_'45'__278 v1 v2)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     MAlonzo.Code.Data.Integer.Base.d_'45'__278 (\ v4 v5 -> v4) v1 v2)
                  (coe d_neg'45'mono'45''60'_3660 (coe v1) (coe v2) (coe v3))))
            erased)
         erased)
-- Data.Integer.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_6662 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'mono'691''45''60''45'neg_6662 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_6662 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_6662 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'mono'691''45''60''45'neg_6662 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_6642 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_6682 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'737''45''60''45'nonPos_6682 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_6682 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_6682 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'cancel'737''45''60''45'nonPos_6682 v0 v1 v2 v3
  = coe
      d_neg'45'cancel'45''60'_3674 (coe v0) (coe v1)
      (coe
         du_'42''45'cancel'737''45''60''45'nonNeg_6582
         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0))
         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))
         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0)))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v4 v5 v6 v7 v8 -> v8)
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v0)))
               (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                     (coe v0)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                        (coe v0)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2) (coe v0))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                        (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans_3344 v7 v8)
                        (coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                        (\ v4 v5 v6 v7 v8 -> coe du_'60''45''8804''45'trans_3330 v7 v8))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2) (coe v0))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2) (coe v1))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                        (\ v4 v5 v6 v7 v8 -> v8)
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2) (coe v1))
                        (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                           (coe
                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                              (coe v1)))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                           (\ v4 v5 v6 v7 v8 -> v8)
                           (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                                 (coe v1)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                 (coe d_'8804''45'isPreorder_3144))
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v2))
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1))))
                           erased)
                        erased)
                     v3)
                  erased)
               erased)))
-- Data.Integer.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_6704 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'691''45''60''45'nonPos_6704 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_6704 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_6704 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'42''45'cancel'691''45''60''45'nonPos_6704 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_6682 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_6722 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'737''45''60''45'neg_6722 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_6682 (coe v0) (coe v1)
      (coe subInt (coe (-1 :: Integer)) (coe v2))
-- Data.Integer.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_6732 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'691''45''60''45'neg_6732 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''60''45'nonPos_6704 (coe v0) (coe v1)
      (coe subInt (coe (-1 :: Integer)) (coe v2))
-- Data.Integer.Properties.∣i*j∣≡∣i∣*∣j∣
d_'8739'i'42'j'8739''8801''8739'i'8739''42''8739'j'8739'_6744 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'42'j'8739''8801''8739'i'8739''42''8739'j'8739'_6744
  = erased
-- Data.Integer.Properties.i≤j⇒i⊓j≡i
d_i'8804'j'8658'i'8851'j'8801'i_6746 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8804'j'8658'i'8851'j'8801'i_6746 = erased
-- Data.Integer.Properties.i≥j⇒i⊓j≡j
d_i'8805'j'8658'i'8851'j'8801'j_6752 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8805'j'8658'i'8851'j'8801'j_6752 = erased
-- Data.Integer.Properties.i≤j⇒i⊔j≡j
d_i'8804'j'8658'i'8852'j'8801'j_6758 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8804'j'8658'i'8852'j'8801'j_6758 = erased
-- Data.Integer.Properties.i≥j⇒i⊔j≡i
d_i'8805'j'8658'i'8852'j'8801'i_6764 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8805'j'8658'i'8852'j'8801'i_6764 = erased
-- Data.Integer.Properties.⊓-operator
d_'8851''45'operator_6770 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
d_'8851''45'operator_6770
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_constructor_136
      (coe MAlonzo.Code.Data.Integer.Base.d__'8851'__366) erased erased
-- Data.Integer.Properties.⊔-operator
d_'8852''45'operator_6772 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138
d_'8852''45'operator_6772
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_constructor_168
      (coe MAlonzo.Code.Data.Integer.Base.d__'8852'__348) erased erased
-- Data.Integer.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_6776 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_6776 = erased
-- Data.Integer.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_6778 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_6778 = erased
-- Data.Integer.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_6780 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_6780 = erased
-- Data.Integer.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_6782 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_6782 = erased
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_6784 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8804'x_6784
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_6786 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8658'x'8851'z'8804'y_6786
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_6788 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8658'z'8851'x'8804'y_6788
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_6790 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8658'x'8851'z'8804'y_6790
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_6792 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8658'z'8851'x'8804'y_6792
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_6794 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8851'z'8658'x'8804'y_6794
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_6796 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8851'z'8658'x'8804'z_6796
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_6798 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8804'y_6798
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_6800 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8776'x'8658'x'8804'y_6800
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_6802 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8776'y'8658'y'8804'x_6802
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_6804 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8804'x_6804
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_6806 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8804'x'8852'y_6806
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3680
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_6808 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8804'y_6808
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_6810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8776'x'8658'x'8804'y_6810
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_6812 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8851'y'8776'y'8658'y'8804'x_6812
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_6814 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8851'z'8658'x'8804'y_6814
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_6816 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_x'8804'y'8851'z'8658'x'8804'z_6816
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_6818 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_6818 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_6820 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_6820 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_6822 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_6822
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_6824 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_6824 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_6826 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_6826
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_6828 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_6828 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_6830 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_6830 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_6832 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_6832 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_6834 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_6834
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3500
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_6836 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_6836 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_6838 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_6838 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_6840 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'glb_6840
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_6842 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_6842 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_6844 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_6844 ~v0 ~v1 = du_'8851''45'identity_6844
du_'8851''45'identity_6844 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_6844
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_6846 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_6846 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_6848 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_6848 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_6850 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_6850
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_6852 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_6852
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_6854 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_6854
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_6856 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_6856
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_6858 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_6858
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_6860 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_6860
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_6862 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_6862
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_6864 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'mono'45''8804'_6864
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_6866 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_6866
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_6868 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'mono'691''45''8804'_6868
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_6870 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'mono'737''45''8804'_6870
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-rawMagma
d_'8851''45'rawMagma_6872 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8851''45'rawMagma_6872
  = let v0 = d_'8851''45'operator_6770 in
    coe
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3398
         (coe v0))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_6874 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_6874
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_6876 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_6876
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_6878 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_6878
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_6880 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_6880 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_6882 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_6882 ~v0 ~v1 = du_'8851''45'zero_6882
du_'8851''45'zero_6882 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_6882
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_6884 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_6884 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_6886 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_6886 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_6888 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_6888
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3580
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_6890 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_6890 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_6892 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_6892 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_6894 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_6894
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_6896 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_6896 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_6898 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_6898
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_6900 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong_6900 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_6902 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'691'_6902 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_6904 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'cong'737'_6904 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_6906 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_6906
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3532
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_6908 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_6908 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_6910 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_6910 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_6912 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_6912 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_6914 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_6914
  = let v0 = d_'8852''45'operator_6772 in
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
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_6916 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'691'_6916 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_6918 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'identity'737'_6918 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_6920 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_6920
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_6922 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_6922
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_6924 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_6924
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_6926 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_6926
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_6928 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_6928
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_6930 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_6930
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_6932 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'glb_6932
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_6934 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_6934
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_6936 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'mono'45''8804'_6936
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_6938 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_6938
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_6940 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'mono'691''45''8804'_6940
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_6942 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8851''45'mono'737''45''8804'_6942
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_6944 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_6944
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_6946 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_6946
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_6948 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_6948
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_6950 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_6950 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_6952 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_6952
  = let v0 = d_'8852''45'operator_6772 in
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
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_6954 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_6954 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_6956 ::
  Integer ->
  (Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_6956 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_6958 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_6958
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3578
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_6962 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8851''45'isSemilattice_6962
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_616
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_6964 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_6964
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8851''45'operator_6770 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_618
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_6966 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8851''45''8852''45'distributiveLattice_6966
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_822
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_6968 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8851''45''8852''45'isDistributiveLattice_6968
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_812
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_6970 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8851''45''8852''45'isLattice_6970
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_810
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_6972 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8851''45''8852''45'lattice_6972
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_818
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_6974 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8851''45'isSemilattice_6974
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_616
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_6976 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_6976
  = let v0 = d_'8804''45'totalPreorder_3156 in
    coe
      (let v1 = d_'8852''45'operator_6772 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_618
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_6978 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8852''45''8851''45'distributiveLattice_6978
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_820
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_6980 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8852''45''8851''45'isDistributiveLattice_6980
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_814
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_6982 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8852''45''8851''45'isLattice_6982
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_808
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_6984 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8852''45''8851''45'lattice_6984
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_816
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770) (coe d_'8852''45'operator_6772)
-- Data.Integer.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_6992 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_6992 = erased
-- Data.Integer.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_7002 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_7002 = erased
-- Data.Integer.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_7012 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_7012 = erased
-- Data.Integer.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_7022 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__48) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_7022 = erased
-- Data.Integer.Properties.mono-<-distrib-⊓
d_mono'45''60''45'distrib'45''8851'_7032 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8851'_7032 = erased
-- Data.Integer.Properties.mono-<-distrib-⊔
d_mono'45''60''45'distrib'45''8852'_7080 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8852'_7080 = erased
-- Data.Integer.Properties.antimono-<-distrib-⊔
d_antimono'45''60''45'distrib'45''8852'_7128 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''60''45'distrib'45''8852'_7128 = erased
-- Data.Integer.Properties.antimono-<-distrib-⊓
d_antimono'45''60''45'distrib'45''8851'_7176 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__72) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''60''45'distrib'45''8851'_7176 = erased
-- Data.Integer.Properties.neg-distrib-⊔-⊓
d_neg'45'distrib'45''8852''45''8851'_7222 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''8852''45''8851'_7222 = erased
-- Data.Integer.Properties.neg-distrib-⊓-⊔
d_neg'45'distrib'45''8851''45''8852'_7228 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''8851''45''8852'_7228 = erased
-- Data.Integer.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_7238 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonNeg_7238 = erased
-- Data.Integer.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_7254 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonNeg_7254 = erased
-- Data.Integer.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_7270 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonPos_7270 = erased
-- Data.Integer.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_7286 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonPos_7286 = erased
-- Data.Integer.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_7302 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonNeg_7302 = erased
-- Data.Integer.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_7318 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonNeg_7318 = erased
-- Data.Integer.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_7334 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonPos_7334 = erased
-- Data.Integer.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_7350 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonPos_7350 = erased
-- Data.Integer.Properties.neg-mono-<->
d_neg'45'mono'45''60''45''62'_7358 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_neg'45'mono'45''60''45''62'_7358 = coe d_neg'45'mono'45''60'_3660
-- Data.Integer.Properties.neg-mono-≤-≥
d_neg'45'mono'45''8804''45''8805'_7360 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_neg'45'mono'45''8804''45''8805'_7360 v0 v1 v2
  = coe du_neg'45'mono'45''8804'_3630 v1 v2
-- Data.Integer.Properties.*-monoʳ-≤-non-neg
d_'42''45'mono'691''45''8804''45'non'45'neg_7362 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'691''45''8804''45'non'45'neg_7362 v0 v1 v2 v3 v4
  = coe du_'42''45'mono'691''45''8804''45'nonNeg_6370 v0 v2 v3 v4
-- Data.Integer.Properties.*-monoˡ-≤-non-neg
d_'42''45'mono'737''45''8804''45'non'45'neg_7364 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'737''45''8804''45'non'45'neg_7364 v0 v1 v2 v3
  = coe du_'42''45'mono'737''45''8804''45'nonNeg_6412 v0 v2 v3
-- Data.Integer.Properties.*-cancelˡ-<-non-neg
d_'42''45'cancel'737''45''60''45'non'45'neg_7366 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'737''45''60''45'non'45'neg_7366 v0 v1 v2 v3 v4
  = coe du_'42''45'cancel'737''45''60''45'nonNeg_6582 v0 v1 v2 v4
-- Data.Integer.Properties.*-cancelʳ-<-non-neg
d_'42''45'cancel'691''45''60''45'non'45'neg_7368 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'42''45'cancel'691''45''60''45'non'45'neg_7368 v0 v1 v2 v3
  = coe du_'42''45'cancel'691''45''60''45'nonNeg_6620 v0 v1 v2
-- Data.Integer.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_7370 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_7370 = erased
-- Data.Integer.Properties.m⊓n≡m⇒m≤n
d_m'8851'n'8801'm'8658'm'8804'n_7372 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8851'n'8801'm'8658'm'8804'n_7372
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770)
-- Data.Integer.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_7374 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_7374 = erased
-- Data.Integer.Properties.m⊓n≡n⇒m≥n
d_m'8851'n'8801'n'8658'm'8805'n_7376 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8851'n'8801'n'8658'm'8805'n_7376
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770)
-- Data.Integer.Properties.m⊓n≤n
d_m'8851'n'8804'n_7378 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8851'n'8804'n_7378
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770)
-- Data.Integer.Properties.m⊓n≤m
d_m'8851'n'8804'm_7380 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8851'n'8804'm_7380
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
      (coe d_'8804''45'totalPreorder_3156)
      (coe d_'8851''45'operator_6770)
-- Data.Integer.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_7382 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_7382 = erased
-- Data.Integer.Properties.m⊔n≡n⇒m≤n
d_m'8852'n'8801'n'8658'm'8804'n_7384 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8852'n'8801'n'8658'm'8804'n_7384
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3156))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_6772))
-- Data.Integer.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_7386 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_7386 = erased
-- Data.Integer.Properties.m⊔n≡m⇒m≥n
d_m'8852'n'8801'm'8658'm'8805'n_7388 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8852'n'8801'm'8658'm'8805'n_7388
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3156))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_6772))
-- Data.Integer.Properties.m≤m⊔n
d_m'8804'm'8852'n_7390 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8804'm'8852'n_7390
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3156))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_6772))
-- Data.Integer.Properties.n≤m⊔n
d_n'8804'm'8852'n_7392 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_n'8804'm'8852'n_7392
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe d_'8804''45'totalPreorder_3156))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe d_'8852''45'operator_6772))
-- Data.Integer.Properties.+-pos-monoʳ-≤
d_'43''45'pos'45'mono'691''45''8804'_7396 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''45'pos'45'mono'691''45''8804'_7396 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v6
        -> coe
             d_'8854''45'mono'691''45''8805''45''8804'_4080 (coe v0)
             (coe subInt (coe (0 :: Integer)) (coe v1))
             (coe subInt (coe (0 :: Integer)) (coe v2))
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe
             du_'8804''45'trans_3074
             (coe
                d_m'8854'n'8804'm_3972 (coe v0)
                (coe subInt (coe (0 :: Integer)) (coe v1)))
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864 (coe v0)))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_'43''45'mono'691''45''8804'_3924
                v0 v1 v2 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+-neg-monoʳ-≤
d_'43''45'neg'45'mono'691''45''8804'_7412 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''45'neg'45'mono'691''45''8804'_7412 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56 v6
        -> let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
           coe
             (let v8 = subInt (coe (-1 :: Integer)) (coe v2) in
              coe
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'mono'691''45''8804'_3924
                      (addInt (coe (1 :: Integer)) (coe v0)) v8 v7 v6)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62
        -> coe
             du_'8804''45'trans_3074
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_56
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3864
                   (coe addInt (coe (1 :: Integer)) (coe v0))))
             (coe
                d_'45'1'43'm'8804'n'8854'm_4052
                (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v2))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70 v6
        -> coe
             d_'8854''45'mono'737''45''8804'_4108
             (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
             (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.n≮n
d_n'8814'n_7426 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'n_7426 = erased
-- Data.Integer.Properties.∣n∣≡0⇒n≡0
d_'8739'n'8739''8801'0'8658'n'8801'0_7428 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'8739''8801'0'8658'n'8801'0_7428 = erased
-- Data.Integer.Properties.∣-n∣≡∣n∣
d_'8739''45'n'8739''8801''8739'n'8739'_7430 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'n'8739''8801''8739'n'8739'_7430 = erased
-- Data.Integer.Properties.0≤n⇒+∣n∣≡n
d_0'8804'n'8658''43''8739'n'8739''8801'n_7432 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'n'8658''43''8739'n'8739''8801'n_7432 = erased
-- Data.Integer.Properties.+∣n∣≡n⇒0≤n
d_'43''8739'n'8739''8801'n'8658'0'8804'n_7434 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'43''8739'n'8739''8801'n'8658'0'8804'n_7434 v0 v1
  = coe du_'43''8739'i'8739''8801'i'8658'0'8804'i_4184
-- Data.Integer.Properties.+∣n∣≡n⊎+∣n∣≡-n
d_'43''8739'n'8739''8801'n'8846''43''8739'n'8739''8801''45'n_7436 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''8739'n'8739''8801'n'8846''43''8739'n'8739''8801''45'n_7436
  = coe
      d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_4190
-- Data.Integer.Properties.∣m+n∣≤∣m∣+∣n∣
d_'8739'm'43'n'8739''8804''8739'm'8739''43''8739'n'8739'_7438 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'43'n'8739''8804''8739'm'8739''43''8739'n'8739'_7438
  = coe d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_4220
-- Data.Integer.Properties.∣m-n∣≤∣m∣+∣n∣
d_'8739'm'45'n'8739''8804''8739'm'8739''43''8739'n'8739'_7440 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8804''8739'm'8739''43''8739'n'8739'_7440
  = coe d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_4258
-- Data.Integer.Properties.signₙ◃∣n∣≡n
d_sign'8345''9667''8739'n'8739''8801'n_7442 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'8345''9667''8739'n'8739''8801'n_7442 = erased
-- Data.Integer.Properties.◃-≡
d_'9667''45''8801'_7444 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45''8801'_7444 = erased
-- Data.Integer.Properties.∣m-n∣≡∣n-m∣
d_'8739'm'45'n'8739''8801''8739'n'45'm'8739'_7446 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801''8739'n'45'm'8739'_7446 = erased
-- Data.Integer.Properties.m≡n⇒m-n≡0
d_m'8801'n'8658'm'45'n'8801'0_7448 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658'm'45'n'8801'0_7448 = erased
-- Data.Integer.Properties.m-n≡0⇒m≡n
d_m'45'n'8801'0'8658'm'8801'n_7450 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'45'n'8801'0'8658'm'8801'n_7450 = erased
-- Data.Integer.Properties.≤-steps
d_'8804''45'steps_7452 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'steps_7452 v0 v1 v2 v3 v4
  = coe du_i'8804'j'8658'i'8804'k'43'j_4904 v0 v1 v2 v4
-- Data.Integer.Properties.≤-steps-neg
d_'8804''45'steps'45'neg_7454 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'steps'45'neg_7454 v0 v1 v2 v3 v4
  = coe du_i'8804'j'8658'i'45'k'8804'j_5172 v0 v2 v4
-- Data.Integer.Properties.≤-step
d_'8804''45'step_7456 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'step_7456 = coe d_i'8804'j'8658'i'8804'1'43'j_5268
-- Data.Integer.Properties.≤-step-neg
d_'8804''45'step'45'neg_7458 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8804''45'step'45'neg_7458 v0 v1 v2
  = coe du_i'8804'j'8658'pred'91'i'93''8804'j_5436 v2
-- Data.Integer.Properties.m≤n⇒m-n≤0
d_m'8804'n'8658'm'45'n'8804'0_7460 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8804'n'8658'm'45'n'8804'0_7460
  = coe d_i'8804'j'8658'i'45'j'8804'0_5206
-- Data.Integer.Properties.m-n≤0⇒m≤n
d_m'45'n'8804'0'8658'm'8804'n_7462 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'45'n'8804'0'8658'm'8804'n_7462
  = coe d_i'45'j'8804'0'8658'i'8804'j_5232
-- Data.Integer.Properties.m≤n⇒0≤n-m
d_m'8804'n'8658'0'8804'n'45'm_7464 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8804'n'8658'0'8804'n'45'm_7464
  = coe d_i'8804'j'8658'0'8804'j'45'i_5244
-- Data.Integer.Properties.0≤n-m⇒m≤n
d_0'8804'n'45'm'8658'm'8804'n_7466 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_0'8804'n'45'm'8658'm'8804'n_7466
  = coe d_0'8804'i'45'j'8658'j'8804'i_5256
-- Data.Integer.Properties.n≤1+n
d_n'8804'1'43'n_7468 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_n'8804'1'43'n_7468 = coe d_i'8804'suc'91'i'93'_5272
-- Data.Integer.Properties.n≢1+n
d_n'8802'1'43'n_7470 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8802'1'43'n_7470 = erased
-- Data.Integer.Properties.m≤pred[n]⇒m<n
d_m'8804'pred'91'n'93''8658'm'60'n_7472 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_m'8804'pred'91'n'93''8658'm'60'n_7472 v0 v1 v2
  = coe du_i'8804'pred'91'j'93''8658'i'60'j_5414 v1 v2
-- Data.Integer.Properties.m<n⇒m≤pred[n]
d_m'60'n'8658'm'8804'pred'91'n'93'_7474 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'60'n'8658'm'8804'pred'91'n'93'_7474 v0 v1 v2
  = coe du_i'60'j'8658'i'8804'pred'91'j'93'_5424 v1 v2
-- Data.Integer.Properties.-1*n≡-n
d_'45'1'42'n'8801''45'n_7476 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'1'42'n'8801''45'n_7476 = erased
-- Data.Integer.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_7478 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_7478 v0 v1 v2
  = coe du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096 v0
-- Data.Integer.Properties.∣m*n∣≡∣m∣*∣n∣
d_'8739'm'42'n'8739''8801''8739'm'8739''42''8739'n'8739'_7480 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'42'n'8739''8801''8739'm'8739''42''8739'n'8739'_7480
  = erased
-- Data.Integer.Properties.n≤m+n
d_n'8804'm'43'n_7484 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_n'8804'm'43'n_7484 v0 v1
  = coe du_i'8804'j'43'i_4918 (coe v0) (coe v1)
-- Data.Integer.Properties.m≤m+n
d_m'8804'm'43'n_7492 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'8804'm'43'n_7492 v0 v1
  = coe du_i'8804'i'43'j_4930 (coe v0) (coe v1)
-- Data.Integer.Properties.m-n≤m
d_m'45'n'8804'm_7502 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_m'45'n'8804'm_7502 v0 v1
  = coe du_i'45'j'8804'i_5200 (coe v0) (coe v1)
-- Data.Integer.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_7512 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'691''45''8804''45'pos_7512 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_6370
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_7520 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'737''45''8804''45'pos_7520 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonNeg_6412
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_7528 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'737''45''8804''45'neg_7528 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_6480
      (coe subInt (coe (-1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_7536 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'42''45'mono'691''45''8804''45'neg_7536 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonPos_6508
      (coe subInt (coe (-1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.pos-+-commute
d_pos'45''43''45'commute_7540 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''43''45'commute_7540 = erased
-- Data.Integer.Properties.abs-*-commute
d_abs'45''42''45'commute_7542 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''42''45'commute_7542 = erased
-- Data.Integer.Properties.pos-distrib-*
d_pos'45'distrib'45''42'_7548 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45'distrib'45''42'_7548 = erased
-- Data.Integer.Properties.+-isAbelianGroup
d_'43''45'isAbelianGroup_7554 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_7554
  = coe d_'43''45'0'45'isAbelianGroup_4768
