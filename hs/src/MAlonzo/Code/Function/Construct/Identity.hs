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

module MAlonzo.Code.Function.Construct.Identity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Construct.Identity._.congruent
d_congruent_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_congruent_22 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_congruent_22 v6
du_congruent_22 :: AgdaAny -> AgdaAny
du_congruent_22 v0 = coe v0
-- Function.Construct.Identity._.injective
d_injective_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_24 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_injective_24 v6
du_injective_24 :: AgdaAny -> AgdaAny
du_injective_24 v0 = coe v0
-- Function.Construct.Identity._.surjective
d_surjective_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_26 ~v0 ~v1 ~v2 ~v3 v4 = du_surjective_26 v4
du_surjective_26 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_surjective_26 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe (\ v1 v2 -> v2))
-- Function.Construct.Identity._.bijective
d_bijective_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bijective_30 ~v0 ~v1 ~v2 ~v3 = du_bijective_30
du_bijective_30 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bijective_30
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 -> v2)) (coe du_surjective_26)
-- Function.Construct.Identity._.inverseˡ
d_inverse'737'_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_32 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_inverse'737'_32 v6
du_inverse'737'_32 :: AgdaAny -> AgdaAny
du_inverse'737'_32 v0 = coe v0
-- Function.Construct.Identity._.inverseʳ
d_inverse'691'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_34 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_inverse'691'_34 v6
du_inverse'691'_34 :: AgdaAny -> AgdaAny
du_inverse'691'_34 v0 = coe v0
-- Function.Construct.Identity._.inverseᵇ
d_inverse'7495'_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse'7495'_36 ~v0 ~v1 ~v2 ~v3 = du_inverse'7495'_36
du_inverse'7495'_36 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse'7495'_36
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._._.IsBijection
d_IsBijection_56 a0 a1 a2 a3 a4 a5 = ()
-- Function.Construct.Identity._._.IsCongruent
d_IsCongruent_58 a0 a1 a2 a3 a4 a5 = ()
-- Function.Construct.Identity._._.IsInjection
d_IsInjection_60 a0 a1 a2 a3 a4 a5 = ()
-- Function.Construct.Identity._._.IsInverse
d_IsInverse_62 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Construct.Identity._._.IsLeftInverse
d_IsLeftInverse_64 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Construct.Identity._._.IsRightInverse
d_IsRightInverse_66 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Construct.Identity._._.IsSurjection
d_IsSurjection_70 a0 a1 a2 a3 a4 a5 = ()
-- Function.Construct.Identity._._.IsBijection.isInjection
d_isInjection_222 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_222 v0
  = coe MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0)
-- Function.Construct.Identity._._.IsBijection.surjective
d_surjective_228 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_228 v0
  = coe MAlonzo.Code.Function.Structures.d_surjective_260 (coe v0)
-- Function.Construct.Identity._._.IsCongruent.cong
d_cong_284 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_284 v0
  = coe MAlonzo.Code.Function.Structures.d_cong_32 (coe v0)
-- Function.Construct.Identity._._.IsCongruent.isEquivalence₁
d_isEquivalence'8321'_286 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_286 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0)
-- Function.Construct.Identity._._.IsCongruent.isEquivalence₂
d_isEquivalence'8322'_288 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_288 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0)
-- Function.Construct.Identity._._.IsInjection.injective
d_injective_346 ::
  MAlonzo.Code.Function.Structures.T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_346 v0
  = coe MAlonzo.Code.Function.Structures.d_injective_106 (coe v0)
-- Function.Construct.Identity._._.IsInjection.isCongruent
d_isCongruent_348 ::
  MAlonzo.Code.Function.Structures.T_IsInjection_96 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_348 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v0)
-- Function.Construct.Identity._._.IsInverse.inverseʳ
d_inverse'691'_412 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_412 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_526 (coe v0)
-- Function.Construct.Identity._._.IsInverse.isLeftInverse
d_isLeftInverse_422 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_422 v0
  = coe MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0)
-- Function.Construct.Identity._._.IsLeftInverse.from-cong
d_from'45'cong_488 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_488 v0
  = coe MAlonzo.Code.Function.Structures.d_from'45'cong_352 (coe v0)
-- Function.Construct.Identity._._.IsLeftInverse.inverseˡ
d_inverse'737'_490 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_490 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'737'_354 (coe v0)
-- Function.Construct.Identity._._.IsLeftInverse.isCongruent
d_isCongruent_492 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_492 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0)
-- Function.Construct.Identity._._.IsRightInverse.from-cong
d_from'45'cong_558 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_558 v0
  = coe MAlonzo.Code.Function.Structures.d_from'45'cong_442 (coe v0)
