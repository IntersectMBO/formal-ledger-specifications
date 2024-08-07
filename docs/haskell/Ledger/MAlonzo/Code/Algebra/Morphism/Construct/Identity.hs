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

module MAlonzo.Code.Algebra.Morphism.Construct.Identity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_40 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_42 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_44 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isMagmaHomomorphism
d_isMagmaHomomorphism_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_88 ~v0 ~v1 v2 v3
  = du_isMagmaHomomorphism_88 v2 v3
du_isMagmaHomomorphism_88 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
du_isMagmaHomomorphism_88 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__26 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isMagmaMonomorphism
d_isMagmaMonomorphism_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_94 ~v0 ~v1 v2 v3
  = du_isMagmaMonomorphism_94 v2 v3
du_isMagmaMonomorphism_94 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_94 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaMonomorphism'46'constructor_1873
      (coe du_isMagmaHomomorphism_88 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMagmaIsomorphism
d_isMagmaIsomorphism_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_96 ~v0 ~v1 v2 v3
  = du_isMagmaIsomorphism_96 v2 v3
du_isMagmaIsomorphism_96 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaIsomorphism'46'constructor_3307
      (coe du_isMagmaMonomorphism_94 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_130 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_132 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_134 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isMonoidHomomorphism
d_isMonoidHomomorphism_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_196 ~v0 ~v1 v2 v3
  = du_isMonoidHomomorphism_196 v2 v3
du_isMonoidHomomorphism_196 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
du_isMonoidHomomorphism_196 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe
         du_isMagmaHomomorphism_88
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_58 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isMonoidMonomorphism
d_isMonoidMonomorphism_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_198 ~v0 ~v1 v2 v3
  = du_isMonoidMonomorphism_198 v2 v3
du_isMonoidMonomorphism_198 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
du_isMonoidMonomorphism_198 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_6341
      (coe du_isMonoidHomomorphism_196 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMonoidIsomorphism
d_isMonoidIsomorphism_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288
d_isMonoidIsomorphism_200 ~v0 ~v1 v2 v3
  = du_isMonoidIsomorphism_200 v2 v3
du_isMonoidIsomorphism_200 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288
du_isMonoidIsomorphism_200 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidIsomorphism'46'constructor_7699
      (coe du_isMonoidMonomorphism_198 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism
d_IsGroupHomomorphism_238 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism
d_IsGroupIsomorphism_240 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism
d_IsGroupMonomorphism_242 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isGroupHomomorphism
d_isGroupHomomorphism_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_506
d_isGroupHomomorphism_322 ~v0 ~v1 v2 v3
  = du_isGroupHomomorphism_322 v2 v3
du_isGroupHomomorphism_322 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_506
du_isGroupHomomorphism_322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupHomomorphism'46'constructor_10685
      (coe
         du_isMonoidHomomorphism_196
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_94 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isGroupMonomorphism
d_isGroupMonomorphism_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_532
d_isGroupMonomorphism_326 ~v0 ~v1 v2 v3
  = du_isGroupMonomorphism_326 v2 v3
du_isGroupMonomorphism_326 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_532
du_isGroupMonomorphism_326 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupMonomorphism'46'constructor_11635
      (coe du_isGroupHomomorphism_322 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isGroupIsomorphism
d_isGroupIsomorphism_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_570
d_isGroupIsomorphism_328 ~v0 ~v1 v2 v3
  = du_isGroupIsomorphism_328 v2 v3
du_isGroupIsomorphism_328 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_570
du_isGroupIsomorphism_328 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupIsomorphism'46'constructor_13169
      (coe du_isGroupMonomorphism_326 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_368 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_370 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_372 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_800
d_isNearSemiringHomomorphism_464 ~v0 ~v1 v2 v3
  = du_isNearSemiringHomomorphism_464 v2 v3
du_isNearSemiringHomomorphism_464 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_800
du_isNearSemiringHomomorphism_464 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringHomomorphism'46'constructor_16083
      (coe
         du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_828
d_isNearSemiringMonomorphism_470 ~v0 ~v1 v2 v3
  = du_isNearSemiringMonomorphism_470 v2 v3
du_isNearSemiringMonomorphism_470 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_828
du_isNearSemiringMonomorphism_470 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringMonomorphism'46'constructor_17211
      (coe du_isNearSemiringHomomorphism_464 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_870
d_isNearSemiringIsomorphism_472 ~v0 ~v1 v2 v3
  = du_isNearSemiringIsomorphism_472 v2 v3
du_isNearSemiringIsomorphism_472 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_870
du_isNearSemiringIsomorphism_472 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringIsomorphism'46'constructor_19097
      (coe du_isNearSemiringMonomorphism_470 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_518 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_520 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_522 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isSemiringHomomorphism
d_isSemiringHomomorphism_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1166
d_isSemiringHomomorphism_632 ~v0 ~v1 v2 v3
  = du_isSemiringHomomorphism_632 v2 v3
du_isSemiringHomomorphism_632 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1166
du_isSemiringHomomorphism_632 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringHomomorphism'46'constructor_22649
      (coe
         du_isNearSemiringHomomorphism_464
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_176 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isSemiringMonomorphism
d_isSemiringMonomorphism_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1200
d_isSemiringMonomorphism_634 ~v0 ~v1 v2 v3
  = du_isSemiringMonomorphism_634 v2 v3
du_isSemiringMonomorphism_634 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1200
du_isSemiringMonomorphism_634 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringMonomorphism'46'constructor_23957
      (coe du_isSemiringHomomorphism_632 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isSemiringIsomorphism
d_isSemiringIsomorphism_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1248
d_isSemiringIsomorphism_636 ~v0 ~v1 v2 v3
  = du_isSemiringIsomorphism_636 v2 v3
du_isSemiringIsomorphism_636 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1248
du_isSemiringIsomorphism_636 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringIsomorphism'46'constructor_26015
      (coe du_isSemiringMonomorphism_634 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_680 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_682 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_684 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1516
d_isRingWithoutOneHomomorphism_794 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneHomomorphism_794 v2 v3
du_isRingWithoutOneHomomorphism_794 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1516
du_isRingWithoutOneHomomorphism_794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneHomomorphism'46'constructor_29515
      (coe
         du_isGroupHomomorphism_322
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__220 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1548
d_isRingWithoutOneMonomorphism_800 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneMonomorphism_800 v2 v3
du_isRingWithoutOneMonomorphism_800 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1548
du_isRingWithoutOneMonomorphism_800 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneMonomorphism'46'constructor_30771
      (coe du_isRingWithoutOneHomomorphism_794 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneIsoMorphism
d_isRingWithoutOneIsoMorphism_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1596
d_isRingWithoutOneIsoMorphism_802 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneIsoMorphism_802 v2 v3
du_isRingWithoutOneIsoMorphism_802 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_196 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1596
du_isRingWithoutOneIsoMorphism_802 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneIsoMorphism'46'constructor_32833
      (coe du_isRingWithoutOneMonomorphism_800 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism
d_IsRingHomomorphism_854 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism
d_IsRingIsomorphism_856 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism
d_IsRingMonomorphism_858 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isRingHomomorphism
d_isRingHomomorphism_1140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2016
d_isRingHomomorphism_1140 ~v0 ~v1 v2 v3
  = du_isRingHomomorphism_1140 v2 v3
du_isRingHomomorphism_1140 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2016
du_isRingHomomorphism_1140 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingHomomorphism'46'constructor_37523
      (coe
         du_isSemiringHomomorphism_632
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isRingMonomorphism
d_isRingMonomorphism_1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056
d_isRingMonomorphism_1144 ~v0 ~v1 v2 v3
  = du_isRingMonomorphism_1144 v2 v3
du_isRingMonomorphism_1144 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056
du_isRingMonomorphism_1144 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingMonomorphism'46'constructor_39007
      (coe du_isRingHomomorphism_1140 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingIsomorphism
d_isRingIsomorphism_1146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2118
d_isRingIsomorphism_1146 ~v0 ~v1 v2 v3
  = du_isRingIsomorphism_1146 v2 v3
du_isRingIsomorphism_1146 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2118
du_isRingIsomorphism_1146 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingIsomorphism'46'constructor_41689
      (coe du_isRingMonomorphism_1144 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_1186 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_1188 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_1190 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2406
d_isQuasigroupHomomorphism_1432 ~v0 ~v1 v2 v3
  = du_isQuasigroupHomomorphism_1432 v2 v3
du_isQuasigroupHomomorphism_1432 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2406
du_isQuasigroupHomomorphism_1432 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupHomomorphism'46'constructor_46241
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__320 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__322 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__324 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2438
d_isQuasigroupMonomorphism_1446 ~v0 ~v1 v2 v3
  = du_isQuasigroupMonomorphism_1446 v2 v3
du_isQuasigroupMonomorphism_1446 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2438
du_isQuasigroupMonomorphism_1446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupMonomorphism'46'constructor_48025
      (coe du_isQuasigroupHomomorphism_1432 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupIsomorphism
d_isQuasigroupIsomorphism_1448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2480
d_isQuasigroupIsomorphism_1448 ~v0 ~v1 v2 v3
  = du_isQuasigroupIsomorphism_1448 v2 v3
du_isQuasigroupIsomorphism_1448 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_300 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2480
du_isQuasigroupIsomorphism_1448 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupIsomorphism'46'constructor_50143
      (coe du_isQuasigroupMonomorphism_1446 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism
d_IsLoopHomomorphism_1492 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism
d_IsLoopIsomorphism_1494 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism
d_IsLoopMonomorphism_1496 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isLoopHomomorphism
d_isLoopHomomorphism_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2854
d_isLoopHomomorphism_1576 ~v0 ~v1 v2 v3
  = du_isLoopHomomorphism_1576 v2 v3
du_isLoopHomomorphism_1576 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2854
du_isLoopHomomorphism_1576 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopHomomorphism'46'constructor_54343
      (coe
         du_isQuasigroupHomomorphism_1432
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_370 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_368 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isLoopMonomorphism
d_isLoopMonomorphism_1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_2886
d_isLoopMonomorphism_1578 ~v0 ~v1 v2 v3
  = du_isLoopMonomorphism_1578 v2 v3
du_isLoopMonomorphism_1578 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_2886
du_isLoopMonomorphism_1578 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopMonomorphism'46'constructor_55451
      (coe du_isLoopHomomorphism_1576 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isLoopIsomorphism
d_isLoopIsomorphism_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_2922
d_isLoopIsomorphism_1580 ~v0 ~v1 v2 v3
  = du_isLoopIsomorphism_1580 v2 v3
du_isLoopIsomorphism_1580 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_340 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_2922
du_isLoopIsomorphism_1580 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopIsomorphism'46'constructor_56693
      (coe du_isLoopMonomorphism_1578 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism
d_IsKleeneAlgebraHomomorphism_1628 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism
d_IsKleeneAlgebraIsomorphism_1630 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism
d_IsKleeneAlgebraMonomorphism_1632 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3158
d_isKleeneAlgebraHomomorphism_1730 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraHomomorphism_1730 v2 v3
du_isKleeneAlgebraHomomorphism_1730 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3158
du_isKleeneAlgebraHomomorphism_1730 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraHomomorphism'46'constructor_59175
      (coe
         du_isSemiringHomomorphism_632
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_420 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8902'_414 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3196
d_isKleeneAlgebraMonomorphism_1734 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraMonomorphism_1734 v2 v3
du_isKleeneAlgebraMonomorphism_1734 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3196
du_isKleeneAlgebraMonomorphism_1734 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraMonomorphism'46'constructor_60477
      (coe du_isKleeneAlgebraHomomorphism_1730 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraIsomorphism
d_isKleeneAlgebraIsomorphism_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3238
d_isKleeneAlgebraIsomorphism_1736 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraIsomorphism_1736 v2 v3
du_isKleeneAlgebraIsomorphism_1736 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_386 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3238
du_isKleeneAlgebraIsomorphism_1736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraIsomorphism'46'constructor_61915
      (coe du_isKleeneAlgebraMonomorphism_1734 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
