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
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
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
-- Data.Bool.Properties._.Central
d_Central_34 :: (Bool -> Bool -> Bool) -> Bool -> ()
d_Central_34 = erased
-- Data.Bool.Properties._.Commutative
d_Commutative_36 :: (Bool -> Bool -> Bool) -> ()
d_Commutative_36 = erased
-- Data.Bool.Properties._.Congruent₁
d_Congruent'8321'_38 :: (Bool -> Bool) -> ()
d_Congruent'8321'_38 = erased
-- Data.Bool.Properties._.Congruent₂
d_Congruent'8322'_40 :: (Bool -> Bool -> Bool) -> ()
d_Congruent'8322'_40 = erased
-- Data.Bool.Properties._.Conical
d_Conical_42 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Conical_42 = erased
-- Data.Bool.Properties._.Flexible
d_Flexible_44 :: (Bool -> Bool -> Bool) -> ()
d_Flexible_44 = erased
-- Data.Bool.Properties._.Idempotent
d_Idempotent_46 :: (Bool -> Bool -> Bool) -> ()
d_Idempotent_46 = erased
-- Data.Bool.Properties._.IdempotentFun
d_IdempotentFun_48 :: (Bool -> Bool) -> ()
d_IdempotentFun_48 = erased
-- Data.Bool.Properties._.Identical
d_Identical_50 :: (Bool -> Bool -> Bool) -> ()
d_Identical_50 = erased
-- Data.Bool.Properties._.Identity
d_Identity_52 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Identity_52 = erased
-- Data.Bool.Properties._.Interchangable
d_Interchangable_54 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Interchangable_54 = erased
-- Data.Bool.Properties._.Inverse
d_Inverse_56 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Inverse_56 = erased
-- Data.Bool.Properties._.Invertible
d_Invertible_58 :: Bool -> (Bool -> Bool -> Bool) -> Bool -> ()
d_Invertible_58 = erased
-- Data.Bool.Properties._.Involutive
d_Involutive_60 :: (Bool -> Bool) -> ()
d_Involutive_60 = erased
-- Data.Bool.Properties._.LeftAlternative
d_LeftAlternative_62 :: (Bool -> Bool -> Bool) -> ()
d_LeftAlternative_62 = erased
-- Data.Bool.Properties._.LeftBol
d_LeftBol_64 :: (Bool -> Bool -> Bool) -> ()
d_LeftBol_64 = erased
-- Data.Bool.Properties._.LeftCancellative
d_LeftCancellative_66 :: (Bool -> Bool -> Bool) -> ()
d_LeftCancellative_66 = erased
-- Data.Bool.Properties._.LeftCongruent
d_LeftCongruent_68 :: (Bool -> Bool -> Bool) -> ()
d_LeftCongruent_68 = erased
-- Data.Bool.Properties._.LeftConical
d_LeftConical_70 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftConical_70 = erased
-- Data.Bool.Properties._.LeftDivides
d_LeftDivides_72 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftDivides_72 = erased
-- Data.Bool.Properties._.LeftDividesʳ
d_LeftDivides'691'_74 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftDivides'691'_74 = erased
-- Data.Bool.Properties._.LeftDividesˡ
d_LeftDivides'737'_76 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftDivides'737'_76 = erased
-- Data.Bool.Properties._.LeftIdentity
d_LeftIdentity_78 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftIdentity_78 = erased
-- Data.Bool.Properties._.LeftInverse
d_LeftInverse_80 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftInverse_80 = erased
-- Data.Bool.Properties._.LeftInvertible
d_LeftInvertible_82 :: Bool -> (Bool -> Bool -> Bool) -> Bool -> ()
d_LeftInvertible_82 = erased
-- Data.Bool.Properties._.LeftSemimedial
d_LeftSemimedial_84 :: (Bool -> Bool -> Bool) -> ()
d_LeftSemimedial_84 = erased
-- Data.Bool.Properties._.LeftZero
d_LeftZero_86 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftZero_86 = erased
-- Data.Bool.Properties._.Medial
d_Medial_88 :: (Bool -> Bool -> Bool) -> ()
d_Medial_88 = erased
-- Data.Bool.Properties._.MiddleBol
d_MiddleBol_90 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_MiddleBol_90 = erased
-- Data.Bool.Properties._.RightAlternative
d_RightAlternative_92 :: (Bool -> Bool -> Bool) -> ()
d_RightAlternative_92 = erased
-- Data.Bool.Properties._.RightBol
d_RightBol_94 :: (Bool -> Bool -> Bool) -> ()
d_RightBol_94 = erased
-- Data.Bool.Properties._.RightCancellative
d_RightCancellative_96 :: (Bool -> Bool -> Bool) -> ()
d_RightCancellative_96 = erased
-- Data.Bool.Properties._.RightCongruent
d_RightCongruent_98 :: (Bool -> Bool -> Bool) -> ()
d_RightCongruent_98 = erased
-- Data.Bool.Properties._.RightConical
d_RightConical_100 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightConical_100 = erased
-- Data.Bool.Properties._.RightDivides
d_RightDivides_102 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightDivides_102 = erased
-- Data.Bool.Properties._.RightDividesʳ
d_RightDivides'691'_104 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightDivides'691'_104 = erased
-- Data.Bool.Properties._.RightDividesˡ
d_RightDivides'737'_106 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightDivides'737'_106 = erased
-- Data.Bool.Properties._.RightIdentity
d_RightIdentity_108 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightIdentity_108 = erased
-- Data.Bool.Properties._.RightInverse
d_RightInverse_110 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightInverse_110 = erased
-- Data.Bool.Properties._.RightInvertible
d_RightInvertible_112 ::
  Bool -> (Bool -> Bool -> Bool) -> Bool -> ()
d_RightInvertible_112 = erased
-- Data.Bool.Properties._.RightSemimedial
d_RightSemimedial_114 :: (Bool -> Bool -> Bool) -> ()
d_RightSemimedial_114 = erased
-- Data.Bool.Properties._.RightZero
d_RightZero_116 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightZero_116 = erased
-- Data.Bool.Properties._.Selective
d_Selective_118 :: (Bool -> Bool -> Bool) -> ()
d_Selective_118 = erased
-- Data.Bool.Properties._.SelfInverse
d_SelfInverse_120 :: (Bool -> Bool) -> ()
d_SelfInverse_120 = erased
-- Data.Bool.Properties._.Semimedial
d_Semimedial_122 :: (Bool -> Bool -> Bool) -> ()
d_Semimedial_122 = erased
-- Data.Bool.Properties._.StarDestructive
d_StarDestructive_124 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarDestructive_124 = erased
-- Data.Bool.Properties._.StarExpansive
d_StarExpansive_126 ::
  Bool ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarExpansive_126 = erased
-- Data.Bool.Properties._.StarLeftDestructive
d_StarLeftDestructive_128 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarLeftDestructive_128 = erased
-- Data.Bool.Properties._.StarLeftExpansive
d_StarLeftExpansive_130 ::
  Bool ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarLeftExpansive_130 = erased
-- Data.Bool.Properties._.StarRightDestructive
d_StarRightDestructive_132 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarRightDestructive_132 = erased
-- Data.Bool.Properties._.StarRightExpansive
d_StarRightExpansive_134 ::
  Bool ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> ()
d_StarRightExpansive_134 = erased
-- Data.Bool.Properties._.Zero
d_Zero_136 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Zero_136 = erased
-- Data.Bool.Properties._.IsAbelianGroup
d_IsAbelianGroup_140 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_144 a0 = ()
-- Data.Bool.Properties._.IsBand
d_IsBand_148 a0 = ()
-- Data.Bool.Properties._.IsBooleanRing
d_IsBooleanRing_152 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsBooleanSemiring
d_IsBooleanSemiring_156 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_160 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsCommutativeBand
d_IsCommutativeBand_164 a0 = ()
-- Data.Bool.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_168 a0 = ()
-- Data.Bool.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_172 a0 a1 = ()
-- Data.Bool.Properties._.IsCommutativeRing
d_IsCommutativeRing_176 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_180 a0 = ()
-- Data.Bool.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_184 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_188 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_192 a0 = ()
-- Data.Bool.Properties._.IsGroup
d_IsGroup_196 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_200 a0 a1 = ()
-- Data.Bool.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_204 a0 = ()
-- Data.Bool.Properties._.IsIdempotentMonoid
d_IsIdempotentMonoid_208 a0 a1 = ()
-- Data.Bool.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_212 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_216 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_220 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_224 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_228 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsLoop
d_IsLoop_232 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsMagma
d_IsMagma_236 a0 = ()
-- Data.Bool.Properties._.IsMedialMagma
d_IsMedialMagma_240 a0 = ()
-- Data.Bool.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_244 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsMonoid
d_IsMonoid_248 a0 a1 = ()
-- Data.Bool.Properties._.IsMoufangLoop
d_IsMoufangLoop_252 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsNearSemiring
d_IsNearSemiring_256 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsNearring
d_IsNearring_260 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_264 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsQuasigroup
d_IsQuasigroup_268 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsQuasiring
d_IsQuasiring_272 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsRightBolLoop
d_IsRightBolLoop_276 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsRing
d_IsRing_280 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_284 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_288 a0 = ()
-- Data.Bool.Properties._.IsSemigroup
d_IsSemigroup_292 a0 = ()
-- Data.Bool.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_296 a0 = ()
-- Data.Bool.Properties._.IsSemiring
d_IsSemiring_300 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_304 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_308 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsSuccessorSet
d_IsSuccessorSet_312 a0 a1 = ()
-- Data.Bool.Properties._.IsUnitalMagma
d_IsUnitalMagma_316 a0 a1 = ()
-- Data.Bool.Properties._.IsAbelianGroup._//_
d__'47''47'__322 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> Bool -> Bool
d__'47''47'__322 v0 ~v1 v2 ~v3 = du__'47''47'__322 v0 v2
du__'47''47'__322 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsAbelianGroup.assoc
d_assoc_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_324 = erased
-- Data.Bool.Properties._.IsAbelianGroup.comm
d_comm_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_326 = erased
-- Data.Bool.Properties._.IsAbelianGroup.identity
d_identity_328 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Bool.Properties._.IsAbelianGroup.identityʳ
d_identity'691'_330 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_330 = erased
-- Data.Bool.Properties._.IsAbelianGroup.identityˡ
d_identity'737'_332 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_332 = erased
-- Data.Bool.Properties._.IsAbelianGroup.inverse
d_inverse_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Bool.Properties._.IsAbelianGroup.inverseʳ
d_inverse'691'_336 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_336 = erased
-- Data.Bool.Properties._.IsAbelianGroup.inverseˡ
d_inverse'737'_338 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_338 = erased
-- Data.Bool.Properties._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_340 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_342 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_342 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246 v3
-- Data.Bool.Properties._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_344 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isEquivalence
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
-- Data.Bool.Properties._.IsAbelianGroup.isGroup
d_isGroup_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_348 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)
-- Data.Bool.Properties._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_350 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_352 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isMagma
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
-- Data.Bool.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_356 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_356 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Data.Bool.Properties._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_358 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_360 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)))
-- Data.Bool.Properties._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_362 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.refl
d_refl_364 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_364 = erased
-- Data.Bool.Properties._.IsAbelianGroup.reflexive
d_reflexive_366 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_366 = erased
-- Data.Bool.Properties._.IsAbelianGroup.setoid
d_setoid_368 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAbelianGroup.sym
d_sym_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_370 = erased
-- Data.Bool.Properties._.IsAbelianGroup.trans
d_trans_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_372 = erased
-- Data.Bool.Properties._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_374 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_374 = erased
-- Data.Bool.Properties._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_376 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_376 = erased
-- Data.Bool.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_378 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_380 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_382 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_382 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_384 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_384 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.alter
d_alter_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_388 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_302 (coe v0)
-- Data.Bool.Properties._.IsAlternativeMagma.alternativeʳ
d_alternative'691'_390 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_390 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.alternativeˡ
d_alternative'737'_392 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_392 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Bool.Properties._.IsAlternativeMagma.isMagma
d_isMagma_396 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_396 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Bool.Properties._.IsAlternativeMagma.isPartialEquivalence
d_isPartialEquivalence_398 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAlternativeMagma.refl
d_refl_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_400 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.reflexive
d_reflexive_402 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_402 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.setoid
d_setoid_404 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsAlternativeMagma.sym
d_sym_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_406 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.trans
d_trans_408 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_408 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_410 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_410 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.∙-congʳ
d_'8729''45'cong'691'_412 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_412 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.∙-congˡ
d_'8729''45'cong'737'_414 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_292 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_414 = erased
-- Data.Bool.Properties._.IsBand.assoc
d_assoc_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_418 = erased
-- Data.Bool.Properties._.IsBand.idem
d_idem_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_420 = erased
-- Data.Bool.Properties._.IsBand.isEquivalence
d_isEquivalence_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)))
-- Data.Bool.Properties._.IsBand.isMagma
d_isMagma_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0))
-- Data.Bool.Properties._.IsBand.isPartialEquivalence
d_isPartialEquivalence_426 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsBand.isSemigroup
d_isSemigroup_428 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_428 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)
-- Data.Bool.Properties._.IsBand.refl
d_refl_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_430 = erased
-- Data.Bool.Properties._.IsBand.reflexive
d_reflexive_432 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_432 = erased
-- Data.Bool.Properties._.IsBand.setoid
d_setoid_434 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsBand.sym
d_sym_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_436 = erased
-- Data.Bool.Properties._.IsBand.trans
d_trans_438 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_438 = erased
-- Data.Bool.Properties._.IsBand.∙-cong
d_'8729''45'cong_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_440 = erased
-- Data.Bool.Properties._.IsBand.∙-congʳ
d_'8729''45'cong'691'_442 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_442 = erased
-- Data.Bool.Properties._.IsBand.∙-congˡ
d_'8729''45'cong'737'_444 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_444 = erased
-- Data.Bool.Properties._.IsBooleanRing._//_
d__'47''47'__448 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> Bool -> Bool
d__'47''47'__448 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__448 v0 v2
du__'47''47'__448 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__448 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsBooleanRing.*-assoc
d_'42''45'assoc_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_450 = erased
-- Data.Bool.Properties._.IsBooleanRing.*-comm
d_'42''45'comm_452 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_452 = erased
-- Data.Bool.Properties._.IsBooleanRing.*-cong
d_'42''45'cong_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_454 = erased
-- Data.Bool.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_456 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_456 = erased
-- Data.Bool.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_458 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_458 = erased
-- Data.Bool.Properties._.IsBooleanRing.*-idem
d_'42''45'idem_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_460 = erased
-- Data.Bool.Properties._.IsBooleanRing.*-identity
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
-- Data.Bool.Properties._.IsBooleanRing.identityʳ
d_identity'691'_464 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_464 = erased
-- Data.Bool.Properties._.IsBooleanRing.identityˡ
d_identity'737'_466 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_466 = erased
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_468 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_468 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_468 v0 v1 v2 v3 v5
du_isCommutativeMagma_468 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_470 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_470 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_470 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_470 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_472 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_472 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_472 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_472 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.*-isMagma
d_'42''45'isMagma_474 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_474 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_474 v0 v1 v2 v3 v5
du_'42''45'isMagma_474 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.*-isMonoid
d_'42''45'isMonoid_476 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_476 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_476 v0 v1 v2 v3 v5
du_'42''45'isMonoid_476 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.*-isSemigroup
d_'42''45'isSemigroup_478 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_478 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_478 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_478 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.assoc
d_assoc_480 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_480 = erased
-- Data.Bool.Properties._.IsBooleanRing.comm
d_comm_482 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_482 = erased
-- Data.Bool.Properties._.IsBooleanRing.∙-cong
d_'8729''45'cong_484 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_484 = erased
-- Data.Bool.Properties._.IsBooleanRing.∙-congʳ
d_'8729''45'cong'691'_486 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_486 = erased
-- Data.Bool.Properties._.IsBooleanRing.∙-congˡ
d_'8729''45'cong'737'_488 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_488 = erased
-- Data.Bool.Properties._.IsBooleanRing.identity
d_identity_490 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.identityʳ
d_identity'691'_492 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_492 = erased
-- Data.Bool.Properties._.IsBooleanRing.identityˡ
d_identity'737'_494 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_494 = erased
-- Data.Bool.Properties._.IsBooleanRing.+-isAbelianGroup
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
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeMagma
d_isCommutativeMagma_498 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeMonoid
d_isCommutativeMonoid_500 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeSemigroup
d_isCommutativeSemigroup_502 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isGroup
d_isGroup_504 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isInvertibleMagma
d_isInvertibleMagma_506 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_508 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isMagma
d_isMagma_510 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isMonoid
d_isMonoid_512 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isSemigroup
d_isSemigroup_514 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isUnitalMagma
d_isUnitalMagma_516 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.⁻¹-cong
d_'8315''185''45'cong_518 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_518 = erased
-- Data.Bool.Properties._.IsBooleanRing.inverse
d_inverse_520 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.inverseʳ
d_inverse'691'_522 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_522 = erased
-- Data.Bool.Properties._.IsBooleanRing.inverseˡ
d_inverse'737'_524 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_524 = erased
-- Data.Bool.Properties._.IsBooleanRing.distrib
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
-- Data.Bool.Properties._.IsBooleanRing.distribʳ
d_distrib'691'_528 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_528 = erased
-- Data.Bool.Properties._.IsBooleanRing.distribˡ
d_distrib'737'_530 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_530 = erased
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeRing
d_isCommutativeRing_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_isCommutativeRing_532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeSemiring
d_isCommutativeSemiring_534 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_534 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiring_534 v0 v1 v2 v3 v5
du_isCommutativeSemiring_534 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_534 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v4))
-- Data.Bool.Properties._.IsBooleanRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_536 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_536 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_536 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_536 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isEquivalence
d_isEquivalence_538 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isNearSemiring
d_isNearSemiring_540 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_540 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_540 v0 v1 v2 v3 v5
du_isNearSemiring_540 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isPartialEquivalence
d_isPartialEquivalence_542 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isRing
d_isRing_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_3032
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0))
-- Data.Bool.Properties._.IsBooleanRing.isRingWithoutOne
d_isRingWithoutOne_546 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isSemiring
d_isSemiring_548 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_548 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_548 v0 v1 v2 v3 v5
du_isSemiring_548 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_550 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.isSemiringWithoutOne
d_isSemiringWithoutOne_552 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_552 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_552 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_552 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.refl
d_refl_554 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_554 = erased
-- Data.Bool.Properties._.IsBooleanRing.reflexive
d_reflexive_556 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_556 = erased
-- Data.Bool.Properties._.IsBooleanRing.setoid
d_setoid_558 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.sym
d_sym_560 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_560 = erased
-- Data.Bool.Properties._.IsBooleanRing.trans
d_trans_562 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_562 = erased
-- Data.Bool.Properties._.IsBooleanRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_564 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_564 = erased
-- Data.Bool.Properties._.IsBooleanRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_566 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_566 = erased
-- Data.Bool.Properties._.IsBooleanRing.zero
d_zero_568 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_568 v0 v1 v2 v3 ~v4 v5 = du_zero_568 v0 v1 v2 v3 v5
du_zero_568 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanRing.zeroʳ
d_zero'691'_570 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_570 = erased
-- Data.Bool.Properties._.IsBooleanRing.zeroˡ
d_zero'737'_572 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_572 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.*-assoc
d_'42''45'assoc_576 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_576 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.*-cong
d_'42''45'cong_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_578 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_580 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_580 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_582 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_582 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.*-idem
d_'42''45'idem_584 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'idem_584 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.*-identity
d_'42''45'identity_586 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Bool.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_588 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_588 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_590 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_590 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.isBand
d_isBand_592 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.*-isIdempotentMonoid
d_'42''45'isIdempotentMonoid_594 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_'42''45'isIdempotentMonoid_594 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isIdempotentMonoid_2480
      v4
