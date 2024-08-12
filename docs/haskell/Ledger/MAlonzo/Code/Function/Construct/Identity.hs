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
-- Function.Construct.Identity._.isCongruent
d_isCongruent_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_736 ~v0 ~v1 ~v2 ~v3 v4 = du_isCongruent_736 v4
du_isCongruent_736 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_736 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe (\ v1 v2 v3 -> v3)) (coe v0) (coe v0)
-- Function.Construct.Identity._.isInjection
d_isInjection_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_92
d_isInjection_738 ~v0 ~v1 ~v2 ~v3 v4 = du_isInjection_738 v4
du_isInjection_738 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_92
du_isInjection_738 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsInjection'46'constructor_3991
      (coe du_isCongruent_736 (coe v0)) (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.isSurjection
d_isSurjection_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_162
d_isSurjection_740 ~v0 ~v1 ~v2 ~v3 v4 = du_isSurjection_740 v4
du_isSurjection_740 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_162
du_isSurjection_740 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsSurjection'46'constructor_6455
      (coe du_isCongruent_736 (coe v0)) (coe du_surjective_26)
-- Function.Construct.Identity._.isBijection
d_isBijection_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_238
d_isBijection_742 ~v0 ~v1 ~v2 ~v3 v4 = du_isBijection_742 v4
du_isBijection_742 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_238
du_isBijection_742 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsBijection'46'constructor_10103
      (coe du_isInjection_738 (coe v0)) (coe du_surjective_26)
-- Function.Construct.Identity._.isLeftInverse
d_isLeftInverse_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_322
d_isLeftInverse_744 ~v0 ~v1 ~v2 ~v3 v4 = du_isLeftInverse_744 v4
du_isLeftInverse_744 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_322
du_isLeftInverse_744 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsLeftInverse'46'constructor_14351
      (coe du_isCongruent_736 (coe v0)) (coe (\ v1 v2 v3 -> v3))
      (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.isRightInverse
d_isRightInverse_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_408
d_isRightInverse_746 ~v0 ~v1 ~v2 ~v3 v4 = du_isRightInverse_746 v4
du_isRightInverse_746 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_408
du_isRightInverse_746 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsRightInverse'46'constructor_18819
      (coe du_isCongruent_736 (coe v0)) (coe (\ v1 v2 v3 -> v3))
      (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.isInverse
d_isInverse_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_490
d_isInverse_748 ~v0 ~v1 ~v2 ~v3 v4 = du_isInverse_748 v4
du_isInverse_748 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_490
du_isInverse_748 v0
  = coe
      MAlonzo.Code.Function.Structures.C_IsInverse'46'constructor_22425
      (coe du_isLeftInverse_744 (coe v0)) (coe (\ v1 v2 v3 -> v3))
-- Function.Construct.Identity._.function
d_function_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
d_function_782 ~v0 ~v1 ~v2 = du_function_782
du_function_782 :: MAlonzo.Code.Function.Bundles.T_Func_714
du_function_782
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6307
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.injection
d_injection_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776
d_injection_784 ~v0 ~v1 ~v2 = du_injection_784
du_injection_784 :: MAlonzo.Code.Function.Bundles.T_Injection_776
du_injection_784
  = coe
      MAlonzo.Code.Function.Bundles.C_Injection'46'constructor_8673
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.surjection
d_surjection_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_846
d_surjection_786 ~v0 ~v1 ~v2 = du_surjection_786
du_surjection_786 :: MAlonzo.Code.Function.Bundles.T_Surjection_846
du_surjection_786
  = coe
      MAlonzo.Code.Function.Bundles.C_Surjection'46'constructor_11189
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2)) (coe du_surjective_26)
-- Function.Construct.Identity._.bijection
d_bijection_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_926
d_bijection_788 ~v0 ~v1 ~v2 = du_bijection_788
du_bijection_788 :: MAlonzo.Code.Function.Bundles.T_Bijection_926
du_bijection_788
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15263
      (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2)) (coe du_bijective_30)