-- Function.Construct.Identity._._.IsRightInverse.inverseʳ
d_inverse'691'_560 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_560 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_444 (coe v0)
-- Function.Construct.Identity._._.IsRightInverse.isCongruent
d_isCongruent_562 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_562 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0)
-- Function.Construct.Identity._._.IsSurjection.isCongruent
d_isCongruent_702 ::
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_702 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_178 (coe v0)
-- Function.Construct.Identity._._.IsSurjection.surjective
d_surjective_710 ::
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_710 v0
  = coe MAlonzo.Code.Function.Structures.d_surjective_180 (coe v0)
-- Function.Construct.Identity._.isCongruent
d_isCongruent_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_776 ~v0 ~v1 ~v2 ~v3 v4 = du_isCongruent_776 v4
du_isCongruent_776 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_776 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe (\ v1 v2 v3 -> v3)) (coe v0) (coe v0)
-- Function.Construct.Identity._.isInjection
d_isInjection_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_778 ~v0 ~v1 ~v2 ~v3 v4 = du_isInjection_778 v4
du_isInjection_778 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
du_isInjection_778 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsInjection'46'constructor_4117
      (coe du_isCongruent_776 (coe v0)) (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.isSurjection
d_isSurjection_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_780 ~v0 ~v1 ~v2 ~v3 v4 = du_isSurjection_780 v4
du_isSurjection_780 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_780 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsSurjection'46'constructor_6703
      (coe du_isCongruent_776 (coe v0)) (coe du_surjective_26)
-- Function.Construct.Identity._.isBijection
d_isBijection_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
d_isBijection_782 ~v0 ~v1 ~v2 ~v3 v4 = du_isBijection_782 v4
du_isBijection_782 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
du_isBijection_782 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsBijection'46'constructor_10473
      (coe du_isInjection_778 (coe v0)) (coe du_surjective_26)
-- Function.Construct.Identity._.isLeftInverse
d_isLeftInverse_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_784 ~v0 ~v1 ~v2 ~v3 v4 = du_isLeftInverse_784 v4
du_isLeftInverse_784 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
du_isLeftInverse_784 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsLeftInverse'46'constructor_14843
      (coe du_isCongruent_776 (coe v0)) (coe (\ v1 v2 v3 -> v3))
      (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.isRightInverse
d_isRightInverse_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
d_isRightInverse_786 ~v0 ~v1 ~v2 ~v3 v4 = du_isRightInverse_786 v4
du_isRightInverse_786 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
du_isRightInverse_786 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsRightInverse'46'constructor_19449
      (coe du_isCongruent_776 (coe v0)) (coe (\ v1 v2 v3 -> v3))
      (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.isInverse
d_isInverse_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514
d_isInverse_788 ~v0 ~v1 ~v2 ~v3 v4 = du_isInverse_788 v4
du_isInverse_788 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514
du_isInverse_788 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsInverse'46'constructor_23193
      (coe du_isLeftInverse_784 (coe v0)) (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.function
d_function_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_function_824 ~v0 ~v1 ~v2 = du_function_824
du_function_824 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_function_824
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.injection
d_injection_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
d_injection_826 ~v0 ~v1 ~v2 = du_injection_826
du_injection_826 :: MAlonzo.Code.Function.Bundles.T_Injection_820
du_injection_826
  = coe
      MAlonzo.Code.Function.Bundles.C_Injection'46'constructor_9107
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.surjection
d_surjection_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
d_surjection_828 ~v0 ~v1 ~v2 = du_surjection_828
du_surjection_828 :: MAlonzo.Code.Function.Bundles.T_Surjection_894
du_surjection_828
  = coe
      MAlonzo.Code.Function.Bundles.C_Surjection'46'constructor_11713
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2)) (coe du_surjective_26)
-- Function.Construct.Identity._.bijection
d_bijection_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_bijection_830 ~v0 ~v1 ~v2 = du_bijection_830
du_bijection_830 :: MAlonzo.Code.Function.Bundles.T_Bijection_978
du_bijection_830
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15877
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2)) (coe du_bijective_30)
-- Function.Construct.Identity._.equivalence
d_equivalence_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_equivalence_832 ~v0 ~v1 ~v2 = du_equivalence_832
du_equivalence_832 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_equivalence_832
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_26829
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.leftInverse
d_leftInverse_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_leftInverse_834 ~v0 ~v1 ~v2 = du_leftInverse_834
du_leftInverse_834 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du_leftInverse_834
  = coe
      MAlonzo.Code.Function.Bundles.C_LeftInverse'46'constructor_30891
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.rightInverse
d_rightInverse_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_rightInverse_836 ~v0 ~v1 ~v2 = du_rightInverse_836
du_rightInverse_836 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du_rightInverse_836
  = coe
      MAlonzo.Code.Function.Bundles.C_RightInverse'46'constructor_35773
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.inverse
d_inverse_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_inverse_838 ~v0 ~v1 ~v2 = du_inverse_838
du_inverse_838 :: MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_inverse_838
  = coe
      MAlonzo.Code.Function.Bundles.C_Inverse'46'constructor_39905
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2)) (coe du_inverse'7495'_36)
-- Function.Construct.Identity._.⟶-id
d_'10230''45'id_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Func_754
d_'10230''45'id_848 ~v0 ~v1 = du_'10230''45'id_848
du_'10230''45'id_848 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_'10230''45'id_848 = coe du_function_824
-- Function.Construct.Identity._.↣-id
d_'8611''45'id_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Injection_820
d_'8611''45'id_850 ~v0 ~v1 = du_'8611''45'id_850
du_'8611''45'id_850 ::
  MAlonzo.Code.Function.Bundles.T_Injection_820