-- Data.Bool.Properties._.IsBooleanSemiring.*-isMagma
d_'42''45'isMagma_596 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.*-isMonoid
d_'42''45'isMonoid_598 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.*-isSemigroup
d_'42''45'isSemigroup_600 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.assoc
d_assoc_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_602 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.+-cancel
d_'43''45'cancel_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel_604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'cancel_2388 (coe v0)
-- Data.Bool.Properties._.IsBooleanSemiring.+-cancelʳ
d_'43''45'cancel'691'_606 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691'_606 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.+-cancelˡ
d_'43''45'cancel'737'_608 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737'_608 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.comm
d_comm_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_610 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.∙-cong
d_'8729''45'cong_612 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_612 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.∙-congʳ
d_'8729''45'cong'691'_614 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_614 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.∙-congˡ
d_'8729''45'cong'737'_616 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_616 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.identity
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
-- Data.Bool.Properties._.IsBooleanSemiring.identityʳ
d_identity'691'_620 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_620 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.identityˡ
d_identity'737'_622 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_622 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.isCommutativeMagma
d_isCommutativeMagma_624 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_626 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Bool.Properties._.IsBooleanSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_628 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.isMagma
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
-- Data.Bool.Properties._.IsBooleanSemiring.isMonoid
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
-- Data.Bool.Properties._.IsBooleanSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsBooleanSemiring.isUnitalMagma
d_isUnitalMagma_636 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.distrib
d_distrib_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)))
-- Data.Bool.Properties._.IsBooleanSemiring.distribʳ
d_distrib'691'_640 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_640 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.distribˡ
d_distrib'737'_642 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_642 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsBooleanSemiring.isNearSemiring
d_isNearSemiring_646 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.isPartialEquivalence
d_isPartialEquivalence_648 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.isSemiring
d_isSemiring_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0)
-- Data.Bool.Properties._.IsBooleanSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_652 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Bool.Properties._.IsBooleanSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_654 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.refl
d_refl_656 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_656 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.reflexive
d_reflexive_658 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_658 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.setoid
d_setoid_660 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsBooleanSemiring.sym
d_sym_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_662 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.trans
d_trans_664 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_664 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.zero
d_zero_666 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2386 (coe v0))
-- Data.Bool.Properties._.IsBooleanSemiring.zeroʳ
d_zero'691'_668 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_668 = erased
-- Data.Bool.Properties._.IsBooleanSemiring.zeroˡ
d_zero'737'_670 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanSemiring_2370 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_670 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_674 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_676 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45'nonZero_676 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_678 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_678 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_680 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_680 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_682 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_684 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_684 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_686 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_686 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-identity
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_690 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_690 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_692 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_692 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_694 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_696 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_698 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isMagma
d_'42''45'isMagma_700 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_702 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_704 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_706 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_708 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_708 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_710 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_712 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_712 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_714 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_714 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identity
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityʳ
d_identity'691'_718 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_718 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identityˡ
d_identity'737'_720 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_720 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_722 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_726 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isMagma
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isMonoid
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_734 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distrib
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distribʳ
d_distrib'691'_738 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_738 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distribˡ
d_distrib'737'_740 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_740 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
      (coe v0)
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_744 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isNearSemiring
d_isNearSemiring_748 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_750 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_752 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1888
         (coe v0))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_756 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.refl
d_refl_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_758 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.reflexive
d_reflexive_760 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_760 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_762 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_764 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_764 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.trans
d_trans_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_766 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zero
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zeroʳ
d_zero'691'_770 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_770 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zeroˡ
d_zero'737'_772 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1874 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_772 = erased
-- Data.Bool.Properties._.IsCommutativeBand.assoc
d_assoc_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_776 = erased
-- Data.Bool.Properties._.IsCommutativeBand.comm
d_comm_778 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_778 = erased
-- Data.Bool.Properties._.IsCommutativeBand.idem
d_idem_780 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_780 = erased
-- Data.Bool.Properties._.IsCommutativeBand.isBand
d_isBand_782 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_782 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Bool.Properties._.IsCommutativeBand.isCommutativeMagma
d_isCommutativeMagma_784 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_786 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_786 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_656 v1
-- Data.Bool.Properties._.IsCommutativeBand.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeBand.isMagma
d_isMagma_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeBand.isPartialEquivalence
d_isPartialEquivalence_792 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeBand.isSemigroup
d_isSemigroup_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Bool.Properties._.IsCommutativeBand.refl
d_refl_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_796 = erased
-- Data.Bool.Properties._.IsCommutativeBand.reflexive
d_reflexive_798 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_798 = erased
-- Data.Bool.Properties._.IsCommutativeBand.setoid
d_setoid_800 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeBand.sym
d_sym_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_802 = erased
-- Data.Bool.Properties._.IsCommutativeBand.trans
d_trans_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_804 = erased
-- Data.Bool.Properties._.IsCommutativeBand.∙-cong
d_'8729''45'cong_806 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_806 = erased
-- Data.Bool.Properties._.IsCommutativeBand.∙-congʳ
d_'8729''45'cong'691'_808 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_808 = erased
-- Data.Bool.Properties._.IsCommutativeBand.∙-congˡ
d_'8729''45'cong'737'_810 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_810 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.comm
d_comm_814 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_814 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_816 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_816 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMagma.isMagma
d_isMagma_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_818 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Bool.Properties._.IsCommutativeMagma.isPartialEquivalence
d_isPartialEquivalence_820 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeMagma.refl
d_refl_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_822 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.reflexive
d_reflexive_824 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_824 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.setoid
d_setoid_826 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeMagma.sym
d_sym_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_828 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.trans
d_trans_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_830 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_832 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.∙-congʳ
d_'8729''45'cong'691'_834 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_834 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.∙-congˡ
d_'8729''45'cong'737'_836 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_836 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.assoc
d_assoc_840 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_840 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.comm
d_comm_842 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_842 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.identity
d_identity_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMonoid.identityʳ
d_identity'691'_846 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_846 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.identityˡ
d_identity'737'_848 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_848 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_850 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_852 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_852 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816 v2
-- Data.Bool.Properties._.IsCommutativeMonoid.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_858 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)
-- Data.Bool.Properties._.IsCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_860 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_864 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.refl
d_refl_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_866 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.reflexive
d_reflexive_868 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_868 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.setoid
d_setoid_870 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeMonoid.sym
d_sym_872 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_872 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.trans
d_trans_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_874 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_876 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_878 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_878 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_880 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_880 = erased
-- Data.Bool.Properties._.IsCommutativeRing._//_
d__'47''47'__884 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> Bool -> Bool
d__'47''47'__884 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__884 v0 v2
du__'47''47'__884 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__884 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_886 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_888 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_888 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_890 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_890 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_892 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_892 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_894 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_894 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_898 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_898 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_900 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_900 = erased
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_902 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_902 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeMagma_902 v0 v1 v2 v3 v5
du_isCommutativeMagma_902 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_904 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_904 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_904 v0 v1 v2 v3 v5
du_'42''45'isCommutativeMonoid_904 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_906 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_906 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_906 v0 v1 v2 v3 v5
du_'42''45'isCommutativeSemigroup_906 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_908 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_908 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_908 v0 v1 v2 v3 v5
du_'42''45'isMagma_908 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_910 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_910 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMonoid_910 v0 v1 v2 v3 v5
du_'42''45'isMonoid_910 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'42''45'isMonoid_910 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_912 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_912 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_912 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_912 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.assoc
d_assoc_914 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_914 = erased
-- Data.Bool.Properties._.IsCommutativeRing.comm
d_comm_916 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_916 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_918 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_918 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_920 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_920 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_922 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_922 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identity
d_identity_924 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.identityʳ
d_identity'691'_926 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_926 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identityˡ
d_identity'737'_928 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_928 = erased
-- Data.Bool.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_932 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_934 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_936 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isGroup
d_isGroup_938 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_940 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_942 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isMagma
d_isMagma_944 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_946 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_948 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_950 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_952 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_952 = erased
-- Data.Bool.Properties._.IsCommutativeRing.inverse
d_inverse_954 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.inverseʳ
d_inverse'691'_956 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_956 = erased
-- Data.Bool.Properties._.IsCommutativeRing.inverseˡ
d_inverse'737'_958 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_958 = erased
-- Data.Bool.Properties._.IsCommutativeRing.distrib
d_distrib_960 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2898
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.distribʳ
d_distrib'691'_962 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_962 = erased
-- Data.Bool.Properties._.IsCommutativeRing.distribˡ
d_distrib'737'_964 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_964 = erased
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_966 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_966 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146 v0 v1
      v2 v3 v5
-- Data.Bool.Properties._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_968 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_968 v0 v1 v2 v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_968 v0 v1 v2 v3 v5
du_isCommutativeSemiringWithoutOne_968 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_968 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3146
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_970 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_972 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_972 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_972 v0 v1 v2 v3 v5
du_isNearSemiring_972 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_974 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isRing
d_isRing_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_976 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0)
-- Data.Bool.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_978 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isSemiring
d_isSemiring_980 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_980 v0 v1 v2 v3 ~v4 v5
  = du_isSemiring_980 v0 v1 v2 v3 v5
du_isSemiring_980 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_isSemiring_980 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v4))
-- Data.Bool.Properties._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_982 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_984 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_984 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_984 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_984 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.refl
d_refl_986 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_986 = erased
-- Data.Bool.Properties._.IsCommutativeRing.reflexive
d_reflexive_988 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_988 = erased
-- Data.Bool.Properties._.IsCommutativeRing.setoid
d_setoid_990 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.sym
d_sym_992 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_992 = erased
-- Data.Bool.Properties._.IsCommutativeRing.trans
d_trans_994 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_994 = erased
-- Data.Bool.Properties._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_996 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_996 = erased
-- Data.Bool.Properties._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_998 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_998 = erased
-- Data.Bool.Properties._.IsCommutativeRing.zero
d_zero_1000 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1000 v0 v1 v2 v3 ~v4 v5 = du_zero_1000 v0 v1 v2 v3 v5
du_zero_1000 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeRing.zeroʳ
d_zero'691'_1002 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1002 = erased
-- Data.Bool.Properties._.IsCommutativeRing.zeroˡ
d_zero'737'_1004 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1004 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.assoc
d_assoc_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1008 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.comm
d_comm_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1010 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_1012 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_1012 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608 v1
-- Data.Bool.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemigroup.isPartialEquivalence
d_isPartialEquivalence_1018 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1020 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemigroup.refl
d_refl_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1022 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.reflexive
d_reflexive_1024 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1024 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.setoid
d_setoid_1026 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsCommutativeSemigroup.sym
d_sym_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1028 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.trans
d_trans_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1030 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1032 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-congʳ
d_'8729''45'cong'691'_1034 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1034 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-congˡ
d_'8729''45'cong'737'_1036 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1036 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1040 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1042 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_1044 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1044 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_1046 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1046 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_1048 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1048 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_1052 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1052 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_1054 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1054 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_1056 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1058 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_1058 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1862
      v4
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1060 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isMagma
d_'42''45'isMagma_1062 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isMonoid
d_'42''45'isMonoid_1064 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.*-isSemigroup
d_'42''45'isSemigroup_1066 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.assoc
d_assoc_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1068 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.comm
d_comm_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1070 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1072 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congʳ
d_'8729''45'cong'691'_1074 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1074 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-congˡ
d_'8729''45'cong'737'_1076 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1076 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identity
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
-- Data.Bool.Properties._.IsCommutativeSemiring.identityʳ
d_identity'691'_1080 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1080 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identityˡ
d_identity'737'_1082 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1082 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeMagma
d_isCommutativeMagma_1084 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1088 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isMagma
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isMonoid
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isUnitalMagma
d_isUnitalMagma_1096 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.distrib
d_distrib_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.distribʳ
d_distrib'691'_1100 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1100 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.distribˡ
d_distrib'737'_1102 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1102 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1104 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_1104 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1854
      v4
