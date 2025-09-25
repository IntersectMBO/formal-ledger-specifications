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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Bundles
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_42 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_46 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_50 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism.homo
d_homo_56 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_56 v0
  = coe MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_58 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_58 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_70 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_70 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_248
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism.surjective
d_surjective_78 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_78 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_250 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism.injective
d_injective_86 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_86 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_224 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_88 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_88 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_222
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isMagmaHomomorphism
d_isMagmaHomomorphism_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_96 ~v0 ~v1 v2 v3
  = du_isMagmaHomomorphism_96 v2 v3
du_isMagmaHomomorphism_96 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_isMagmaHomomorphism_96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_210
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__60 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isMagmaMonomorphism
d_isMagmaMonomorphism_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_102 ~v0 ~v1 v2 v3
  = du_isMagmaMonomorphism_102 v2 v3
du_isMagmaMonomorphism_102 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_102 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_236
      (coe du_isMagmaHomomorphism_96 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMagmaIsomorphism
d_isMagmaIsomorphism_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_104 ~v0 ~v1 v2 v3
  = du_isMagmaIsomorphism_104 v2 v3
du_isMagmaIsomorphism_104 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_104 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_268
      (coe du_isMagmaMonomorphism_102 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_138 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_142 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_146 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny
d_ε'45'homo_158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism.surjective
d_surjective_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism.injective
d_injective_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_200 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isMonoidHomomorphism
d_isMonoidHomomorphism_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_210 ~v0 ~v1 v2 v3
  = du_isMonoidHomomorphism_210 v2 v3
du_isMonoidHomomorphism_210 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
du_isMonoidHomomorphism_210 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_400
      (coe
         du_isMagmaHomomorphism_96
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isMonoidMonomorphism
d_isMonoidMonomorphism_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_212 ~v0 ~v1 v2 v3
  = du_isMonoidMonomorphism_212 v2 v3
du_isMonoidMonomorphism_212 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
du_isMonoidMonomorphism_212 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_434
      (coe du_isMonoidHomomorphism_210 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMonoidIsomorphism
d_isMonoidIsomorphism_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438
d_isMonoidIsomorphism_214 ~v0 ~v1 v2 v3
  = du_isMonoidIsomorphism_214 v2 v3
du_isMonoidIsomorphism_214 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438
du_isMonoidIsomorphism_214 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_476
      (coe du_isMonoidMonomorphism_212 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism
d_IsGroupHomomorphism_252 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism
d_IsGroupIsomorphism_256 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism
d_IsGroupMonomorphism_260 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670 ->
  AgdaAny -> AgdaAny
d_'8315''185''45'homo_276 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_738 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698
d_isGroupMonomorphism_286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupMonomorphism_746
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism.surjective
d_surjective_306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_738 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_748 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism.injective
d_injective_318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_318 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_708 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_320 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
d_isGroupHomomorphism_320 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isGroupHomomorphism
d_isGroupHomomorphism_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
d_isGroupHomomorphism_342 ~v0 ~v1 v2 v3
  = du_isGroupHomomorphism_342 v2 v3
du_isGroupHomomorphism_342 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
du_isGroupHomomorphism_342 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_694
      (coe
         du_isMonoidHomomorphism_210
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isGroupMonomorphism
d_isGroupMonomorphism_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698
d_isGroupMonomorphism_346 ~v0 ~v1 v2 v3
  = du_isGroupMonomorphism_346 v2 v3
du_isGroupMonomorphism_346 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698
du_isGroupMonomorphism_346 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_734
      (coe du_isGroupHomomorphism_342 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isGroupIsomorphism
d_isGroupIsomorphism_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_738
d_isGroupIsomorphism_348 ~v0 ~v1 v2 v3
  = du_isGroupIsomorphism_348 v2 v3
du_isGroupIsomorphism_348 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_738
du_isGroupIsomorphism_348 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_784
      (coe du_isGroupMonomorphism_346 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_388 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_392 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_396 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_992
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'43''45'isMonoidHomomorphism_410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_1056 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_1012
d_isNearSemiringMonomorphism_448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringMonomorphism_1064
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism.surjective
d_surjective_456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1066 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism.injective
d_injective_480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1022 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_1012 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1020
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_490 ~v0 ~v1 v2 v3
  = du_isNearSemiringHomomorphism_490 v2 v3
du_isNearSemiringHomomorphism_490 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
du_isNearSemiringHomomorphism_490 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1008
      (coe
         du_isMonoidHomomorphism_210
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__170 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_1012
d_isNearSemiringMonomorphism_496 ~v0 ~v1 v2 v3
  = du_isNearSemiringMonomorphism_496 v2 v3
du_isNearSemiringMonomorphism_496 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_1012
du_isNearSemiringMonomorphism_496 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1052
      (coe du_isNearSemiringHomomorphism_490 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_1056
d_isNearSemiringIsomorphism_498 ~v0 ~v1 v2 v3
  = du_isNearSemiringIsomorphism_498 v2 v3
du_isNearSemiringIsomorphism_498 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_1056
du_isNearSemiringIsomorphism_498 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1108
      (coe du_isNearSemiringMonomorphism_496 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_544 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_548 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_552 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_572 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366 ->
  AgdaAny
d_1'35''45'homo_572 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1376
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_574 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_574 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1452 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1402
d_isSemiringMonomorphism_622 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringMonomorphism_1460
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism.surjective
d_surjective_624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1452 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_624 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1462 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism.injective
d_injective_652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1402 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_652 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1412 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1402 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_660 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_1410
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isSemiringHomomorphism
d_isSemiringHomomorphism_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_664 ~v0 ~v1 v2 v3
  = du_isSemiringHomomorphism_664 v2 v3
du_isSemiringHomomorphism_664 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
du_isSemiringHomomorphism_664 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1398
      (coe
         du_isNearSemiringHomomorphism_490
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_218 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isSemiringMonomorphism
d_isSemiringMonomorphism_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1402
d_isSemiringMonomorphism_666 ~v0 ~v1 v2 v3
  = du_isSemiringMonomorphism_666 v2 v3
du_isSemiringMonomorphism_666 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1402
du_isSemiringMonomorphism_666 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1448
      (coe du_isSemiringHomomorphism_664 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isSemiringIsomorphism
d_isSemiringIsomorphism_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1452
d_isSemiringIsomorphism_668 ~v0 ~v1 v2 v3
  = du_isSemiringIsomorphism_668 v2 v3
du_isSemiringIsomorphism_668 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1452
du_isSemiringIsomorphism_668 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1510
      (coe du_isSemiringMonomorphism_666 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_714 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_718 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_722 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism.*-homo
d_'42''45'homo_728 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_728 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_1852
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
d_'43''45'isGroupHomomorphism_734 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_794 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1930 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1878
d_isRingWithoutOneMonomorphism_794 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingWithoutOneMonomorphism_1938
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism.surjective
d_surjective_796 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1930 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_796 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1940 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism.injective
d_injective_826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_826 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1888 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1878 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
d_isRingWithoutOneHomomorphism_834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingWithoutOneHomomorphism_1886
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
d_isRingWithoutOneHomomorphism_840 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneHomomorphism_840 v2 v3
du_isRingWithoutOneHomomorphism_840 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
du_isRingWithoutOneHomomorphism_840 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1874
      (coe
         du_isGroupHomomorphism_342
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_282 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__264 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1878
d_isRingWithoutOneMonomorphism_846 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneMonomorphism_846 v2 v3
du_isRingWithoutOneMonomorphism_846 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1878
du_isRingWithoutOneMonomorphism_846 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1926
      (coe du_isRingWithoutOneHomomorphism_840 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneIsoMorphism
d_isRingWithoutOneIsoMorphism_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1930
d_isRingWithoutOneIsoMorphism_848 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneIsoMorphism_848 v2 v3
du_isRingWithoutOneIsoMorphism_848 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1930
du_isRingWithoutOneIsoMorphism_848 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_1992
      (coe du_isRingWithoutOneMonomorphism_846 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism
d_IsRingHomomorphism_900 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism
d_IsRingIsomorphism_904 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism
d_IsRingMonomorphism_908 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism.-‿homo
d_'45''8255'homo_1222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500 ->
  AgdaAny -> AgdaAny
d_'45''8255'homo_1222 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2510
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_1234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism.isRingMonomorphism
d_isRingMonomorphism_1280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2610 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2544
d_isRingMonomorphism_1280 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingMonomorphism_2618
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism.surjective
d_surjective_1290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2610 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_2620 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism.injective
d_injective_1322 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2544 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1322 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2554 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism.isRingHomomorphism
d_isRingHomomorphism_1328 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2544 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500
d_isRingHomomorphism_1328 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2552
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isRingHomomorphism
d_isRingHomomorphism_1338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500
d_isRingHomomorphism_1338 ~v0 ~v1 v2 v3
  = du_isRingHomomorphism_1338 v2 v3
du_isRingHomomorphism_1338 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500
du_isRingHomomorphism_1338 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_2540
      (coe
         du_isSemiringHomomorphism_664
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isRingMonomorphism
d_isRingMonomorphism_1342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2544
d_isRingMonomorphism_1342 ~v0 ~v1 v2 v3
  = du_isRingMonomorphism_1342 v2 v3
du_isRingMonomorphism_1342 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2544
du_isRingMonomorphism_1342 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_2606
      (coe du_isRingHomomorphism_1338 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingIsomorphism
d_isRingIsomorphism_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2610
d_isRingIsomorphism_1344 ~v0 ~v1 v2 v3
  = du_isRingIsomorphism_1344 v2 v3
du_isRingIsomorphism_1344 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2610
du_isRingIsomorphism_1344 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_2684
      (coe du_isRingMonomorphism_1342 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_1384 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_1388 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_1392 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2938
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_1458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2936
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1462 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2932
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_1464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2934
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2998 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2954
d_isQuasigroupMonomorphism_1492 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupMonomorphism_3006
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism.surjective
d_surjective_1500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1500 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3008 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism.injective
d_injective_1526 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2954 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1526 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2964 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2954 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
d_isQuasigroupHomomorphism_1528 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_2962
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
d_isQuasigroupHomomorphism_1654 ~v0 ~v1 v2 v3
  = du_isQuasigroupHomomorphism_1654 v2 v3
du_isQuasigroupHomomorphism_1654 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
du_isQuasigroupHomomorphism_1654 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_2950
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__370 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__372 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__374 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2954
d_isQuasigroupMonomorphism_1668 ~v0 ~v1 v2 v3
  = du_isQuasigroupMonomorphism_1668 v2 v3
du_isQuasigroupMonomorphism_1668 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2954
du_isQuasigroupMonomorphism_1668 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_2994
      (coe du_isQuasigroupHomomorphism_1654 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupIsomorphism
d_isQuasigroupIsomorphism_1670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2998
d_isQuasigroupIsomorphism_1670 ~v0 ~v1 v2 v3
  = du_isQuasigroupIsomorphism_1670 v2 v3
du_isQuasigroupIsomorphism_1670 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2998
du_isQuasigroupIsomorphism_1670 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3050
      (coe du_isQuasigroupMonomorphism_1668 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism
d_IsLoopHomomorphism_1714 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism
d_IsLoopIsomorphism_1718 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism
d_IsLoopMonomorphism_1722 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
d_isQuasigroupHomomorphism_1736 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism.ε-homo
d_ε'45'homo_1740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398 ->
  AgdaAny
d_ε'45'homo_1740 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_3408 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism.isLoopMonomorphism
d_isLoopMonomorphism_1762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3470 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3432
d_isLoopMonomorphism_1762 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isLoopMonomorphism_3478
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism.surjective
d_surjective_1768 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1768 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3480 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism.injective
d_injective_1788 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3432 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1788 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_3442 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism.isLoopHomomorphism
d_isLoopHomomorphism_1790 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3432 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398
d_isLoopHomomorphism_1790 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isLoopHomomorphism_3440
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isLoopHomomorphism
d_isLoopHomomorphism_1804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398
d_isLoopHomomorphism_1804 ~v0 ~v1 v2 v3
  = du_isLoopHomomorphism_1804 v2 v3
du_isLoopHomomorphism_1804 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398
du_isLoopHomomorphism_1804 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3428
      (coe
         du_isQuasigroupHomomorphism_1654
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_422 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_420 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isLoopMonomorphism
d_isLoopMonomorphism_1806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3432
d_isLoopMonomorphism_1806 ~v0 ~v1 v2 v3
  = du_isLoopMonomorphism_1806 v2 v3
du_isLoopMonomorphism_1806 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3432
du_isLoopMonomorphism_1806 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3466
      (coe du_isLoopHomomorphism_1804 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isLoopIsomorphism
d_isLoopIsomorphism_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3470
d_isLoopIsomorphism_1808 ~v0 ~v1 v2 v3
  = du_isLoopIsomorphism_1808 v2 v3
du_isLoopIsomorphism_1808 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3470
du_isLoopIsomorphism_1808 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3508
      (coe du_isLoopMonomorphism_1806 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism
d_IsKleeneAlgebraHomomorphism_1856 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism
d_IsKleeneAlgebraIsomorphism_1860 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism
d_IsKleeneAlgebraMonomorphism_1864 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_1890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism.⋆-homo
d_'8902''45'homo_1892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714 ->
  AgdaAny -> AgdaAny
d_'8902''45'homo_1892 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8902''45'homo_3724
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3798 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3754
d_isKleeneAlgebraMonomorphism_1918 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isKleeneAlgebraMonomorphism_3806
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism.surjective
d_surjective_1926 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3798 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1926 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3808 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism.injective
d_injective_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1950 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_3764 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3754 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714
d_isKleeneAlgebraHomomorphism_1952 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isKleeneAlgebraHomomorphism_3762
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714
d_isKleeneAlgebraHomomorphism_1964 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraHomomorphism_1964 v2 v3
du_isKleeneAlgebraHomomorphism_1964 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714
du_isKleeneAlgebraHomomorphism_1964 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3750
      (coe
         du_isSemiringHomomorphism_664
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_474 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8902'_468 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3754
d_isKleeneAlgebraMonomorphism_1968 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraMonomorphism_1968 v2 v3
du_isKleeneAlgebraMonomorphism_1968 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3754
du_isKleeneAlgebraMonomorphism_1968 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3794
      (coe du_isKleeneAlgebraHomomorphism_1964 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraIsomorphism
d_isKleeneAlgebraIsomorphism_1970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3798
d_isKleeneAlgebraIsomorphism_1970 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraIsomorphism_1970 v2 v3
du_isKleeneAlgebraIsomorphism_1970 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3798
du_isKleeneAlgebraIsomorphism_1970 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_constructor_3842
      (coe du_isKleeneAlgebraMonomorphism_1968 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._.rawMagma
d_rawMagma_1984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_1984 ~v0 ~v1 v2 = du_rawMagma_1984 v2
du_rawMagma_1984 ::
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_1984 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawMagma_118 (coe v0)
-- Algebra.Morphism.Construct.Identity._.magmaHomomorphism
d_magmaHomomorphism_2044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MagmaHomomorphism_28
d_magmaHomomorphism_2044 ~v0 ~v1 v2 = du_magmaHomomorphism_2044 v2
du_magmaHomomorphism_2044 ::
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MagmaHomomorphism_28
du_magmaHomomorphism_2044 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_98
      (coe (\ v1 -> v1))
      (coe
         du_isMagmaHomomorphism_96
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMagma_118 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v0)))))
-- Algebra.Morphism.Construct.Identity._._.rawMonoid
d_rawMonoid_2058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2058 ~v0 ~v1 v2 = du_rawMonoid_2058 v2
du_rawMonoid_2058 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_rawMonoid_2058 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0)
-- Algebra.Morphism.Construct.Identity._.monoidHomomorphism
d_monoidHomomorphism_2136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MonoidHomomorphism_112
d_monoidHomomorphism_2136 ~v0 ~v1 v2
  = du_monoidHomomorphism_2136 v2
du_monoidHomomorphism_2136 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MonoidHomomorphism_112
du_monoidHomomorphism_2136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_196
      (coe (\ v1 -> v1))
      (coe
         du_isMonoidHomomorphism_210
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
-- Algebra.Morphism.Construct.Identity._._.rawGroup
d_rawGroup_2150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_rawGroup_2150 ~v0 ~v1 v2 = du_rawGroup_2150 v2
du_rawGroup_2150 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_rawGroup_2150 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawGroup_1654 (coe v0)
-- Algebra.Morphism.Construct.Identity._.groupHomomorphism
d_groupHomomorphism_2246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_GroupHomomorphism_210
d_groupHomomorphism_2246 ~v0 ~v1 v2 = du_groupHomomorphism_2246 v2
du_groupHomomorphism_2246 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_GroupHomomorphism_210
du_groupHomomorphism_2246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_318
      (coe (\ v1 -> v1))
      (coe
         du_isGroupHomomorphism_342
         (coe MAlonzo.Code.Algebra.Bundles.du_rawGroup_1654 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
-- Algebra.Morphism.Construct.Identity._._.rawNearSemiring
d_rawNearSemiring_2260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1814 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_rawNearSemiring_2260 ~v0 ~v1 v2 = du_rawNearSemiring_2260 v2
du_rawNearSemiring_2260 ::
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1814 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
du_rawNearSemiring_2260 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawNearSemiring_1898 (coe v0)
-- Algebra.Morphism.Construct.Identity._.nearSemiringHomomorphism
d_nearSemiringHomomorphism_2368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1814 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_NearSemiringHomomorphism_332
d_nearSemiringHomomorphism_2368 ~v0 ~v1 v2
  = du_nearSemiringHomomorphism_2368 v2
du_nearSemiringHomomorphism_2368 ::
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1814 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_NearSemiringHomomorphism_332
du_nearSemiringHomomorphism_2368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_452
      (coe (\ v1 -> v1))
      (coe
         du_isNearSemiringHomomorphism_490
         (coe MAlonzo.Code.Algebra.Bundles.du_rawNearSemiring_1898 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1278
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNearSemiring_1842 (coe v0))))))))
-- Algebra.Morphism.Construct.Identity._._.rawSemiring
d_rawSemiring_2382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_2382 ~v0 ~v1 v2 = du_rawSemiring_2382 v2
du_rawSemiring_2382 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_2382 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
         (coe v0))
-- Algebra.Morphism.Construct.Identity._.semiringHomomorphism
d_semiringHomomorphism_2508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_SemiringHomomorphism_466
d_semiringHomomorphism_2508 ~v0 ~v1 v2
  = du_semiringHomomorphism_2508 v2
du_semiringHomomorphism_2508 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_SemiringHomomorphism_466
du_semiringHomomorphism_2508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_620
      (coe (\ v1 -> v1))
      (coe
         du_isSemiringHomomorphism_664
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawKleeneAlgebra
d_rawKleeneAlgebra_2522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440
d_rawKleeneAlgebra_2522 ~v0 ~v1 v2 = du_rawKleeneAlgebra_2522 v2
du_rawKleeneAlgebra_2522 ::
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440
du_rawKleeneAlgebra_2522 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawKleeneAlgebra_3284 (coe v0)
-- Algebra.Morphism.Construct.Identity._.kleeneAlgebraHomomorphism
d_kleeneAlgebraHomomorphism_2636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_KleeneAlgebraHomomorphism_634
d_kleeneAlgebraHomomorphism_2636 ~v0 ~v1 v2
  = du_kleeneAlgebraHomomorphism_2636 v2
du_kleeneAlgebraHomomorphism_2636 ::
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_KleeneAlgebraHomomorphism_634
du_kleeneAlgebraHomomorphism_2636 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_824
      (coe (\ v1 -> v1))
      (coe
         du_isKleeneAlgebraHomomorphism_1964
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawKleeneAlgebra_3284 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemiring_2012
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_2140
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128
                                       (coe v0))))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawRingWithoutOne
d_rawRingWithoutOne_2650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_2650 ~v0 ~v1 v2 = du_rawRingWithoutOne_2650 v2
du_rawRingWithoutOne_2650 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_2650 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawRingWithoutOne_3580 (coe v0)
-- Algebra.Morphism.Construct.Identity._.ringWithoutOneHomomorphism
d_ringWithoutOneHomomorphism_2782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingWithoutOneHomomorphism_838
d_ringWithoutOneHomomorphism_2782 ~v0 ~v1 v2
  = du_ringWithoutOneHomomorphism_2782 v2
du_ringWithoutOneHomomorphism_2782 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingWithoutOneHomomorphism_838
du_ringWithoutOneHomomorphism_2782 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_992
      (coe (\ v1 -> v1))
      (coe
         du_isRingWithoutOneHomomorphism_840
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawRingWithoutOne_3580 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466
                                 (coe v0))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawRing
d_rawRing_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_2796 ~v0 ~v1 v2 = du_rawRing_2796 v2
du_rawRing_2796 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_2796 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawRing_4112 (coe v0)
-- Algebra.Morphism.Construct.Identity._.ringHomomorphism
d_ringHomomorphism_3240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingHomomorphism_1006
d_ringHomomorphism_3240 ~v0 ~v1 v2 = du_ringHomomorphism_3240 v2
du_ringHomomorphism_3240 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingHomomorphism_1006
du_ringHomomorphism_3240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_1200
      (coe (\ v1 -> v1))
      (coe
         du_isRingHomomorphism_1338
         (coe MAlonzo.Code.Algebra.Bundles.du_rawRing_4112 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                              (coe MAlonzo.Code.Algebra.Bundles.d_isRing_3944 (coe v0))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawQuasigroup
d_rawQuasigroup_3254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
d_rawQuasigroup_3254 ~v0 ~v1 v2 = du_rawQuasigroup_3254 v2
du_rawQuasigroup_3254 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
du_rawQuasigroup_3254 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawQuasigroup_4444 (coe v0)
-- Algebra.Morphism.Construct.Identity._.quasigroupHomomorphism
d_quasigroupHomomorphism_3530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_QuasigroupHomomorphism_1214
d_quasigroupHomomorphism_3530 ~v0 ~v1 v2
  = du_quasigroupHomomorphism_3530 v2
du_quasigroupHomomorphism_3530 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_QuasigroupHomomorphism_1214
du_quasigroupHomomorphism_3530 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_1328
      (coe (\ v1 -> v1))
      (coe
         du_isQuasigroupHomomorphism_1654
         (coe MAlonzo.Code.Algebra.Bundles.du_rawQuasigroup_4444 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                  (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
-- Algebra.Morphism.Construct.Identity._._.rawLoop
d_rawLoop_3544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392
d_rawLoop_3544 ~v0 ~v1 v2 = du_rawLoop_3544 v2
du_rawLoop_3544 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392
du_rawLoop_3544 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawLoop_4550 (coe v0)
-- Algebra.Morphism.Construct.Identity._.loopHomomorphism
d_loopHomomorphism_3640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_LoopHomomorphism_1342
d_loopHomomorphism_3640 ~v0 ~v1 v2 = du_loopHomomorphism_3640 v2
du_loopHomomorphism_3640 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_LoopHomomorphism_1342
du_loopHomomorphism_3640 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_constructor_1476
      (coe (\ v1 -> v1))
      (coe
         du_isLoopHomomorphism_1804
         (coe MAlonzo.Code.Algebra.Bundles.du_rawLoop_4550 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3136
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4492 (coe v0)))))))