du_'8611''45'id_850 = coe du_injection_826
-- Function.Construct.Identity._.↠-id
d_'8608''45'id_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Surjection_894
d_'8608''45'id_852 ~v0 ~v1 = du_'8608''45'id_852
du_'8608''45'id_852 ::
  MAlonzo.Code.Function.Bundles.T_Surjection_894
du_'8608''45'id_852 = coe du_surjection_828
-- Function.Construct.Identity._.⤖-id
d_'10518''45'id_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Bijection_978
d_'10518''45'id_854 ~v0 ~v1 = du_'10518''45'id_854
du_'10518''45'id_854 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_'10518''45'id_854 = coe du_bijection_830
-- Function.Construct.Identity._.⇔-id
d_'8660''45'id_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8660''45'id_856 ~v0 ~v1 = du_'8660''45'id_856
du_'8660''45'id_856 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8660''45'id_856 = coe du_equivalence_832
-- Function.Construct.Identity._.↩-id
d_'8617''45'id_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_'8617''45'id_858 ~v0 ~v1 = du_'8617''45'id_858
du_'8617''45'id_858 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du_'8617''45'id_858 = coe du_leftInverse_834
-- Function.Construct.Identity._.↪-id
d_'8618''45'id_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_'8618''45'id_860 ~v0 ~v1 = du_'8618''45'id_860
du_'8618''45'id_860 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du_'8618''45'id_860 = coe du_rightInverse_836
-- Function.Construct.Identity._.↔-id
d_'8596''45'id_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8596''45'id_862 ~v0 ~v1 = du_'8596''45'id_862
du_'8596''45'id_862 :: MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8596''45'id_862 = coe du_inverse_838
-- Function.Construct.Identity.id-⟶
d_id'45''10230'_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Func_754
d_id'45''10230'_864 v0 v1 = coe du_'10230''45'id_848
-- Function.Construct.Identity.id-↣
d_id'45''8611'_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Injection_820
d_id'45''8611'_866 v0 v1 = coe du_'8611''45'id_850
-- Function.Construct.Identity.id-↠
d_id'45''8608'_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Surjection_894
d_id'45''8608'_868 v0 v1 = coe du_'8608''45'id_852
-- Function.Construct.Identity.id-⤖
d_id'45''10518'_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Bijection_978
d_id'45''10518'_870 v0 v1 = coe du_'10518''45'id_854
-- Function.Construct.Identity.id-⇔
d_id'45''8660'_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_id'45''8660'_872 v0 v1 = coe du_'8660''45'id_856
-- Function.Construct.Identity.id-↩
d_id'45''8617'_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_id'45''8617'_874 v0 v1 = coe du_'8617''45'id_858
-- Function.Construct.Identity.id-↪
d_id'45''8618'_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_id'45''8618'_876 v0 v1 = coe du_'8618''45'id_860
-- Function.Construct.Identity.id-↔
d_id'45''8596'_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_id'45''8596'_878 v0 v1 = coe du_'8596''45'id_862