-- Data.Bool.Properties._.IsCommutativeSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isNearSemiring
d_isNearSemiring_1108 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isPartialEquivalence
d_isPartialEquivalence_1110 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_1112 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1112 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1114 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1116 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.refl
d_refl_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1118 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.reflexive
d_reflexive_1120 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1120 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.setoid
d_setoid_1122 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiring.sym
d_sym_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1124 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.trans
d_trans_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1126 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.zero
d_zero_1128 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiring.zeroʳ
d_zero'691'_1130 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1130 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.zeroˡ
d_zero'737'_1132 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1132 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1136 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_1138 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1140 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1142 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1142 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1144 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1144 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1146 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1148 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1148 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1522
      v3
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_1150 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_1152 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.assoc
d_assoc_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1154 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_1156 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1156 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-cong
d_'8729''45'cong_1158 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1158 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_1160 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1160 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_1162 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1162 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.identity
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.identityʳ
d_identity'691'_1166 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1166 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.identityˡ
d_identity'737'_1168 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1168 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_1170 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_1174 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distribʳ
d_distrib'691'_1180 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1180 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distribˡ
d_distrib'737'_1182 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1182 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isEquivalence
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isNearSemiring
d_isNearSemiring_1186 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_1188 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
      (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.refl
d_refl_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1192 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.reflexive
d_reflexive_1194 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1194 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_1196 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.sym
d_sym_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1198 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.trans
d_trans_1200 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1200 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_1202 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1452
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zeroʳ
d_zero'691'_1204 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1204 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zeroˡ
d_zero'737'_1206 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1440 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1206 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.flex
d_flex_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_1210 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0))
-- Data.Bool.Properties._.IsFlexibleMagma.isMagma
d_isMagma_1214 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1214 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_342 (coe v0)
-- Data.Bool.Properties._.IsFlexibleMagma.isPartialEquivalence
d_isPartialEquivalence_1216 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsFlexibleMagma.refl
d_refl_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1218 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.reflexive
d_reflexive_1220 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1220 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.setoid
d_setoid_1222 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsFlexibleMagma.sym
d_sym_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1224 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.trans
d_trans_1226 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1226 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_1228 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1228 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.∙-congʳ
d_'8729''45'cong'691'_1230 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1230 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.∙-congˡ
d_'8729''45'cong'737'_1232 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_334 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1232 = erased
-- Data.Bool.Properties._.IsGroup._-_
d__'45'__1236 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> Bool -> Bool
d__'45'__1236 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du__'45'__1144 v0 v2
-- Data.Bool.Properties._.IsGroup._//_
d__'47''47'__1238 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> Bool -> Bool
d__'47''47'__1238 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 v0 v2 v4 v5
-- Data.Bool.Properties._.IsGroup._\\_
d__'92''92'__1240 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> Bool -> Bool
d__'92''92'__1240 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1132 v0 v2 v4 v5
-- Data.Bool.Properties._.IsGroup.assoc
d_assoc_1242 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1242 = erased
-- Data.Bool.Properties._.IsGroup.identity
d_identity_1244 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Bool.Properties._.IsGroup.identityʳ
d_identity'691'_1246 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1246 = erased
-- Data.Bool.Properties._.IsGroup.identityˡ
d_identity'737'_1248 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1248 = erased
-- Data.Bool.Properties._.IsGroup.inverse
d_inverse_1250 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1250 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1092 (coe v0)
-- Data.Bool.Properties._.IsGroup.inverseʳ
d_inverse'691'_1252 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1252 = erased
-- Data.Bool.Properties._.IsGroup.inverseˡ
d_inverse'737'_1254 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1254 = erased
-- Data.Bool.Properties._.IsGroup.isEquivalence
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
-- Data.Bool.Properties._.IsGroup.isInvertibleMagma
d_isInvertibleMagma_1258 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1258 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162 v3
-- Data.Bool.Properties._.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1260 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_1260 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164 v3
-- Data.Bool.Properties._.IsGroup.isMagma
d_isMagma_1262 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)))
-- Data.Bool.Properties._.IsGroup.isMonoid
d_isMonoid_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1264 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)
-- Data.Bool.Properties._.IsGroup.isPartialEquivalence
d_isPartialEquivalence_1266 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsGroup.isSemigroup
d_isSemigroup_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0))
-- Data.Bool.Properties._.IsGroup.isUnitalMagma
d_isUnitalMagma_1270 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsGroup.refl
d_refl_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1272 = erased
-- Data.Bool.Properties._.IsGroup.reflexive
d_reflexive_1274 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1274 = erased
-- Data.Bool.Properties._.IsGroup.setoid
d_setoid_1276 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsGroup.sym
d_sym_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1278 = erased
-- Data.Bool.Properties._.IsGroup.trans
d_trans_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1280 = erased
-- Data.Bool.Properties._.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1282 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_1282 = erased
-- Data.Bool.Properties._.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1284 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_1284 = erased
-- Data.Bool.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_1286 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1286 = erased
-- Data.Bool.Properties._.IsGroup.∙-cong
d_'8729''45'cong_1288 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1288 = erased
-- Data.Bool.Properties._.IsGroup.∙-congʳ
d_'8729''45'cong'691'_1290 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1290 = erased
-- Data.Bool.Properties._.IsGroup.∙-congˡ
d_'8729''45'cong'737'_1292 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1292 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_1296 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1296 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_1298 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1298 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_1300 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1300 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identity
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_1304 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1304 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_1306 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1306 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isBand
d_isBand_1308 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_1310 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_1310 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 v2
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_1312 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_1314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0)
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_1316 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_1320 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_1320 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 v2
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isMagma
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_1326 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_1330 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.refl
d_refl_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1332 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_1334 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1334 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_1336 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1338 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.trans
d_trans_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1340 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_1342 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1342 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_1344 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1344 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_1346 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1346 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.idem
d_idem_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1350 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_1352 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMagma.isMagma
d_isMagma_1354 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1354 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_262 (coe v0)
-- Data.Bool.Properties._.IsIdempotentMagma.isPartialEquivalence
d_isPartialEquivalence_1356 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsIdempotentMagma.refl
d_refl_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1358 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.reflexive
d_reflexive_1360 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1360 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.setoid
d_setoid_1362 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsIdempotentMagma.sym
d_sym_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1364 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.trans
d_trans_1366 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1366 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_1368 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1368 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.∙-congʳ
d_'8729''45'cong'691'_1370 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1370 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.∙-congˡ
d_'8729''45'cong'737'_1372 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_254 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1372 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.assoc
d_assoc_1376 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1376 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.idem
d_idem_1378 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_1378 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.identity
d_identity_1380 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMonoid.identityʳ
d_identity'691'_1382 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1382 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.identityˡ
d_identity'737'_1384 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1384 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.isBand
d_isBand_1386 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_1386 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_878 v2
-- Data.Bool.Properties._.IsIdempotentMonoid.isEquivalence
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
-- Data.Bool.Properties._.IsIdempotentMonoid.isMagma
d_isMagma_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentMonoid.isMonoid
d_isMonoid_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1392 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0)
-- Data.Bool.Properties._.IsIdempotentMonoid.isPartialEquivalence
d_isPartialEquivalence_1394 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentMonoid.isSemigroup
d_isSemigroup_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_838 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMonoid.isUnitalMagma
d_isUnitalMagma_1398 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentMonoid.refl
d_refl_1400 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1400 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.reflexive
d_reflexive_1402 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1402 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.setoid
d_setoid_1404 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentMonoid.sym
d_sym_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1406 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.trans
d_trans_1408 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1408 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.∙-cong
d_'8729''45'cong_1410 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1410 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.∙-congʳ
d_'8729''45'cong'691'_1412 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1412 = erased
-- Data.Bool.Properties._.IsIdempotentMonoid.∙-congˡ
d_'8729''45'cong'737'_1414 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1414 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_1418 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1418 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_1420 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1420 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1422 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1422 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1424 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1424 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_1426 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1428 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1428 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1430 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1430 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-isMagma
d_'42''45'isMagma_1432 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.*-isMonoid
d_'42''45'isMonoid_1434 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.*-isSemigroup
d_'42''45'isSemigroup_1436 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.assoc
d_assoc_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1438 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.comm
d_comm_1440 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1440 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1442 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congʳ
d_'8729''45'cong'691'_1444 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1444 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-congˡ
d_'8729''45'cong'737'_1446 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1446 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1448 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1448 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identity
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
-- Data.Bool.Properties._.IsIdempotentSemiring.identityʳ
d_identity'691'_1452 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1452 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identityˡ
d_identity'737'_1454 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1454 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.isBand
d_isBand_1456 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isCommutativeBand
d_isCommutativeBand_1458 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isCommutativeMagma
d_isCommutativeMagma_1460 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1462 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_1464 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1466 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_1466 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'43''45'isIdempotentCommutativeMonoid_2102
      v4