-- Function.Construct.Identity._.equivalence
d_equivalence_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_equivalence_790 ~v0 ~v1 ~v2 = du_equivalence_790
du_equivalence_790 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_equivalence_790
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_25777
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.leftInverse
d_leftInverse_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
d_leftInverse_792 ~v0 ~v1 ~v2 = du_leftInverse_792
du_leftInverse_792 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
du_leftInverse_792
  = coe
      MAlonzo.Code.Function.Bundles.C_LeftInverse'46'constructor_29743
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.rightInverse
d_rightInverse_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1880
d_rightInverse_794 ~v0 ~v1 ~v2 = du_rightInverse_794
du_rightInverse_794 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1880
du_rightInverse_794
  = coe
      MAlonzo.Code.Function.Bundles.C_RightInverse'46'constructor_34521
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Function.Construct.Identity._.inverse
d_inverse_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_inverse_796 ~v0 ~v1 ~v2 = du_inverse_796
du_inverse_796 :: MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_inverse_796
  = coe
      MAlonzo.Code.Function.Bundles.C_Inverse'46'constructor_38549
      (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2)) (coe du_inverse'7495'_36)
-- Function.Construct.Identity._.⟶-id
d_'10230''45'id_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Func_714
d_'10230''45'id_806 ~v0 ~v1 = du_'10230''45'id_806
du_'10230''45'id_806 :: MAlonzo.Code.Function.Bundles.T_Func_714
du_'10230''45'id_806 = coe du_function_782
-- Function.Construct.Identity._.↣-id
d_'8611''45'id_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Injection_776
d_'8611''45'id_808 ~v0 ~v1 = du_'8611''45'id_808
du_'8611''45'id_808 ::
  MAlonzo.Code.Function.Bundles.T_Injection_776
du_'8611''45'id_808 = coe du_injection_784
-- Function.Construct.Identity._.↠-id
d_'8608''45'id_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Surjection_846
d_'8608''45'id_810 ~v0 ~v1 = du_'8608''45'id_810
du_'8608''45'id_810 ::
  MAlonzo.Code.Function.Bundles.T_Surjection_846
du_'8608''45'id_810 = coe du_surjection_786
-- Function.Construct.Identity._.⤖-id
d_'10518''45'id_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Bijection_926
d_'10518''45'id_812 ~v0 ~v1 = du_'10518''45'id_812
du_'10518''45'id_812 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_926
du_'10518''45'id_812 = coe du_bijection_788
-- Function.Construct.Identity._.⇔-id
d_'8660''45'id_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8660''45'id_814 ~v0 ~v1 = du_'8660''45'id_814
du_'8660''45'id_814 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8660''45'id_814 = coe du_equivalence_790
-- Function.Construct.Identity._.↩-id
d_'8617''45'id_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
d_'8617''45'id_816 ~v0 ~v1 = du_'8617''45'id_816
du_'8617''45'id_816 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
du_'8617''45'id_816 = coe du_leftInverse_792
-- Function.Construct.Identity._.↪-id
d_'8618''45'id_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_RightInverse_1880
d_'8618''45'id_818 ~v0 ~v1 = du_'8618''45'id_818
du_'8618''45'id_818 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1880
du_'8618''45'id_818 = coe du_rightInverse_794
-- Function.Construct.Identity._.↔-id
d_'8596''45'id_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8596''45'id_820 ~v0 ~v1 = du_'8596''45'id_820
du_'8596''45'id_820 :: MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8596''45'id_820 = coe du_inverse_796
-- Function.Construct.Identity.id-⟶
d_id'45''10230'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Func_714
d_id'45''10230'_822 v0 v1 = coe du_'10230''45'id_806
-- Function.Construct.Identity.id-↣
d_id'45''8611'_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Injection_776
d_id'45''8611'_824 v0 v1 = coe du_'8611''45'id_808
-- Function.Construct.Identity.id-↠
d_id'45''8608'_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Surjection_846
d_id'45''8608'_826 v0 v1 = coe du_'8608''45'id_810
-- Function.Construct.Identity.id-⤖
d_id'45''10518'_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Bijection_926
d_id'45''10518'_828 v0 v1 = coe du_'10518''45'id_812
-- Function.Construct.Identity.id-⇔
d_id'45''8660'_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_id'45''8660'_830 v0 v1 = coe du_'8660''45'id_814
-- Function.Construct.Identity.id-↩
d_id'45''8617'_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
d_id'45''8617'_832 v0 v1 = coe du_'8617''45'id_816
-- Function.Construct.Identity.id-↪
d_id'45''8618'_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_RightInverse_1880
d_id'45''8618'_834 v0 v1 = coe du_'8618''45'id_818
-- Function.Construct.Identity.id-↔
d_id'45''8596'_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_id'45''8596'_836 v0 v1 = coe du_'8596''45'id_820