-- Data.Bool.Properties._.IsIdempotentSemiring.isIdempotentMonoid
d_isIdempotentMonoid_1468 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isMagma
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isMonoid
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isUnitalMagma
d_isUnitalMagma_1476 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.distrib
d_distrib_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.distribʳ
d_distrib'691'_1480 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1480 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.distribˡ
d_distrib'737'_1482 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1482 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isNearSemiring
d_isNearSemiring_1486 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isPartialEquivalence
d_isPartialEquivalence_1488 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1490 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0)
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1494 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.refl
d_refl_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1496 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.reflexive
d_reflexive_1498 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1498 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.setoid
d_setoid_1500 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsIdempotentSemiring.sym
d_sym_1502 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1502 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.trans
d_trans_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1504 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.zero
d_zero_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1506 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1658
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_2014 (coe v0))
-- Data.Bool.Properties._.IsIdempotentSemiring.zeroʳ
d_zero'691'_1508 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1508 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.zeroˡ
d_zero'737'_1510 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1510 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.inverse
d_inverse_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1514 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_976 (coe v0)
-- Data.Bool.Properties._.IsInvertibleMagma.inverseʳ
d_inverse'691'_1516 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1516 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.inverseˡ
d_inverse'737'_1518 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1518 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0))
-- Data.Bool.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1522 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_974 (coe v0)
-- Data.Bool.Properties._.IsInvertibleMagma.isPartialEquivalence
d_isPartialEquivalence_1524 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleMagma.refl
d_refl_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1526 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.reflexive
d_reflexive_1528 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1528 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.setoid
d_setoid_1530 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleMagma.sym
d_sym_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1532 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.trans
d_trans_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1534 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1536 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1538 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-congʳ
d_'8729''45'cong'691'_1540 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1540 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-congˡ
d_'8729''45'cong'737'_1542 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1542 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1546 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_1028 (coe v0)
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1548 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1548 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1550 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1550 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_976
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverseʳ
d_inverse'691'_1554 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_1554 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverseˡ
d_inverse'737'_1556 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_1556 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isEquivalence
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
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_1560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0)
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1562 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_974
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_1026 (coe v0))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_1564 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1566 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1566 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_1066 v3
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.refl
d_refl_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1568 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.reflexive
d_reflexive_1570 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1570 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.setoid
d_setoid_1572 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1574 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.trans
d_trans_1576 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1576 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1578 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1578 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1580 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_1582 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1582 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_1584 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1584 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1588 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1590 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1592 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1592 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1594 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1594 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-identity
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
-- Data.Bool.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1598 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1598 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1600 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1600 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-isMagma
d_'42''45'isMagma_1602 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.*-isMonoid
d_'42''45'isMonoid_1604 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.*-isSemigroup
d_'42''45'isSemigroup_1606 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.assoc
d_assoc_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1608 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.comm
d_comm_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1610 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1612 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congʳ
d_'8729''45'cong'691'_1614 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1614 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-congˡ
d_'8729''45'cong'737'_1616 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1616 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1618 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1618 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identity
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
-- Data.Bool.Properties._.IsKleeneAlgebra.identityʳ
d_identity'691'_1622 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1622 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identityˡ
d_identity'737'_1624 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1624 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.isBand
d_isBand_1626 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isCommutativeBand
d_isCommutativeBand_1628 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isCommutativeMagma
d_isCommutativeMagma_1630 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isCommutativeSemigroup
d_isCommutativeSemigroup_1634 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_1636 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isIdempotentMonoid
d_isIdempotentMonoid_1638 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isMagma
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isMonoid
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemigroup
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isUnitalMagma
d_isUnitalMagma_1646 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.distrib
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
-- Data.Bool.Properties._.IsKleeneAlgebra.distribʳ
d_distrib'691'_1650 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1650 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.distribˡ
d_distrib'737'_1652 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_1652 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.isEquivalence
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_2000
d_isIdempotentSemiring_1656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
      (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.isNearSemiring
d_isNearSemiring_1658 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isPartialEquivalence
d_isPartialEquivalence_1660 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_2014
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2142
         (coe v0))
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiringWithoutOne
d_isSemiringWithoutOne_1666 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.refl
d_refl_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1668 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.reflexive
d_reflexive_1670 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1670 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.setoid
d_setoid_1672 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_2146 (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1676 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'691'_1676 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1678 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starDestructive'737'_1678 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1680 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_2144 (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1682 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'691'_1682 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1684 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_starExpansive'737'_1684 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.sym
d_sym_1686 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1686 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.trans
d_trans_1688 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1688 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.zero
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
-- Data.Bool.Properties._.IsKleeneAlgebra.zeroʳ
d_zero'691'_1692 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_1692 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.zeroˡ
d_zero'737'_1694 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_2124 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1694 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1698 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1698 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.//-congʳ
d_'47''47''45'cong'691'_1700 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1700 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.//-congˡ
d_'47''47''45'cong'737'_1702 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1702 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1704 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1706 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1706 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1708 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1708 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.identity
d_identity_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Bool.Properties._.IsLeftBolLoop.identityʳ
d_identity'691'_1712 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1712 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.identityˡ
d_identity'737'_1714 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1714 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.isEquivalence
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
-- Data.Bool.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1718 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)
-- Data.Bool.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.isPartialEquivalence
d_isPartialEquivalence_1722 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1724 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0))
-- Data.Bool.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1726 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1726 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1728 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.leftDividesʳ
d_leftDivides'691'_1730 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1730 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.leftDividesˡ
d_leftDivides'737'_1732 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1732 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.refl
d_refl_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1734 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.reflexive
d_reflexive_1736 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1736 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3500 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.rightDividesʳ
d_rightDivides'691'_1740 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1740 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.rightDividesˡ
d_rightDivides'737'_1742 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1742 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.setoid
d_setoid_1744 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLeftBolLoop.sym
d_sym_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1746 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.trans
d_trans_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1748 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1750 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.∙-congʳ
d_'8729''45'cong'691'_1752 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1752 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.∙-congˡ
d_'8729''45'cong'737'_1754 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1754 = erased
-- Data.Bool.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1758 = erased
-- Data.Bool.Properties._.IsLoop.//-congʳ
d_'47''47''45'cong'691'_1760 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1760 = erased
-- Data.Bool.Properties._.IsLoop.//-congˡ
d_'47''47''45'cong'737'_1762 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1762 = erased
-- Data.Bool.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1764 = erased
-- Data.Bool.Properties._.IsLoop.\\-congʳ
d_'92''92''45'cong'691'_1766 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1766 = erased
-- Data.Bool.Properties._.IsLoop.\\-congˡ
d_'92''92''45'cong'737'_1768 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1768 = erased
-- Data.Bool.Properties._.IsLoop.identity
d_identity_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1770 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3422 (coe v0)
-- Data.Bool.Properties._.IsLoop.identityʳ
d_identity'691'_1772 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1772 = erased
-- Data.Bool.Properties._.IsLoop.identityˡ
d_identity'737'_1774 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1774 = erased
-- Data.Bool.Properties._.IsLoop.isEquivalence
d_isEquivalence_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_3340
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)))
-- Data.Bool.Properties._.IsLoop.isMagma
d_isMagma_1778 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Bool.Properties._.IsLoop.isPartialEquivalence
d_isPartialEquivalence_1780 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1782 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)
-- Data.Bool.Properties._.IsLoop.leftDivides
d_leftDivides_1784 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Bool.Properties._.IsLoop.leftDividesʳ
d_leftDivides'691'_1786 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1786 = erased
-- Data.Bool.Properties._.IsLoop.leftDividesˡ
d_leftDivides'737'_1788 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1788 = erased
-- Data.Bool.Properties._.IsLoop.refl
d_refl_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1790 = erased
-- Data.Bool.Properties._.IsLoop.reflexive
d_reflexive_1792 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1792 = erased
-- Data.Bool.Properties._.IsLoop.rightDivides
d_rightDivides_1794 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0))
-- Data.Bool.Properties._.IsLoop.rightDividesʳ
d_rightDivides'691'_1796 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1796 = erased
-- Data.Bool.Properties._.IsLoop.rightDividesˡ
d_rightDivides'737'_1798 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1798 = erased
-- Data.Bool.Properties._.IsLoop.setoid
d_setoid_1800 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsLoop.sym
d_sym_1802 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1802 = erased
-- Data.Bool.Properties._.IsLoop.trans
d_trans_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1804 = erased
-- Data.Bool.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1806 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1806 = erased
-- Data.Bool.Properties._.IsLoop.∙-congʳ
d_'8729''45'cong'691'_1808 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1808 = erased
-- Data.Bool.Properties._.IsLoop.∙-congˡ
d_'8729''45'cong'737'_1810 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1810 = erased
-- Data.Bool.Properties._.IsMagma.isEquivalence
d_isEquivalence_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1814 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0)
-- Data.Bool.Properties._.IsMagma.isPartialEquivalence
d_isPartialEquivalence_1816 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsMagma.refl
d_refl_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1818 = erased
-- Data.Bool.Properties._.IsMagma.reflexive
d_reflexive_1820 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1820 = erased
-- Data.Bool.Properties._.IsMagma.setoid
d_setoid_1822 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1822 v0 v1
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 v1
-- Data.Bool.Properties._.IsMagma.sym
d_sym_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1824 = erased
-- Data.Bool.Properties._.IsMagma.trans
d_trans_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1826 = erased
-- Data.Bool.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1828 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1828 = erased
-- Data.Bool.Properties._.IsMagma.∙-congʳ
d_'8729''45'cong'691'_1830 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1830 = erased
-- Data.Bool.Properties._.IsMagma.∙-congˡ
d_'8729''45'cong'737'_1832 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1832 = erased
-- Data.Bool.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0))
-- Data.Bool.Properties._.IsMedialMagma.isMagma
d_isMagma_1838 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1838 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_380 (coe v0)
-- Data.Bool.Properties._.IsMedialMagma.isPartialEquivalence
d_isPartialEquivalence_1840 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsMedialMagma.medial
d_medial_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1842 = erased
-- Data.Bool.Properties._.IsMedialMagma.refl
d_refl_1844 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1844 = erased
-- Data.Bool.Properties._.IsMedialMagma.reflexive
d_reflexive_1846 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1846 = erased
-- Data.Bool.Properties._.IsMedialMagma.setoid
d_setoid_1848 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsMedialMagma.sym
d_sym_1850 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1850 = erased
-- Data.Bool.Properties._.IsMedialMagma.trans
d_trans_1852 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1852 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1854 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-congʳ
d_'8729''45'cong'691'_1856 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1856 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-congˡ
d_'8729''45'cong'737'_1858 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_372 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1858 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1862 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-congʳ
d_'47''47''45'cong'691'_1864 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1864 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-congˡ
d_'47''47''45'cong'737'_1866 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1866 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1868 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-congʳ
d_'92''92''45'cong'691'_1870 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1870 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-congˡ
d_'92''92''45'cong'737'_1872 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1872 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.identity
d_identity_1874 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Bool.Properties._.IsMiddleBolLoop.identityʳ
d_identity'691'_1876 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1876 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.identityˡ
d_identity'737'_1878 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1878 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.isEquivalence
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
-- Data.Bool.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1882 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)
-- Data.Bool.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.isPartialEquivalence
d_isPartialEquivalence_1886 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_1888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0))
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDividesʳ
d_leftDivides'691'_1892 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1892 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDividesˡ
d_leftDivides'737'_1894 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1894 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1896 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.refl
d_refl_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1898 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.reflexive
d_reflexive_1900 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1900 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1902 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1902 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3760 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDividesʳ
d_rightDivides'691'_1904 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_1904 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDividesˡ
d_rightDivides'737'_1906 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_1906 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.setoid
d_setoid_1908 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMiddleBolLoop.sym
d_sym_1910 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1910 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.trans
d_trans_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1912 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1914 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-congʳ
d_'8729''45'cong'691'_1916 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1916 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-congˡ
d_'8729''45'cong'737'_1918 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3746 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1918 = erased
-- Data.Bool.Properties._.IsMonoid.assoc
d_assoc_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1922 = erased
-- Data.Bool.Properties._.IsMonoid.identity
d_identity_1924 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1924 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Data.Bool.Properties._.IsMonoid.identityʳ
d_identity'691'_1926 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1926 = erased
-- Data.Bool.Properties._.IsMonoid.identityˡ
d_identity'737'_1928 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1928 = erased
-- Data.Bool.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1930 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)))
-- Data.Bool.Properties._.IsMonoid.isMagma
d_isMagma_1932 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_1932 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0))
-- Data.Bool.Properties._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1934 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1936 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Data.Bool.Properties._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1938 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1938 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758 v2
-- Data.Bool.Properties._.IsMonoid.refl
d_refl_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1940 = erased
-- Data.Bool.Properties._.IsMonoid.reflexive
d_reflexive_1942 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_1942 = erased
-- Data.Bool.Properties._.IsMonoid.setoid
d_setoid_1944 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMonoid.sym
d_sym_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1946 = erased
-- Data.Bool.Properties._.IsMonoid.trans
d_trans_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_1948 = erased
-- Data.Bool.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1950 = erased
-- Data.Bool.Properties._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1952 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_1952 = erased
-- Data.Bool.Properties._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1954 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_1954 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1958 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-congʳ
d_'47''47''45'cong'691'_1960 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_1960 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-congˡ
d_'47''47''45'cong'737'_1962 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_1962 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1964 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-congʳ
d_'92''92''45'cong'691'_1966 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_1966 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-congˡ
d_'92''92''45'cong'737'_1968 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_1968 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identical
d_identical_1970 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1970 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identity
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
-- Data.Bool.Properties._.IsMoufangLoop.identityʳ
d_identity'691'_1974 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_1974 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identityˡ
d_identity'737'_1976 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_1976 = erased
-- Data.Bool.Properties._.IsMoufangLoop.isEquivalence
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
-- Data.Bool.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1980 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_3486
d_isLeftBolLoop_1980 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0)
-- Data.Bool.Properties._.IsMoufangLoop.isLoop
d_isLoop_1982 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_1982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_3500
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3670 (coe v0))
-- Data.Bool.Properties._.IsMoufangLoop.isMagma
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
-- Data.Bool.Properties._.IsMoufangLoop.isPartialEquivalence
d_isPartialEquivalence_1986 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMoufangLoop.isQuasigroup
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
-- Data.Bool.Properties._.IsMoufangLoop.leftBol
d_leftBol_1990 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1990 = erased
-- Data.Bool.Properties._.IsMoufangLoop.leftDivides
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
-- Data.Bool.Properties._.IsMoufangLoop.leftDividesʳ
d_leftDivides'691'_1994 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_1994 = erased
-- Data.Bool.Properties._.IsMoufangLoop.leftDividesˡ
d_leftDivides'737'_1996 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_1996 = erased
-- Data.Bool.Properties._.IsMoufangLoop.refl
d_refl_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_1998 = erased
-- Data.Bool.Properties._.IsMoufangLoop.reflexive
d_reflexive_2000 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2000 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightBol
d_rightBol_2002 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2002 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightDivides
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
-- Data.Bool.Properties._.IsMoufangLoop.rightDividesʳ
d_rightDivides'691'_2006 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2006 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightDividesˡ
d_rightDivides'737'_2008 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2008 = erased
-- Data.Bool.Properties._.IsMoufangLoop.setoid
d_setoid_2010 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsMoufangLoop.sym
d_sym_2012 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2012 = erased
-- Data.Bool.Properties._.IsMoufangLoop.trans
d_trans_2014 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2014 = erased
-- Data.Bool.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_2016 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2016 = erased
-- Data.Bool.Properties._.IsMoufangLoop.∙-congʳ
d_'8729''45'cong'691'_2018 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2018 = erased
-- Data.Bool.Properties._.IsMoufangLoop.∙-congˡ
d_'8729''45'cong'737'_2020 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3654 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2020 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_2024 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2024 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2026 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_2028 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2028 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_2030 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2030 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-isMagma
d_'42''45'isMagma_2032 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2032 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326 v3
-- Data.Bool.Properties._.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_2034 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2034 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328 v3
-- Data.Bool.Properties._.IsNearSemiring.assoc
d_assoc_2036 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2036 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_2038 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2038 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congʳ
d_'8729''45'cong'691'_2040 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2040 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-congˡ
d_'8729''45'cong'737'_2042 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2042 = erased
-- Data.Bool.Properties._.IsNearSemiring.identity
d_identity_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Bool.Properties._.IsNearSemiring.identityʳ
d_identity'691'_2046 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2046 = erased
-- Data.Bool.Properties._.IsNearSemiring.identityˡ
d_identity'737'_2048 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2048 = erased
-- Data.Bool.Properties._.IsNearSemiring.isMagma
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
-- Data.Bool.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)
-- Data.Bool.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_2054 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0))
-- Data.Bool.Properties._.IsNearSemiring.isUnitalMagma
d_isUnitalMagma_2056 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2058 = erased
-- Data.Bool.Properties._.IsNearSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsNearSemiring.isPartialEquivalence
d_isPartialEquivalence_2062 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsNearSemiring.refl
d_refl_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2064 = erased
-- Data.Bool.Properties._.IsNearSemiring.reflexive
d_reflexive_2066 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2066 = erased
-- Data.Bool.Properties._.IsNearSemiring.setoid
d_setoid_2068 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsNearSemiring.sym
d_sym_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2070 = erased
-- Data.Bool.Properties._.IsNearSemiring.trans
d_trans_2072 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2072 = erased
-- Data.Bool.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_2074 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2074 = erased
-- Data.Bool.Properties._.IsNearring.*-assoc
d_'42''45'assoc_2078 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2078 = erased
-- Data.Bool.Properties._.IsNearring.*-cong
d_'42''45'cong_2080 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2080 = erased
-- Data.Bool.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_2082 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2082 = erased
-- Data.Bool.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_2084 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2084 = erased
-- Data.Bool.Properties._.IsNearring.*-identity
d_'42''45'identity_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Bool.Properties._.IsNearring.identityʳ
d_identity'691'_2088 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2088 = erased
-- Data.Bool.Properties._.IsNearring.identityˡ
d_identity'737'_2090 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2090 = erased
-- Data.Bool.Properties._.IsNearring.*-isMagma
d_'42''45'isMagma_2092 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.*-isMonoid
d_'42''45'isMonoid_2094 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.*-isSemigroup
d_'42''45'isSemigroup_2096 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.assoc
d_assoc_2098 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2098 = erased
-- Data.Bool.Properties._.IsNearring.∙-cong
d_'8729''45'cong_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2100 = erased
-- Data.Bool.Properties._.IsNearring.∙-congʳ
d_'8729''45'cong'691'_2102 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2102 = erased
-- Data.Bool.Properties._.IsNearring.∙-congˡ
d_'8729''45'cong'737'_2104 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2104 = erased
-- Data.Bool.Properties._.IsNearring.identity
d_identity_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Bool.Properties._.IsNearring.identityʳ
d_identity'691'_2108 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2108 = erased
-- Data.Bool.Properties._.IsNearring.identityˡ
d_identity'737'_2110 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2110 = erased
-- Data.Bool.Properties._.IsNearring.+-inverse
d_'43''45'inverse_2112 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_2112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2774 (coe v0)
-- Data.Bool.Properties._.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_2114 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_2114 = erased
-- Data.Bool.Properties._.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_2116 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_2116 = erased
-- Data.Bool.Properties._.IsNearring.isMagma
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
-- Data.Bool.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Bool.Properties._.IsNearring.isSemigroup
d_isSemigroup_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)))
-- Data.Bool.Properties._.IsNearring.isUnitalMagma
d_isUnitalMagma_2124 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.distrib
d_distrib_2126 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2292
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Bool.Properties._.IsNearring.distribʳ
d_distrib'691'_2128 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2128 = erased
-- Data.Bool.Properties._.IsNearring.distribˡ
d_distrib'737'_2130 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2130 = erased
-- Data.Bool.Properties._.IsNearring.identityʳ
d_identity'691'_2132 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2132 = erased
-- Data.Bool.Properties._.IsNearring.identityˡ
d_identity'737'_2134 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2134 = erased
-- Data.Bool.Properties._.IsNearring.isEquivalence
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
-- Data.Bool.Properties._.IsNearring.isPartialEquivalence
d_isPartialEquivalence_2138 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.isQuasiring
d_isQuasiring_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262
d_isQuasiring_2140 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0)
-- Data.Bool.Properties._.IsNearring.refl
d_refl_2142 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2142 = erased
-- Data.Bool.Properties._.IsNearring.reflexive
d_reflexive_2144 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2144 = erased
-- Data.Bool.Properties._.IsNearring.setoid
d_setoid_2146 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsNearring.sym
d_sym_2148 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2148 = erased
-- Data.Bool.Properties._.IsNearring.trans
d_trans_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2150 = erased
-- Data.Bool.Properties._.IsNearring.zero
d_zero_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2294
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2772 (coe v0))
-- Data.Bool.Properties._.IsNearring.zeroʳ
d_zero'691'_2154 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2154 = erased
-- Data.Bool.Properties._.IsNearring.zeroˡ
d_zero'737'_2156 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  (Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2156 = erased
-- Data.Bool.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2754 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2158 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing._//_
d__'47''47'__2162 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> Bool -> Bool
d__'47''47'__2162 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2162 v0 v2
du__'47''47'__2162 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__2162 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2164 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2166 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2166 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2168 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2168 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_2170 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2170 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2648 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_2172 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_2172 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_2174 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_2174 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_2176 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2176 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2728 v5
-- Data.Bool.Properties._.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_2178 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_'42''45'isUnitalMagma_2178 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734 v5
-- Data.Bool.Properties._.IsNonAssociativeRing.assoc
d_assoc_2180 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2180 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.comm
d_comm_2182 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2182 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_2184 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2184 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congʳ
d_'8729''45'cong'691'_2186 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2186 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-congˡ
d_'8729''45'cong'737'_2188 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2188 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.identity
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
-- Data.Bool.Properties._.IsNonAssociativeRing.identityʳ
d_identity'691'_2192 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2192 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.identityˡ
d_identity'737'_2194 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2194 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
      (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.isCommutativeMagma
d_isCommutativeMagma_2198 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isCommutativeMonoid
d_isCommutativeMonoid_2200 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2202 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2644
         (coe v0))
-- Data.Bool.Properties._.IsNonAssociativeRing.isInvertibleMagma
d_isInvertibleMagma_2206 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2208 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isMagma
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isMonoid
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isSemigroup
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isUnitalMagma
d_isUnitalMagma_2216 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_2218 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2218 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.inverse
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
-- Data.Bool.Properties._.IsNonAssociativeRing.inverseʳ
d_inverse'691'_2222 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2222 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.inverseˡ
d_inverse'737'_2224 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2224 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.distrib
d_distrib_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2226 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2650 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.distribʳ
d_distrib'691'_2228 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2228 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.distribˡ
d_distrib'737'_2230 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2230 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.isEquivalence
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
-- Data.Bool.Properties._.IsNonAssociativeRing.isPartialEquivalence
d_isPartialEquivalence_2234 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.refl
d_refl_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2236 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.reflexive
d_reflexive_2238 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2238 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.setoid
d_setoid_2240 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsNonAssociativeRing.sym
d_sym_2242 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2242 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.trans
d_trans_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2244 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2246 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2246 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2248 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2248 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.zero
d_zero_2250 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2250 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2652 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.zeroʳ
d_zero'691'_2252 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2252 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.zeroˡ
d_zero'737'_2254 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2622 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2254 = erased
-- Data.Bool.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_2258 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2258 = erased
-- Data.Bool.Properties._.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_2260 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2260 = erased
-- Data.Bool.Properties._.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_2262 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2262 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2264 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_2266 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2266 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_2268 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2268 = erased
-- Data.Bool.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_2270 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0))
-- Data.Bool.Properties._.IsQuasigroup.isMagma
d_isMagma_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2272 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.isPartialEquivalence
d_isPartialEquivalence_2274 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsQuasigroup.leftDivides
d_leftDivides_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2276 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_3346 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_2278 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2278 = erased
-- Data.Bool.Properties._.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_2280 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2280 = erased
-- Data.Bool.Properties._.IsQuasigroup.refl
d_refl_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2282 = erased
-- Data.Bool.Properties._.IsQuasigroup.reflexive
d_reflexive_2284 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2284 = erased
-- Data.Bool.Properties._.IsQuasigroup.rightDivides
d_rightDivides_2286 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2286 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_3348 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_2288 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2288 = erased
-- Data.Bool.Properties._.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_2290 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2290 = erased
-- Data.Bool.Properties._.IsQuasigroup.setoid
d_setoid_2292 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsQuasigroup.sym
d_sym_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2294 = erased
-- Data.Bool.Properties._.IsQuasigroup.trans
d_trans_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2296 = erased
-- Data.Bool.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2298 = erased
-- Data.Bool.Properties._.IsQuasigroup.∙-congʳ
d_'8729''45'cong'691'_2300 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2300 = erased
-- Data.Bool.Properties._.IsQuasigroup.∙-congˡ
d_'8729''45'cong'737'_2302 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2302 = erased
-- Data.Bool.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_2306 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2306 = erased
-- Data.Bool.Properties._.IsQuasiring.*-cong
d_'42''45'cong_2308 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2308 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2310 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2310 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2312 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2312 = erased
-- Data.Bool.Properties._.IsQuasiring.*-identity
d_'42''45'identity_2314 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2290 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.identityʳ
d_identity'691'_2316 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2316 = erased
-- Data.Bool.Properties._.IsQuasiring.identityˡ
d_identity'737'_2318 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2318 = erased
-- Data.Bool.Properties._.IsQuasiring.*-isMagma
d_'42''45'isMagma_2320 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2320 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2344 v4
-- Data.Bool.Properties._.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2322 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2322 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348 v4
-- Data.Bool.Properties._.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2324 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2324 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2346 v4
-- Data.Bool.Properties._.IsQuasiring.assoc
d_assoc_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2326 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_2328 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2328 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congʳ
d_'8729''45'cong'691'_2330 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2330 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-congˡ
d_'8729''45'cong'737'_2332 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2332 = erased
-- Data.Bool.Properties._.IsQuasiring.identity
d_identity_2334 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Bool.Properties._.IsQuasiring.identityʳ
d_identity'691'_2336 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2336 = erased
-- Data.Bool.Properties._.IsQuasiring.identityˡ
d_identity'737'_2338 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2338 = erased
-- Data.Bool.Properties._.IsQuasiring.isMagma
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
-- Data.Bool.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_2344 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2284 (coe v0))
-- Data.Bool.Properties._.IsQuasiring.isUnitalMagma
d_isUnitalMagma_2346 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsQuasiring.distrib
d_distrib_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2348 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2292 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.distribʳ
d_distrib'691'_2350 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2350 = erased
-- Data.Bool.Properties._.IsQuasiring.distribˡ
d_distrib'737'_2352 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2352 = erased
-- Data.Bool.Properties._.IsQuasiring.identityʳ
d_identity'691'_2354 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2354 = erased
-- Data.Bool.Properties._.IsQuasiring.identityˡ
d_identity'737'_2356 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2356 = erased
-- Data.Bool.Properties._.IsQuasiring.isEquivalence
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
-- Data.Bool.Properties._.IsQuasiring.isPartialEquivalence
d_isPartialEquivalence_2360 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsQuasiring.refl
d_refl_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2362 = erased
-- Data.Bool.Properties._.IsQuasiring.reflexive
d_reflexive_2364 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2364 = erased
-- Data.Bool.Properties._.IsQuasiring.setoid
d_setoid_2366 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsQuasiring.sym
d_sym_2368 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2368 = erased
-- Data.Bool.Properties._.IsQuasiring.trans
d_trans_2370 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2370 = erased
-- Data.Bool.Properties._.IsQuasiring.zero
d_zero_2372 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2372 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2294 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.zeroʳ
d_zero'691'_2374 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2374 = erased
-- Data.Bool.Properties._.IsQuasiring.zeroˡ
d_zero'737'_2376 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2262 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2376 = erased
-- Data.Bool.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_2380 = erased
-- Data.Bool.Properties._.IsRightBolLoop.//-congʳ
d_'47''47''45'cong'691'_2382 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'691'_2382 = erased
-- Data.Bool.Properties._.IsRightBolLoop.//-congˡ
d_'47''47''45'cong'737'_2384 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong'737'_2384 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_2386 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-congʳ
d_'92''92''45'cong'691'_2388 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'691'_2388 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-congˡ
d_'92''92''45'cong'737'_2390 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong'737'_2390 = erased
-- Data.Bool.Properties._.IsRightBolLoop.identity
d_identity_2392 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_3422
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Bool.Properties._.IsRightBolLoop.identityʳ
d_identity'691'_2394 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2394 = erased
-- Data.Bool.Properties._.IsRightBolLoop.identityˡ
d_identity'737'_2396 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2396 = erased
-- Data.Bool.Properties._.IsRightBolLoop.isEquivalence
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
-- Data.Bool.Properties._.IsRightBolLoop.isLoop
d_isLoop_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_2400 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)
-- Data.Bool.Properties._.IsRightBolLoop.isMagma
d_isMagma_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_3340
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.isPartialEquivalence
d_isPartialEquivalence_2404 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_2406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0))
-- Data.Bool.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2408 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_3346
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.leftDividesʳ
d_leftDivides'691'_2410 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'691'_2410 = erased
-- Data.Bool.Properties._.IsRightBolLoop.leftDividesˡ
d_leftDivides'737'_2412 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftDivides'737'_2412 = erased
-- Data.Bool.Properties._.IsRightBolLoop.refl
d_refl_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2414 = erased
-- Data.Bool.Properties._.IsRightBolLoop.reflexive
d_reflexive_2416 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2416 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightBol
d_rightBol_2418 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_2418 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_3348
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3584 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.rightDividesʳ
d_rightDivides'691'_2422 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'691'_2422 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightDividesˡ
d_rightDivides'737'_2424 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightDivides'737'_2424 = erased
-- Data.Bool.Properties._.IsRightBolLoop.setoid
d_setoid_2426 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRightBolLoop.sym
d_sym_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2428 = erased
-- Data.Bool.Properties._.IsRightBolLoop.trans
d_trans_2430 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2430 = erased
-- Data.Bool.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_2432 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2432 = erased
-- Data.Bool.Properties._.IsRightBolLoop.∙-congʳ
d_'8729''45'cong'691'_2434 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2434 = erased
-- Data.Bool.Properties._.IsRightBolLoop.∙-congˡ
d_'8729''45'cong'737'_2436 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3570 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2436 = erased
-- Data.Bool.Properties._.IsRing._//_
d__'47''47'__2440 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> Bool -> Bool
d__'47''47'__2440 v0 ~v1 v2 ~v3 ~v4 ~v5 = du__'47''47'__2440 v0 v2
du__'47''47'__2440 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__2440 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsRing.*-assoc
d_'42''45'assoc_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2442 = erased
-- Data.Bool.Properties._.IsRing.*-cong
d_'42''45'cong_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2444 = erased
-- Data.Bool.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2446 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2446 = erased
-- Data.Bool.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2448 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2448 = erased
-- Data.Bool.Properties._.IsRing.*-identity
d_'42''45'identity_2450 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896 (coe v0)
-- Data.Bool.Properties._.IsRing.identityʳ
d_identity'691'_2452 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2452 = erased
-- Data.Bool.Properties._.IsRing.identityˡ
d_identity'737'_2454 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2454 = erased
-- Data.Bool.Properties._.IsRing.*-isMagma
d_'42''45'isMagma_2456 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2456 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isMagma_2456 v0 v1 v2 v3 v5
du_'42''45'isMagma_2456 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.*-isMonoid
d_'42''45'isMonoid_2458 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2458 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988 v0 v1 v2
      v3 v5
-- Data.Bool.Properties._.IsRing.*-isSemigroup
d_'42''45'isSemigroup_2460 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2460 v0 v1 v2 v3 ~v4 v5
  = du_'42''45'isSemigroup_2460 v0 v1 v2 v3 v5
du_'42''45'isSemigroup_2460 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.assoc
d_assoc_2462 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2462 = erased
-- Data.Bool.Properties._.IsRing.comm
d_comm_2464 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2464 = erased
-- Data.Bool.Properties._.IsRing.∙-cong
d_'8729''45'cong_2466 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2466 = erased
-- Data.Bool.Properties._.IsRing.∙-congʳ
d_'8729''45'cong'691'_2468 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2468 = erased
-- Data.Bool.Properties._.IsRing.∙-congˡ
d_'8729''45'cong'737'_2470 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2470 = erased
-- Data.Bool.Properties._.IsRing.identity
d_identity_2472 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.identityʳ
d_identity'691'_2474 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2474 = erased
-- Data.Bool.Properties._.IsRing.identityˡ
d_identity'737'_2476 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2476 = erased
-- Data.Bool.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe v0)
-- Data.Bool.Properties._.IsRing.isCommutativeMagma
d_isCommutativeMagma_2480 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isCommutativeMonoid
d_isCommutativeMonoid_2482 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isCommutativeSemigroup
d_isCommutativeSemigroup_2484 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isGroup
d_isGroup_2486 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isInvertibleMagma
d_isInvertibleMagma_2488 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2490 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isMagma
d_isMagma_2492 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isMonoid
d_isMonoid_2494 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isSemigroup
d_isSemigroup_2496 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isUnitalMagma
d_isUnitalMagma_2498 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2500 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2500 = erased
-- Data.Bool.Properties._.IsRing.inverse
d_inverse_2502 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.inverseʳ
d_inverse'691'_2504 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2504 = erased
-- Data.Bool.Properties._.IsRing.inverseˡ
d_inverse'737'_2506 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2506 = erased
-- Data.Bool.Properties._.IsRing.distrib
d_distrib_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2508 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2898 (coe v0)
-- Data.Bool.Properties._.IsRing.distribʳ
d_distrib'691'_2510 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2510 = erased
-- Data.Bool.Properties._.IsRing.distribˡ
d_distrib'737'_2512 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2512 = erased
-- Data.Bool.Properties._.IsRing.isEquivalence
d_isEquivalence_2514 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isNearSemiring
d_isNearSemiring_2516 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2516 v0 v1 v2 v3 ~v4 v5
  = du_isNearSemiring_2516 v0 v1 v2 v3 v5
du_isNearSemiring_2516 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_2516 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Bool.Properties._.IsRing.isPartialEquivalence
d_isPartialEquivalence_2518 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2520 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496
d_isRingWithoutOne_2520 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 v5
-- Data.Bool.Properties._.IsRing.isSemiring
d_isSemiring_2522 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_2522 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 v0 v1 v2 v3 v5
-- Data.Bool.Properties._.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2524 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2524 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2996
      v5
-- Data.Bool.Properties._.IsRing.isSemiringWithoutOne
d_isSemiringWithoutOne_2526 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2526 v0 v1 v2 v3 ~v4 v5
  = du_isSemiringWithoutOne_2526 v0 v1 v2 v3 v5
du_isSemiringWithoutOne_2526 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2526 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2998 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsRing.refl
d_refl_2528 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2528 = erased
-- Data.Bool.Properties._.IsRing.reflexive
d_reflexive_2530 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2530 = erased
-- Data.Bool.Properties._.IsRing.setoid
d_setoid_2532 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsRing.sym
d_sym_2534 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2534 = erased
-- Data.Bool.Properties._.IsRing.trans
d_trans_2536 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2536 = erased
-- Data.Bool.Properties._.IsRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2538 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2538 = erased
-- Data.Bool.Properties._.IsRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2540 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2540 = erased
-- Data.Bool.Properties._.IsRing.zero
d_zero_2542 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2542 v0 v1 v2 v3 ~v4 v5 = du_zero_2542 v0 v1 v2 v3 v5
du_zero_2542 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2542 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero_2596 (coe v0) (coe v1)
      (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2900 (coe v4))
-- Data.Bool.Properties._.IsRing.zeroʳ
d_zero'691'_2544 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2544 = erased
-- Data.Bool.Properties._.IsRing.zeroˡ
d_zero'737'_2546 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2546 = erased
-- Data.Bool.Properties._.IsRingWithoutOne._//_
d__'47''47'__2550 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> Bool -> Bool
d__'47''47'__2550 v0 ~v1 v2 ~v3 ~v4 = du__'47''47'__2550 v0 v2
du__'47''47'__2550 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool) -> Bool -> Bool -> Bool
du__'47''47'__2550 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Data.Bool.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2552 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2552 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2554 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2554 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2556 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2556 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2558 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2558 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2560 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2560 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1326
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2562 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2562 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1328
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598 (coe v0)
         (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Bool.Properties._.IsRingWithoutOne.assoc
d_assoc_2564 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2564 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.comm
d_comm_2566 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2566 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2568 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2568 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2570 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2570 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2572 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2572 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.identity
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
-- Data.Bool.Properties._.IsRingWithoutOne.identityʳ
d_identity'691'_2576 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2576 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.identityˡ
d_identity'737'_2578 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2578 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2580 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
      (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2582 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isCommutativeMonoid
d_isCommutativeMonoid_2584 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2586 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2588 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_2588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2514
         (coe v0))
-- Data.Bool.Properties._.IsRingWithoutOne.isInvertibleMagma
d_isInvertibleMagma_2590 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2592 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.isMagma
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
-- Data.Bool.Properties._.IsRingWithoutOne.isMonoid
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
-- Data.Bool.Properties._.IsRingWithoutOne.isSemigroup
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
-- Data.Bool.Properties._.IsRingWithoutOne.isUnitalMagma
d_isUnitalMagma_2600 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2602 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2602 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.inverse
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
-- Data.Bool.Properties._.IsRingWithoutOne.inverseʳ
d_inverse'691'_2606 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_2606 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.inverseˡ
d_inverse'737'_2608 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_2608 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.distrib
d_distrib_2610 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2610 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2520 (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.distribʳ
d_distrib'691'_2612 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2612 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.distribˡ
d_distrib'737'_2614 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2614 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.isEquivalence
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
-- Data.Bool.Properties._.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2618 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2618
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2598
-- Data.Bool.Properties._.IsRingWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2620 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.refl
d_refl_2622 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2622 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.reflexive
d_reflexive_2624 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2624 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.setoid
d_setoid_2626 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsRingWithoutOne.sym
d_sym_2628 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2628 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.trans
d_trans_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2630 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2632 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'691''45''8315''185'_2632 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2634 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique'737''45''8315''185'_2634 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.zero
d_zero_2636 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2636 = coe MAlonzo.Code.Algebra.Structures.du_zero_2596
-- Data.Bool.Properties._.IsRingWithoutOne.zeroʳ
d_zero'691'_2638 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2638 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.zeroˡ
d_zero'737'_2640 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2496 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2640 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2644 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0))
-- Data.Bool.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2646 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2646 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.isPartialEquivalence
d_isPartialEquivalence_2648 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSelectiveMagma.refl
d_refl_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2650 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.reflexive
d_reflexive_2652 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2652 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.sel
d_sel_2654 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2654 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_462 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.setoid
d_setoid_2656 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSelectiveMagma.sym
d_sym_2658 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2658 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.trans
d_trans_2660 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2660 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2662 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2662 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.∙-congʳ
d_'8729''45'cong'691'_2664 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2664 = erased
-- Data.Bool.Properties._.IsSelectiveMagma.∙-congˡ
d_'8729''45'cong'737'_2666 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2666 = erased
-- Data.Bool.Properties._.IsSemigroup.assoc
d_assoc_2670 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2670 = erased
-- Data.Bool.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2672 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0))
-- Data.Bool.Properties._.IsSemigroup.isMagma
d_isMagma_2674 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2674 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Data.Bool.Properties._.IsSemigroup.isPartialEquivalence
d_isPartialEquivalence_2676 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemigroup.refl
d_refl_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2678 = erased
-- Data.Bool.Properties._.IsSemigroup.reflexive
d_reflexive_2680 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2680 = erased
-- Data.Bool.Properties._.IsSemigroup.setoid
d_setoid_2682 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemigroup.sym
d_sym_2684 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2684 = erased
-- Data.Bool.Properties._.IsSemigroup.trans
d_trans_2686 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2686 = erased
-- Data.Bool.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2688 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2688 = erased
-- Data.Bool.Properties._.IsSemigroup.∙-congʳ
d_'8729''45'cong'691'_2690 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2690 = erased
-- Data.Bool.Properties._.IsSemigroup.∙-congˡ
d_'8729''45'cong'737'_2692 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2692 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2696 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2696 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0))
-- Data.Bool.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2698 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2698 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_418 (coe v0)
-- Data.Bool.Properties._.IsSemimedialMagma.isPartialEquivalence
d_isPartialEquivalence_2700 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemimedialMagma.refl
d_refl_2702 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2702 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.reflexive
d_reflexive_2704 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2704 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2706 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2706 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_420 (coe v0)
-- Data.Bool.Properties._.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_2708 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_2708 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_2710 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_2710 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.setoid
d_setoid_2712 ::
  (Bool -> Bool -> Bool) ->
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
-- Data.Bool.Properties._.IsSemimedialMagma.sym
d_sym_2714 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2714 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.trans
d_trans_2716 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2716 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2718 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2718 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.∙-congʳ
d_'8729''45'cong'691'_2720 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2720 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.∙-congˡ
d_'8729''45'cong'737'_2722 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_410 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2722 = erased
-- Data.Bool.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2726 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2726 = erased
-- Data.Bool.Properties._.IsSemiring.*-cong
d_'42''45'cong_2728 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2728 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2730 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2730 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2732 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2732 = erased
-- Data.Bool.Properties._.IsSemiring.*-identity
d_'42''45'identity_2734 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2734 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.identityʳ
d_identity'691'_2736 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2736 = erased
-- Data.Bool.Properties._.IsSemiring.identityˡ
d_identity'737'_2738 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2738 = erased
-- Data.Bool.Properties._.IsSemiring.*-isMagma
d_'42''45'isMagma_2740 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.*-isMonoid
d_'42''45'isMonoid_2742 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.*-isSemigroup
d_'42''45'isSemigroup_2744 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.assoc
d_assoc_2746 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2746 = erased
-- Data.Bool.Properties._.IsSemiring.comm
d_comm_2748 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2748 = erased
-- Data.Bool.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2750 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congʳ
d_'8729''45'cong'691'_2752 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2752 = erased
-- Data.Bool.Properties._.IsSemiring.∙-congˡ
d_'8729''45'cong'737'_2754 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2754 = erased
-- Data.Bool.Properties._.IsSemiring.identity
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
-- Data.Bool.Properties._.IsSemiring.identityʳ
d_identity'691'_2758 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2758 = erased
-- Data.Bool.Properties._.IsSemiring.identityˡ
d_identity'737'_2760 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2760 = erased
-- Data.Bool.Properties._.IsSemiring.isCommutativeMagma
d_isCommutativeMagma_2762 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.isCommutativeSemigroup
d_isCommutativeSemigroup_2766 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.isMagma
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
-- Data.Bool.Properties._.IsSemiring.isMonoid
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
-- Data.Bool.Properties._.IsSemiring.isSemigroup
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
-- Data.Bool.Properties._.IsSemiring.isUnitalMagma
d_isUnitalMagma_2774 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.distrib
d_distrib_2776 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1566
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.distribʳ
d_distrib'691'_2778 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2778 = erased
-- Data.Bool.Properties._.IsSemiring.distribˡ
d_distrib'737'_2780 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2780 = erased
-- Data.Bool.Properties._.IsSemiring.isEquivalence
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
-- Data.Bool.Properties._.IsSemiring.isNearSemiring
d_isNearSemiring_2784 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.isPartialEquivalence
d_isPartialEquivalence_2786 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2788 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe v0)
-- Data.Bool.Properties._.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_2790 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2790 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732 v4
-- Data.Bool.Properties._.IsSemiring.refl
d_refl_2792 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2792 = erased
-- Data.Bool.Properties._.IsSemiring.reflexive
d_reflexive_2794 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2794 = erased
-- Data.Bool.Properties._.IsSemiring.setoid
d_setoid_2796 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiring.sym
d_sym_2798 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2798 = erased
-- Data.Bool.Properties._.IsSemiring.trans
d_trans_2800 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2800 = erased
-- Data.Bool.Properties._.IsSemiring.zero
d_zero_2802 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2802 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1658 (coe v0)
-- Data.Bool.Properties._.IsSemiring.zeroʳ
d_zero'691'_2804 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2804 = erased
-- Data.Bool.Properties._.IsSemiring.zeroˡ
d_zero'737'_2806 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2806 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2810 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2810 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2812 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2812 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2814 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2814 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2816 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2816 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2820 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2820 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2822 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2822 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_2824 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2824 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1616 v4
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_2826 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_2826 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620 v4
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_2828 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1618 v4
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2830 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2830 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2832 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2832 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2834 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2834 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congʳ
d_'8729''45'cong'691'_2836 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2836 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-congˡ
d_'8729''45'cong'737'_2838 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2838 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identity
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityʳ
d_identity'691'_2842 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2842 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identityˡ
d_identity'737'_2844 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2844 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeMagma
d_isCommutativeMagma_2846 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2848 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isCommutativeSemigroup
d_isCommutativeSemigroup_2850 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2854 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
         (coe v0))
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isUnitalMagma
d_isUnitalMagma_2858 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2860 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2860 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1566 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_2862 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2862 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_2864 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2864 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isPartialEquivalence
d_isPartialEquivalence_2868 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.refl
d_refl_2870 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2870 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.reflexive
d_reflexive_2872 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2872 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2874 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2876 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2876 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.trans
d_trans_2878 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2878 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2882 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2882 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2884 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2884 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2886 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2886 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2888 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2888 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_2890 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2890 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1412 v3
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2892 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2892 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1414 v3
-- Data.Bool.Properties._.IsSemiringWithoutOne.assoc
d_assoc_2894 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2894 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.comm
d_comm_2896 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2896 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-cong
d_'8729''45'cong_2898 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2898 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congʳ
d_'8729''45'cong'691'_2900 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2900 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.∙-congˡ
d_'8729''45'cong'737'_2902 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2902 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.identity
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.identityʳ
d_identity'691'_2906 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2906 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.identityˡ
d_identity'737'_2908 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2908 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.isCommutativeMagma
d_isCommutativeMagma_2910 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2912 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2912 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.isCommutativeSemigroup
d_isCommutativeSemigroup_2914 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2916 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_2916 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
         (coe v0))
-- Data.Bool.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2918 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2918 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1368 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.distribʳ
d_distrib'691'_2920 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_2920 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.distribˡ
d_distrib'737'_2922 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_2922 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.isEquivalence
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_2926 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_2926 v0 v1 v2 v3
  = coe MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1430 v3
-- Data.Bool.Properties._.IsSemiringWithoutOne.isPartialEquivalence
d_isPartialEquivalence_2928 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.refl
d_refl_2930 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2930 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.reflexive
d_reflexive_2932 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2932 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2934 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.sym
d_sym_2936 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2936 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.trans
d_trans_2938 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2938 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.zero
d_zero_2940 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2940 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1370 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.zeroʳ
d_zero'691'_2942 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_2942 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.zeroˡ
d_zero'737'_2944 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_2944 = erased
-- Data.Bool.Properties._.IsSuccessorSet.isEquivalence
d_isEquivalence_2948 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2948 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_158 (coe v0)
-- Data.Bool.Properties._.IsSuccessorSet.isPartialEquivalence
d_isPartialEquivalence_2950 ::
  (Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsSuccessorSet.refl
d_refl_2952 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2952 = erased
-- Data.Bool.Properties._.IsSuccessorSet.reflexive
d_reflexive_2954 ::
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2954 = erased
-- Data.Bool.Properties._.IsSuccessorSet.setoid
d_setoid_2956 ::
  (Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2956 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_setoid_174 v2
-- Data.Bool.Properties._.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_2958 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'35''45'cong_2958 = erased
-- Data.Bool.Properties._.IsSuccessorSet.sym
d_sym_2960 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2960 = erased
-- Data.Bool.Properties._.IsSuccessorSet.trans
d_trans_2962 ::
  MAlonzo.Code.Algebra.Structures.T_IsSuccessorSet_148 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2962 = erased
-- Data.Bool.Properties._.IsUnitalMagma.identity
d_identity_2966 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2966 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_680 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.identityʳ
d_identity'691'_2968 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_2968 = erased
-- Data.Bool.Properties._.IsUnitalMagma.identityˡ
d_identity'737'_2970 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_2970 = erased
-- Data.Bool.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2972 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2972 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0))
-- Data.Bool.Properties._.IsUnitalMagma.isMagma
d_isMagma_2974 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2974 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_678 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.isPartialEquivalence
d_isPartialEquivalence_2976 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsUnitalMagma.refl
d_refl_2978 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_2978 = erased
-- Data.Bool.Properties._.IsUnitalMagma.reflexive
d_reflexive_2980 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_2980 = erased
-- Data.Bool.Properties._.IsUnitalMagma.setoid
d_setoid_2982 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
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
-- Data.Bool.Properties._.IsUnitalMagma.sym
d_sym_2984 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2984 = erased
-- Data.Bool.Properties._.IsUnitalMagma.trans
d_trans_2986 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_2986 = erased
-- Data.Bool.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2988 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2988 = erased
-- Data.Bool.Properties._.IsUnitalMagma.∙-congʳ
d_'8729''45'cong'691'_2990 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_2990 = erased
-- Data.Bool.Properties._.IsUnitalMagma.∙-congˡ
d_'8729''45'cong'737'_2992 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_2992 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra
d_IsBooleanAlgebra_2996 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsBoundedJoinSemilattice
d_IsBoundedJoinSemilattice_3000 ::
  (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedJoinSemilattice_3000 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice
d_IsBoundedMeetSemilattice_3002 ::
  (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedMeetSemilattice_3002 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice
d_IsBoundedSemilattice_3004 :: (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedSemilattice_3004 = erased
-- Data.Bool.Properties._.IsDistributiveLattice
d_IsDistributiveLattice_3006 a0 a1 = ()
-- Data.Bool.Properties._.IsJoinSemilattice
d_IsJoinSemilattice_3010 :: (Bool -> Bool -> Bool) -> ()
d_IsJoinSemilattice_3010 = erased
-- Data.Bool.Properties._.IsLattice
d_IsLattice_3012 a0 a1 = ()
-- Data.Bool.Properties._.IsMeetSemilattice
d_IsMeetSemilattice_3016 :: (Bool -> Bool -> Bool) -> ()
d_IsMeetSemilattice_3016 = erased
-- Data.Bool.Properties._.IsSemilattice
d_IsSemilattice_3018 :: (Bool -> Bool -> Bool) -> ()
d_IsSemilattice_3018 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.absorptive
d_absorptive_3022 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_3022 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3342
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
            (coe v0)))
-- Data.Bool.Properties._.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_3024 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_isDistributiveLattice_3024 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.isEquivalence
d_isEquivalence_3026 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3026 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
            (coe v0)))
-- Data.Bool.Properties._.IsBooleanAlgebra.isLattice
d_isLattice_3028 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_isLattice_3028 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.isPartialEquivalence
d_isPartialEquivalence_3030 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3030 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_3030 v5
du_isPartialEquivalence_3030 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3030 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe v2))))
-- Data.Bool.Properties._.IsBooleanAlgebra.refl
d_refl_3032 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3032 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.reflexive
d_reflexive_3034 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3034 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.sym
d_sym_3036 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3036 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.trans
d_trans_3038 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3038 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.¬-cong
d_'172''45'cong_3040 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'cong_3040 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_3042 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'absorbs'45''8744'_3042 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-assoc
d_'8743''45'assoc_3044 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3044 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-comm
d_'8743''45'comm_3046 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3046 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_3048 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_3048 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3484
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complementʳ
d_'8743''45'complement'691'_3050 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'complement'691'_3050 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complementˡ
d_'8743''45'complement'737'_3052 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'complement'737'_3052 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-cong
d_'8743''45'cong_3054 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_3054 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-congʳ
d_'8743''45'cong'691'_3056 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'691'_3056 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-congˡ
d_'8743''45'cong'737'_3058 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'737'_3058 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3060 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3060 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3398
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3062 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_3062 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3064 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_3064 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_3066 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'absorbs'45''8743'_3066 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-assoc
d_'8744''45'assoc_3068 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3068 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-comm
d_'8744''45'comm_3070 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3070 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_3072 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_3072 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3482
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complementʳ
d_'8744''45'complement'691'_3074 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'complement'691'_3074 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complementˡ
d_'8744''45'complement'737'_3076 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'complement'737'_3076 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-cong
d_'8744''45'cong_3078 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_3078 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-congʳ
d_'8744''45'cong'691'_3080 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'691'_3080 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-congˡ
d_'8744''45'cong'737'_3082 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'737'_3082 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3084 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3084 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3396
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3086 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_3086 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3088 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool) ->
  Bool ->
  Bool ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_3088 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.assoc
d_assoc_3092 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3092 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.comm
d_comm_3094 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3094 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.idem
d_idem_3096 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3096 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identity
d_identity_3098 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3098 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identityʳ
d_identity'691'_3100 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_3100 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identityˡ
d_identity'737'_3102 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_3102 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isBand
d_isBand_3104 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_3104 ~v0 ~v1 v2 = du_isBand_3104 v2
du_isBand_3104 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_3104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isEquivalence
d_isEquivalence_3106 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3106 ~v0 ~v1 v2 = du_isEquivalence_3106 v2
du_isEquivalence_3106 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3106 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1)))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isCommutativeBand
d_isCommutativeBand_3108 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_3108 ~v0 ~v1 v2 = du_isCommutativeBand_3108 v2
du_isCommutativeBand_3108 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_3108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 (coe v0)
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isMagma
d_isMagma_3110 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3110 ~v0 ~v1 v2 = du_isMagma_3110 v2
du_isMagma_3110 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_3110 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isPartialEquivalence
d_isPartialEquivalence_3112 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3112 ~v0 ~v1 v2
  = du_isPartialEquivalence_3112 v2
du_isPartialEquivalence_3112 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3112 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isSemigroup
d_isSemigroup_3114 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3114 ~v0 ~v1 v2 = du_isSemigroup_3114 v2
du_isSemigroup_3114 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_3114 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1)))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.refl
d_refl_3116 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3116 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.reflexive
d_reflexive_3118 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3118 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.setoid
d_setoid_3120 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3120 ~v0 ~v1 v2 = du_setoid_3120 v2
du_setoid_3120 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3120 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.sym
d_sym_3122 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3122 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.trans
d_trans_3124 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3124 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-cong
d_'8729''45'cong_3126 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3126 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-congʳ
d_'8729''45'cong'691'_3128 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3128 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-congˡ
d_'8729''45'cong'737'_3130 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3130 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.assoc
d_assoc_3134 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3134 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.comm
d_comm_3136 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3136 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.idem
d_idem_3138 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3138 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identity
d_identity_3140 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identityʳ
d_identity'691'_3142 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_3142 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identityˡ
d_identity'737'_3144 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_3144 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isBand
d_isBand_3146 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_3146 ~v0 ~v1 v2 = du_isBand_3146 v2
du_isBand_3146 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_3146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isEquivalence
d_isEquivalence_3148 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3148 ~v0 ~v1 v2 = du_isEquivalence_3148 v2
du_isEquivalence_3148 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3148 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1)))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isMagma
d_isMagma_3150 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3150 ~v0 ~v1 v2 = du_isMagma_3150 v2
du_isMagma_3150 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_3150 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isCommutativeBand
d_isCommutativeBand_3152 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_3152 ~v0 ~v1 v2 = du_isCommutativeBand_3152 v2
du_isCommutativeBand_3152 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_3152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 (coe v0)
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isPartialEquivalence
d_isPartialEquivalence_3154 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3154 ~v0 ~v1 v2
  = du_isPartialEquivalence_3154 v2
du_isPartialEquivalence_3154 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3154 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isSemigroup
d_isSemigroup_3156 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3156 ~v0 ~v1 v2 = du_isSemigroup_3156 v2
du_isSemigroup_3156 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_3156 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1)))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.refl
d_refl_3158 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3158 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.reflexive
d_reflexive_3160 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3160 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.setoid
d_setoid_3162 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3162 ~v0 ~v1 v2 = du_setoid_3162 v2
du_setoid_3162 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3162 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.sym
d_sym_3164 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3164 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.trans
d_trans_3166 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3166 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-cong
d_'8729''45'cong_3168 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3168 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-congʳ
d_'8729''45'cong'691'_3170 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3170 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-congˡ
d_'8729''45'cong'737'_3172 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3172 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.assoc
d_assoc_3176 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3176 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.comm
d_comm_3178 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3178 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.idem
d_idem_3180 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3180 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.identity
d_identity_3182 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3182 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedSemilattice.identityʳ
d_identity'691'_3184 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_3184 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.identityˡ
d_identity'737'_3186 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_3186 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.isBand
d_isBand_3188 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_3188 ~v0 ~v1 v2 = du_isBand_3188 v2
du_isBand_3188 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_isBand_3188 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isBand_878
      (coe
         MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeMagma
d_isCommutativeMagma_3190 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_3190 ~v0 ~v1 v2
  = du_isCommutativeMagma_3190 v2
du_isCommutativeMagma_3190 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_3190 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeMonoid
d_isCommutativeMonoid_3192 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_3192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeSemigroup
d_isCommutativeSemigroup_3194 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_3194 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_3194 v2
du_isCommutativeSemigroup_3194 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_3194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isEquivalence
d_isEquivalence_3196 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3196 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.isIdempotentMonoid
d_isIdempotentMonoid_3198 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
d_isIdempotentMonoid_3198 ~v0 ~v1 v2
  = du_isIdempotentMonoid_3198 v2
du_isIdempotentMonoid_3198 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMonoid_828
du_isIdempotentMonoid_3198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isIdempotentMonoid_944 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isMagma
d_isMagma_3200 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3200 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_776
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
               (coe v0))))
-- Data.Bool.Properties._.IsBoundedSemilattice.isMonoid
d_isMonoid_3202 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_3202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isPartialEquivalence
d_isPartialEquivalence_3204 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3204 ~v0 ~v1 v2
  = du_isPartialEquivalence_3204 v2
du_isPartialEquivalence_3204 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3204 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.isSemigroup
d_isSemigroup_3206 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_776
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeBand
d_isCommutativeBand_3208 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_isCommutativeBand_3208 ~v0 ~v1 v2 = du_isCommutativeBand_3208 v2
du_isCommutativeBand_3208 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_isCommutativeBand_3208 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeBand_950 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isUnitalMagma
d_isUnitalMagma_3210 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_3210 ~v0 ~v1 v2 = du_isUnitalMagma_3210 v2
du_isUnitalMagma_3210 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_3210 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_896
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v1)))
-- Data.Bool.Properties._.IsBoundedSemilattice.refl
d_refl_3212 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3212 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.reflexive
d_reflexive_3214 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3214 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.setoid
d_setoid_3216 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3216 ~v0 ~v1 v2 = du_setoid_3216 v2
du_setoid_3216 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3216 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.sym
d_sym_3218 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3218 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.trans
d_trans_3220 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3220 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-cong
d_'8729''45'cong_3222 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3222 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-congʳ
d_'8729''45'cong'691'_3224 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3224 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-congˡ
d_'8729''45'cong'737'_3226 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3226 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.absorptive
d_absorptive_3230 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_3230 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3342
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394 (coe v0))
-- Data.Bool.Properties._.IsDistributiveLattice.isEquivalence
d_isEquivalence_3232 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3232 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394 (coe v0))
-- Data.Bool.Properties._.IsDistributiveLattice.isLattice
d_isLattice_3234 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_isLattice_3234 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394 (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.isPartialEquivalence
d_isPartialEquivalence_3236 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3236 ~v0 ~v1 v2
  = du_isPartialEquivalence_3236 v2
du_isPartialEquivalence_3236 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3236 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
            (coe v1)))
-- Data.Bool.Properties._.IsDistributiveLattice.refl
d_refl_3238 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3238 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.reflexive
d_reflexive_3240 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3240 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.sym
d_sym_3242 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3242 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.trans
d_trans_3244 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3244 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_3246 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'absorbs'45''8744'_3246 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-assoc
d_'8743''45'assoc_3248 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3248 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-comm
d_'8743''45'comm_3250 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3250 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-cong
d_'8743''45'cong_3252 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_3252 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-congʳ
d_'8743''45'cong'691'_3254 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'691'_3254 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-congˡ
d_'8743''45'cong'737'_3256 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'737'_3256 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3258 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3258 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3398
      (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3260 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_3260 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3262 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_3262 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_3264 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'absorbs'45''8743'_3264 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-assoc
d_'8744''45'assoc_3266 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3266 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-comm
d_'8744''45'comm_3268 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3268 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-cong
d_'8744''45'cong_3270 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_3270 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-congʳ
d_'8744''45'cong'691'_3272 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'691'_3272 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-congˡ
d_'8744''45'cong'737'_3274 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'737'_3274 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3276 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3276 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3396
      (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3278 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_3278 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3280 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_3280 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.assoc
d_assoc_3284 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3284 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.comm
d_comm_3286 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3286 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.idem
d_idem_3288 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3288 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.isBand
d_isBand_3290 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_3290 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Bool.Properties._.IsJoinSemilattice.isEquivalence
d_isEquivalence_3292 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3292 ~v0 v1 = du_isEquivalence_3292 v1
du_isEquivalence_3292 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))))
-- Data.Bool.Properties._.IsJoinSemilattice.isMagma
d_isMagma_3294 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3294 ~v0 v1 = du_isMagma_3294 v1
du_isMagma_3294 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_3294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Bool.Properties._.IsJoinSemilattice.isPartialEquivalence
d_isPartialEquivalence_3296 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3296 ~v0 v1
  = du_isPartialEquivalence_3296 v1
du_isPartialEquivalence_3296 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3296 v0
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
-- Data.Bool.Properties._.IsJoinSemilattice.isSemigroup
d_isSemigroup_3298 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3298 ~v0 v1 = du_isSemigroup_3298 v1
du_isSemigroup_3298 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_3298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Bool.Properties._.IsJoinSemilattice.refl
d_refl_3300 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3300 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.reflexive
d_reflexive_3302 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3302 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.setoid
d_setoid_3304 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3304 ~v0 v1 = du_setoid_3304 v1
du_setoid_3304 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3304 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Bool.Properties._.IsJoinSemilattice.sym
d_sym_3306 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3306 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.trans
d_trans_3308 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3308 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.∙-cong
d_'8729''45'cong_3310 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3310 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.∙-congʳ
d_'8729''45'cong'691'_3312 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3312 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.∙-congˡ
d_'8729''45'cong'737'_3314 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3314 = erased
-- Data.Bool.Properties._.IsLattice.absorptive
d_absorptive_3318 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_3318 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3342 (coe v0)
-- Data.Bool.Properties._.IsLattice.isEquivalence
d_isEquivalence_3320 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3320 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
      (coe v0)
-- Data.Bool.Properties._.IsLattice.isPartialEquivalence
d_isPartialEquivalence_3322 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3322 ~v0 ~v1 v2
  = du_isPartialEquivalence_3322 v2
du_isPartialEquivalence_3322 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
         (coe v0))
-- Data.Bool.Properties._.IsLattice.refl
d_refl_3324 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3324 = erased
-- Data.Bool.Properties._.IsLattice.reflexive
d_reflexive_3326 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3326 = erased
-- Data.Bool.Properties._.IsLattice.sym
d_sym_3328 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3328 = erased
-- Data.Bool.Properties._.IsLattice.trans
d_trans_3330 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3330 = erased
-- Data.Bool.Properties._.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_3332 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'absorbs'45''8744'_3332 = erased
-- Data.Bool.Properties._.IsLattice.∧-assoc
d_'8743''45'assoc_3334 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3334 = erased
-- Data.Bool.Properties._.IsLattice.∧-comm
d_'8743''45'comm_3336 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3336 = erased
-- Data.Bool.Properties._.IsLattice.∧-cong
d_'8743''45'cong_3338 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_3338 = erased
-- Data.Bool.Properties._.IsLattice.∧-congʳ
d_'8743''45'cong'691'_3340 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'691'_3340 = erased
-- Data.Bool.Properties._.IsLattice.∧-congˡ
d_'8743''45'cong'737'_3342 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong'737'_3342 = erased
-- Data.Bool.Properties._.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_3344 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'absorbs'45''8743'_3344 = erased
-- Data.Bool.Properties._.IsLattice.∨-assoc
d_'8744''45'assoc_3346 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3346 = erased
-- Data.Bool.Properties._.IsLattice.∨-comm
d_'8744''45'comm_3348 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3348 = erased
-- Data.Bool.Properties._.IsLattice.∨-cong
d_'8744''45'cong_3350 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_3350 = erased
-- Data.Bool.Properties._.IsLattice.∨-congʳ
d_'8744''45'cong'691'_3352 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'691'_3352 = erased
-- Data.Bool.Properties._.IsLattice.∨-congˡ
d_'8744''45'cong'737'_3354 ::
  (Bool -> Bool -> Bool) ->
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong'737'_3354 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.assoc
d_assoc_3358 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3358 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.comm
d_comm_3360 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3360 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.idem
d_idem_3362 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3362 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.isBand
d_isBand_3364 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_3364 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Bool.Properties._.IsMeetSemilattice.isEquivalence
d_isEquivalence_3366 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3366 ~v0 v1 = du_isEquivalence_3366 v1
du_isEquivalence_3366 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))))
-- Data.Bool.Properties._.IsMeetSemilattice.isMagma
d_isMagma_3368 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3368 ~v0 v1 = du_isMagma_3368 v1
du_isMagma_3368 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_3368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Bool.Properties._.IsMeetSemilattice.isPartialEquivalence
d_isPartialEquivalence_3370 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3370 ~v0 v1
  = du_isPartialEquivalence_3370 v1
du_isPartialEquivalence_3370 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3370 v0
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
-- Data.Bool.Properties._.IsMeetSemilattice.isSemigroup
d_isSemigroup_3372 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3372 ~v0 v1 = du_isSemigroup_3372 v1
du_isSemigroup_3372 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_3372 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Bool.Properties._.IsMeetSemilattice.refl
d_refl_3374 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3374 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.reflexive
d_reflexive_3376 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3376 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.setoid
d_setoid_3378 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3378 ~v0 v1 = du_setoid_3378 v1
du_setoid_3378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3378 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Bool.Properties._.IsMeetSemilattice.sym
d_sym_3380 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3380 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.trans
d_trans_3382 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3382 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.∙-cong
d_'8729''45'cong_3384 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3384 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.∙-congʳ
d_'8729''45'cong'691'_3386 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3386 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.∙-congˡ
d_'8729''45'cong'737'_3388 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3388 = erased
-- Data.Bool.Properties._.IsSemilattice.assoc
d_assoc_3392 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3392 = erased
-- Data.Bool.Properties._.IsSemilattice.comm
d_comm_3394 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3394 = erased
-- Data.Bool.Properties._.IsSemilattice.idem
d_idem_3396 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_3396 = erased
-- Data.Bool.Properties._.IsSemilattice.isBand
d_isBand_3398 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_isBand_3398 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)
-- Data.Bool.Properties._.IsSemilattice.isEquivalence
d_isEquivalence_3400 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3400 ~v0 v1 = du_isEquivalence_3400 v1
du_isEquivalence_3400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))))
-- Data.Bool.Properties._.IsSemilattice.isMagma
d_isMagma_3402 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3402 ~v0 v1 = du_isMagma_3402 v1
du_isMagma_3402 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_isMagma_3402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0)))
-- Data.Bool.Properties._.IsSemilattice.isPartialEquivalence
d_isPartialEquivalence_3404 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3404 ~v0 v1
  = du_isPartialEquivalence_3404 v1
du_isPartialEquivalence_3404 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3404 v0
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
-- Data.Bool.Properties._.IsSemilattice.isSemigroup
d_isSemigroup_3406 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3406 ~v0 v1 = du_isSemigroup_3406 v1
du_isSemigroup_3406 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_isSemigroup_3406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_536
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0))
-- Data.Bool.Properties._.IsSemilattice.refl
d_refl_3408 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refl_3408 = erased
-- Data.Bool.Properties._.IsSemilattice.reflexive
d_reflexive_3410 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reflexive_3410 = erased
-- Data.Bool.Properties._.IsSemilattice.setoid
d_setoid_3412 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3412 ~v0 v1 = du_setoid_3412 v1
du_setoid_3412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3412 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_622 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Data.Bool.Properties._.IsSemilattice.sym
d_sym_3414 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_3414 = erased
-- Data.Bool.Properties._.IsSemilattice.trans
d_trans_3416 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3416 = erased
-- Data.Bool.Properties._.IsSemilattice.∙-cong
d_'8729''45'cong_3418 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_3418 = erased
-- Data.Bool.Properties._.IsSemilattice.∙-congʳ
d_'8729''45'cong'691'_3420 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'691'_3420 = erased
-- Data.Bool.Properties._.IsSemilattice.∙-congˡ
d_'8729''45'cong'737'_3422 ::
  (Bool -> Bool -> Bool) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614 ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong'737'_3422 = erased
-- Data.Bool.Properties._≟_
d__'8799'__3432 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__3432 v0 v1
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
d_'8801''45'setoid_3434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''45'setoid_3434
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Bool.Properties.≡-decSetoid
d_'8801''45'decSetoid_3436 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_'8801''45'decSetoid_3436
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__3432)
-- Data.Bool.Properties.≤-reflexive
d_'8804''45'reflexive_3438 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'reflexive_3438 ~v0 ~v1 ~v2
  = du_'8804''45'reflexive_3438
du_'8804''45'reflexive_3438 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'reflexive_3438
  = coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-refl
d_'8804''45'refl_3440 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'refl_3440 ~v0 = du_'8804''45'refl_3440
du_'8804''45'refl_3440 :: MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'refl_3440 = coe du_'8804''45'reflexive_3438
-- Data.Bool.Properties.≤-trans
d_'8804''45'trans_3442 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'trans_3442 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_3442 v3 v4
du_'8804''45'trans_3442 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'trans_3442 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
        -> coe seq (coe v1) (coe v0)
      MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Bool.Properties.≤-antisym
d_'8804''45'antisym_3446 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3446 = erased
-- Data.Bool.Properties.≤-minimum
d_'8804''45'minimum_3448 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'minimum_3448 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
      else coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-maximum
d_'8804''45'maximum_3450 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'maximum_3450 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
      else coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
-- Data.Bool.Properties.≤-total
d_'8804''45'total_3452 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3452 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe d_'8804''45'maximum_3450 (coe v1))
      else coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe d_'8804''45'minimum_3448 (coe v1))
-- Data.Bool.Properties._≤?_
d__'8804''63'__3458 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3458 v0 v1
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
                (coe d_'8804''45'minimum_3448 (coe v1)))
-- Data.Bool.Properties.≤-irrelevant
d_'8804''45'irrelevant_3462 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3462 = erased
-- Data.Bool.Properties.≤-isPreorder
d_'8804''45'isPreorder_3464 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_3464
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3438)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_3442 v3 v4)
-- Data.Bool.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3466 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_3466
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe d_'8804''45'isPreorder_3464) erased
-- Data.Bool.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3468 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_3468
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe d_'8804''45'isPartialOrder_3466) (coe d_'8804''45'total_3452)
-- Data.Bool.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3470 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'8804''45'isDecTotalOrder_3470
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe d_'8804''45'isTotalOrder_3468) (coe d__'8799'__3432)
      (coe d__'8804''63'__3458)
-- Data.Bool.Properties.≤-poset
d_'8804''45'poset_3472 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8804''45'poset_3472
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      d_'8804''45'isPartialOrder_3466
-- Data.Bool.Properties.≤-preorder
d_'8804''45'preorder_3474 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8804''45'preorder_3474
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      d_'8804''45'isPreorder_3464
-- Data.Bool.Properties.≤-totalOrder
d_'8804''45'totalOrder_3476 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'8804''45'totalOrder_3476
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      d_'8804''45'isTotalOrder_3468
-- Data.Bool.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3478 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8804''45'decTotalOrder_3478
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      d_'8804''45'isDecTotalOrder_3470
-- Data.Bool.Properties.<-irrefl
d_'60''45'irrefl_3480 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3480 = erased
-- Data.Bool.Properties.<-asym
d_'60''45'asym_3482 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3482 = erased
-- Data.Bool.Properties.<-trans
d_'60''45'trans_3484 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans_3484 = erased
-- Data.Bool.Properties.<-transʳ
d_'60''45'trans'691'_3486 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'691'_3486 = erased
-- Data.Bool.Properties.<-transˡ
d_'60''45'trans'737'_3488 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'737'_3488 = erased
-- Data.Bool.Properties.<-cmp
d_'60''45'cmp_3490 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3490 v0 v1
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
d__'60''63'__3492 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3492 v0 v1
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
d_'60''45'resp'8322''45''8801'_3494 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_3494
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Bool.Properties.<-irrelevant
d_'60''45'irrelevant_3500 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3500 = erased
-- Data.Bool.Properties.<-wellFounded
d_'60''45'wellFounded_3502 ::
  Bool -> MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'60''45'wellFounded_3502 = erased
-- Data.Bool.Properties._.<-acc
d_'60''45'acc_3512 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'60''45'acc_3512 = erased
-- Data.Bool.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3514 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'60''45'isStrictPartialOrder_3514
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased d_'60''45'resp'8322''45''8801'_3494
-- Data.Bool.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3516 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''45'isStrictTotalOrder_3516
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe d_'60''45'isStrictPartialOrder_3514) (coe d_'60''45'cmp_3490)
-- Data.Bool.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3518 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'60''45'strictPartialOrder_3518
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      d_'60''45'isStrictPartialOrder_3514
-- Data.Bool.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3520 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'60''45'strictTotalOrder_3520
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      d_'60''45'isStrictTotalOrder_3516
-- Data.Bool.Properties.∨-assoc
d_'8744''45'assoc_3522 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3522 = erased
-- Data.Bool.Properties.∨-comm
d_'8744''45'comm_3532 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3532 = erased
-- Data.Bool.Properties.∨-identityˡ
d_'8744''45'identity'737'_3534 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'737'_3534 = erased
-- Data.Bool.Properties.∨-identityʳ
d_'8744''45'identity'691'_3536 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'691'_3536 = erased
-- Data.Bool.Properties.∨-identity
d_'8744''45'identity_3538 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_3538
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-zeroˡ
d_'8744''45'zero'737'_3540 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'737'_3540 = erased
-- Data.Bool.Properties.∨-zeroʳ
d_'8744''45'zero'691'_3542 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'691'_3542 = erased
-- Data.Bool.Properties.∨-zero
d_'8744''45'zero_3544 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_3544
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-inverseˡ
d_'8744''45'inverse'737'_3546 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'737'_3546 = erased
-- Data.Bool.Properties.∨-inverseʳ
d_'8744''45'inverse'691'_3548 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'691'_3548 = erased
-- Data.Bool.Properties.∨-inverse
d_'8744''45'inverse_3552 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'inverse_3552
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-idem
d_'8744''45'idem_3554 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'idem_3554 = erased
-- Data.Bool.Properties.∨-sel
d_'8744''45'sel_3556 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8744''45'sel_3556 v0 ~v1 = du_'8744''45'sel_3556 v0
du_'8744''45'sel_3556 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8744''45'sel_3556 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Bool.Properties.∨-conicalˡ
d_'8744''45'conical'737'_3562 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'conical'737'_3562 = erased
-- Data.Bool.Properties.∨-conicalʳ
d_'8744''45'conical'691'_3564 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'conical'691'_3564 = erased
-- Data.Bool.Properties.∨-conical
d_'8744''45'conical_3566 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'conical_3566
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-isMagma
d_'8744''45'isMagma_3568 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8744''45'isMagma_3568
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Bool.Properties.∨-magma
d_'8744''45'magma_3570 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8744''45'magma_3570
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isMagma_3568
-- Data.Bool.Properties.∨-isSemigroup
d_'8744''45'isSemigroup_3572 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8744''45'isSemigroup_3572
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'8744''45'isMagma_3568) erased
-- Data.Bool.Properties.∨-semigroup
d_'8744''45'semigroup_3574 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8744''45'semigroup_3574
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemigroup_3572
-- Data.Bool.Properties.∨-isBand
d_'8744''45'isBand_3576 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8744''45'isBand_3576
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_566
      (coe d_'8744''45'isSemigroup_3572) erased
-- Data.Bool.Properties.∨-band
d_'8744''45'band_3578 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8744''45'band_3578
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_682
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isBand_3576
-- Data.Bool.Properties.∨-isSemilattice
d_'8744''45'isSemilattice_3580 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8744''45'isSemilattice_3580
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_662
      (coe d_'8744''45'isBand_3576) erased
-- Data.Bool.Properties.∨-semilattice
d_'8744''45'semilattice_3582 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3582
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_84
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemilattice_3580
-- Data.Bool.Properties.∨-isMonoid
d_'8744''45'isMonoid_3584 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8744''45'isMonoid_3584
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'8744''45'isSemigroup_3572) (coe d_'8744''45'identity_3538)
-- Data.Bool.Properties.∨-isCommutativeMonoid
d_'8744''45'isCommutativeMonoid_3586 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8744''45'isCommutativeMonoid_3586
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'8744''45'isMonoid_3584) erased
-- Data.Bool.Properties.∨-commutativeMonoid
d_'8744''45'commutativeMonoid_3588 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'8744''45'commutativeMonoid_3588
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isCommutativeMonoid_3586
-- Data.Bool.Properties.∨-isIdempotentCommutativeMonoid
d_'8744''45'isIdempotentCommutativeMonoid_3590 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'8744''45'isIdempotentCommutativeMonoid_3590
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_952
      (coe d_'8744''45'isCommutativeMonoid_3586) erased
-- Data.Bool.Properties.∨-idempotentCommutativeMonoid
d_'8744''45'idempotentCommutativeMonoid_3592 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186
d_'8744''45'idempotentCommutativeMonoid_3592
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1296
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isIdempotentCommutativeMonoid_3590
-- Data.Bool.Properties.∧-assoc
d_'8743''45'assoc_3594 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3594 = erased
-- Data.Bool.Properties.∧-comm
d_'8743''45'comm_3604 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3604 = erased
-- Data.Bool.Properties.∧-identityˡ
d_'8743''45'identity'737'_3606 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'737'_3606 = erased
-- Data.Bool.Properties.∧-identityʳ
d_'8743''45'identity'691'_3608 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'691'_3608 = erased
-- Data.Bool.Properties.∧-identity
d_'8743''45'identity_3610 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_3610
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-zeroˡ
d_'8743''45'zero'737'_3612 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'737'_3612 = erased
-- Data.Bool.Properties.∧-zeroʳ
d_'8743''45'zero'691'_3614 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'691'_3614 = erased
-- Data.Bool.Properties.∧-zero
d_'8743''45'zero_3616 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_3616
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-inverseˡ
d_'8743''45'inverse'737'_3618 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'737'_3618 = erased
-- Data.Bool.Properties.∧-inverseʳ
d_'8743''45'inverse'691'_3620 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'691'_3620 = erased
-- Data.Bool.Properties.∧-inverse
d_'8743''45'inverse_3624 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'inverse_3624
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-idem
d_'8743''45'idem_3626 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'idem_3626 = erased
-- Data.Bool.Properties.∧-sel
d_'8743''45'sel_3628 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8743''45'sel_3628 v0 ~v1 = du_'8743''45'sel_3628 v0
du_'8743''45'sel_3628 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8743''45'sel_3628 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
-- Data.Bool.Properties.∧-conicalˡ
d_'8743''45'conical'737'_3634 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'conical'737'_3634 = erased
-- Data.Bool.Properties.∧-conicalʳ
d_'8743''45'conical'691'_3636 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'conical'691'_3636 = erased
-- Data.Bool.Properties.∧-conical
d_'8743''45'conical_3638 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'conical_3638
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3640 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_3640 = erased
-- Data.Bool.Properties.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3650 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_3650 = erased
-- Data.Bool.Properties.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3658 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3658
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3660 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_3660 = erased
-- Data.Bool.Properties.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3670 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_3670 = erased
-- Data.Bool.Properties.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3678 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3678
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-abs-∨
d_'8743''45'abs'45''8744'_3680 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'abs'45''8744'_3680 = erased
-- Data.Bool.Properties.∨-abs-∧
d_'8744''45'abs'45''8743'_3686 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'abs'45''8743'_3686 = erased
-- Data.Bool.Properties.∨-∧-absorptive
d_'8744''45''8743''45'absorptive_3692 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'absorptive_3692
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-isMagma
d_'8743''45'isMagma_3694 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8743''45'isMagma_3694
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Bool.Properties.∧-magma
d_'8743''45'magma_3696 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8743''45'magma_3696
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isMagma_3694
-- Data.Bool.Properties.∧-isSemigroup
d_'8743''45'isSemigroup_3698 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8743''45'isSemigroup_3698
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'8743''45'isMagma_3694) erased
-- Data.Bool.Properties.∧-semigroup
d_'8743''45'semigroup_3700 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8743''45'semigroup_3700
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemigroup_3698
-- Data.Bool.Properties.∧-isBand
d_'8743''45'isBand_3702 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8743''45'isBand_3702
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_566
      (coe d_'8743''45'isSemigroup_3698) erased
-- Data.Bool.Properties.∧-band
d_'8743''45'band_3704 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8743''45'band_3704
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_682
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isBand_3702
-- Data.Bool.Properties.∧-isSemilattice
d_'8743''45'isSemilattice_3706 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8743''45'isSemilattice_3706
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_662
      (coe d_'8743''45'isBand_3702) erased
-- Data.Bool.Properties.∧-semilattice
d_'8743''45'semilattice_3708 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3708
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_84
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemilattice_3706
-- Data.Bool.Properties.∧-isMonoid
d_'8743''45'isMonoid_3710 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8743''45'isMonoid_3710
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'8743''45'isSemigroup_3698) (coe d_'8743''45'identity_3610)
-- Data.Bool.Properties.∧-isCommutativeMonoid
d_'8743''45'isCommutativeMonoid_3712 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8743''45'isCommutativeMonoid_3712
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'8743''45'isMonoid_3710) erased
-- Data.Bool.Properties.∧-commutativeMonoid
d_'8743''45'commutativeMonoid_3714 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'8743''45'commutativeMonoid_3714
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isCommutativeMonoid_3712
-- Data.Bool.Properties.∧-isIdempotentCommutativeMonoid
d_'8743''45'isIdempotentCommutativeMonoid_3716 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_886
d_'8743''45'isIdempotentCommutativeMonoid_3716
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_952
      (coe d_'8743''45'isCommutativeMonoid_3712) erased
-- Data.Bool.Properties.∧-idempotentCommutativeMonoid
d_'8743''45'idempotentCommutativeMonoid_3718 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186
d_'8743''45'idempotentCommutativeMonoid_3718
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1296
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isIdempotentCommutativeMonoid_3716
-- Data.Bool.Properties.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_3720 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'8744''45''8743''45'isSemiring_3720
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1742
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe d_'8744''45'isCommutativeMonoid_3586) erased erased
         (coe d_'8743''45'identity_3610)
         (coe d_'8743''45'distrib'45''8744'_3658))
      (coe d_'8743''45'zero_3616)
-- Data.Bool.Properties.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_3722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'8744''45''8743''45'isCommutativeSemiring_3722
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe d_'8744''45''8743''45'isSemiring_3720) erased
-- Data.Bool.Properties.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_3724 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'8744''45''8743''45'commutativeSemiring_3724
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8744''45''8743''45'isCommutativeSemiring_3722
-- Data.Bool.Properties.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_3726 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'8743''45''8744''45'isSemiring_3726
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1742
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe d_'8743''45'isCommutativeMonoid_3712) erased erased
         (coe d_'8744''45'identity_3538)
         (coe d_'8744''45'distrib'45''8743'_3678))
      (coe d_'8744''45'zero_3544)
-- Data.Bool.Properties.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_3728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'8743''45''8744''45'isCommutativeSemiring_3728
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe d_'8743''45''8744''45'isSemiring_3726) erased
-- Data.Bool.Properties.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_3730 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'8743''45''8744''45'commutativeSemiring_3730
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8743''45''8744''45'isCommutativeSemiring_3728
-- Data.Bool.Properties.∨-∧-isLattice
d_'8744''45''8743''45'isLattice_3732 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8744''45''8743''45'isLattice_3732
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_constructor_3376
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased erased erased erased erased erased
      (coe d_'8744''45''8743''45'absorptive_3692)
-- Data.Bool.Properties.∨-∧-lattice
d_'8744''45''8743''45'lattice_3734 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8744''45''8743''45'lattice_3734
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_592
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isLattice_3732
-- Data.Bool.Properties.∨-∧-isDistributiveLattice
d_'8744''45''8743''45'isDistributiveLattice_3736 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8744''45''8743''45'isDistributiveLattice_3736
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_constructor_3448
      (coe d_'8744''45''8743''45'isLattice_3732)
      (coe d_'8744''45'distrib'45''8743'_3678)
      (coe d_'8743''45'distrib'45''8744'_3658)
-- Data.Bool.Properties.∨-∧-distributiveLattice
d_'8744''45''8743''45'distributiveLattice_3738 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8744''45''8743''45'distributiveLattice_3738
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_692
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isDistributiveLattice_3736
-- Data.Bool.Properties.∨-∧-isBooleanAlgebra
d_'8744''45''8743''45'isBooleanAlgebra_3740 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460
d_'8744''45''8743''45'isBooleanAlgebra_3740
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_constructor_3550
      (coe d_'8744''45''8743''45'isDistributiveLattice_3736)
      (coe d_'8744''45'inverse_3552) (coe d_'8743''45'inverse_3624)
      erased
-- Data.Bool.Properties.∨-∧-booleanAlgebra
d_'8744''45''8743''45'booleanAlgebra_3742 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698
d_'8744''45''8743''45'booleanAlgebra_3742
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_822
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d_not_22
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45''8743''45'isBooleanAlgebra_3740
-- Data.Bool.Properties.not-involutive
d_not'45'involutive_3744 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'involutive_3744 = erased
-- Data.Bool.Properties.not-injective
d_not'45'injective_3750 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'injective_3750 = erased
-- Data.Bool.Properties.not-¬
d_not'45''172'_3760 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_not'45''172'_3760 = erased
-- Data.Bool.Properties.¬-not
d_'172''45'not_3766 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'not_3766 = erased
-- Data.Bool.Properties.xor-is-ok
d_xor'45'is'45'ok_3776 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'is'45'ok_3776 = erased
-- Data.Bool.Properties.true-xor
d_true'45'xor_3784 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_true'45'xor_3784 = erased
-- Data.Bool.Properties.xor-same
d_xor'45'same_3788 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'same_3788 = erased
-- Data.Bool.Properties.not-distribˡ-xor
d_not'45'distrib'737''45'xor_3794 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'distrib'737''45'xor_3794 = erased
-- Data.Bool.Properties.not-distribʳ-xor
d_not'45'distrib'691''45'xor_3804 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'distrib'691''45'xor_3804 = erased
-- Data.Bool.Properties.xor-assoc
d_xor'45'assoc_3810 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'assoc_3810 = erased
-- Data.Bool.Properties.xor-comm
d_xor'45'comm_3820 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'comm_3820 = erased
-- Data.Bool.Properties.xor-identityˡ
d_xor'45'identity'737'_3822 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'identity'737'_3822 = erased
-- Data.Bool.Properties.xor-identityʳ
d_xor'45'identity'691'_3824 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'identity'691'_3824 = erased
-- Data.Bool.Properties.xor-identity
d_xor'45'identity_3826 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_xor'45'identity_3826
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.xor-inverseˡ
d_xor'45'inverse'737'_3828 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'inverse'737'_3828 = erased
-- Data.Bool.Properties.xor-inverseʳ
d_xor'45'inverse'691'_3830 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'inverse'691'_3830 = erased
-- Data.Bool.Properties.xor-inverse
d_xor'45'inverse_3834 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_xor'45'inverse_3834
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-distribˡ-xor
d_'8743''45'distrib'737''45'xor_3836 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45'xor_3836 = erased
-- Data.Bool.Properties.∧-distribʳ-xor
d_'8743''45'distrib'691''45'xor_3846 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45'xor_3846 = erased
-- Data.Bool.Properties.∧-distrib-xor
d_'8743''45'distrib'45'xor_3856 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45'xor_3856
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.xor-annihilates-not
d_xor'45'annihilates'45'not_3862 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'annihilates'45'not_3862 = erased
-- Data.Bool.Properties.xor-∧-commutativeRing
d_xor'45''8743''45'commutativeRing_3868 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
d_xor'45''8743''45'commutativeRing_3868
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.BooleanAlgebra.du_'8853''45''8743''45'commutativeRing_4066
      (coe d_'8744''45''8743''45'booleanAlgebra_3742)
      (coe MAlonzo.Code.Data.Bool.Base.d__xor__36) erased
-- Data.Bool.Properties.if-float
d_if'45'float_4158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'float_4158 = erased
-- Data.Bool.Properties.if-eta
d_if'45'eta_4164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'eta_4164 = erased
-- Data.Bool.Properties.if-idem-then
d_if'45'idem'45'then_4172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'idem'45'then_4172 = erased
-- Data.Bool.Properties.if-idem-else
d_if'45'idem'45'else_4180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'idem'45'else_4180 = erased
-- Data.Bool.Properties.if-swap-then
d_if'45'swap'45'then_4190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'swap'45'then_4190 = erased
-- Data.Bool.Properties.if-swap-else
d_if'45'swap'45'else_4200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'swap'45'else_4200 = erased
-- Data.Bool.Properties.if-not
d_if'45'not_4208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'not_4208 = erased
-- Data.Bool.Properties.if-∧
d_if'45''8743'_4218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45''8743'_4218 = erased
-- Data.Bool.Properties.if-∨
d_if'45''8744'_4228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45''8744'_4228 = erased
-- Data.Bool.Properties.if-xor
d_if'45'xor_4238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'xor_4238 = erased
-- Data.Bool.Properties.if-cong
d_if'45'cong_4248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'cong_4248 = erased
-- Data.Bool.Properties.if-cong-then
d_if'45'cong'45'then_4258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'cong'45'then_4258 = erased
-- Data.Bool.Properties.if-cong-else
d_if'45'cong'45'else_4268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'cong'45'else_4268 = erased
-- Data.Bool.Properties.if-cong₂
d_if'45'cong'8322'_4280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'cong'8322'_4280 = erased
-- Data.Bool.Properties.¬T-≡
d_'172'T'45''8801'_4284 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'172'T'45''8801'_4284 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
             (\ v1 ->
                coe
                  MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
             erased
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
             (let v1 = \ v1 -> v1 in coe (coe (\ v2 -> v1)))
-- Data.Bool.Properties.T-≡
d_T'45''8801'_4288 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_T'45''8801'_4288 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v2 -> v1)))
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased erased
-- Data.Bool.Properties.T-not-≡
d_T'45'not'45''8801'_4292 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_T'45'not'45''8801'_4292 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased erased
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v2 -> v1)))
-- Data.Bool.Properties.T-∧
d_T'45''8743'_4298 ::
  Bool -> Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_T'45''8743'_4298 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                    (let v2
                           = coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                     coe (coe (\ v3 -> v2)))
                    (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                     coe (coe (\ v3 -> v2)))
             else coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
                    (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
             (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Data.Bool.Properties.T-∨
d_T'45''8744'_4304 ::
  Bool -> Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_T'45''8744'_4304 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
             (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
             (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v3 -> v2)))
      else (if coe v1
              then coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                     (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                      coe (coe (\ v3 -> v2)))
              else coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                     (coe
                        MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52 (coe (\ v2 -> v2))
                        (coe (\ v2 -> v2))))
-- Data.Bool.Properties.T-irrelevant
d_T'45'irrelevant_4306 ::
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_T'45'irrelevant_4306 = erased
-- Data.Bool.Properties.T?-diag
d_T'63''45'diag_4310 :: Bool -> AgdaAny -> AgdaAny
d_T'63''45'diag_4310 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_fromWitness_150
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
            (coe v0)))
-- Data.Bool.Properties.⇔→≡
d_'8660''8594''8801'_4320 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8660''8594''8801'_4320 = erased
-- Data.Bool.Properties.push-function-into-if
d_push'45'function'45'into'45'if_4334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_push'45'function'45'into'45'if_4334 = erased
