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
d_IsMagmaIsomorphism_44 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_46 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism.homo
d_homo_50 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_50 v0
  = coe MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_52 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_52 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_64 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_64 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_238
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism.surjective
d_surjective_72 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_72 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_240 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism.injective
d_injective_80 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_80 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_216 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_82 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_82 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_214
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isMagmaHomomorphism
d_isMagmaHomomorphism_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_90 ~v0 ~v1 v2 v3
  = du_isMagmaHomomorphism_90 v2 v3
du_isMagmaHomomorphism_90 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_isMagmaHomomorphism_90 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__58 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isMagmaMonomorphism
d_isMagmaMonomorphism_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_96 ~v0 ~v1 v2 v3
  = du_isMagmaMonomorphism_96 v2 v3
du_isMagmaMonomorphism_96 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaMonomorphism'46'constructor_5763
      (coe du_isMagmaHomomorphism_90 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMagmaIsomorphism
d_isMagmaIsomorphism_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_98 ~v0 ~v1 v2 v3
  = du_isMagmaIsomorphism_98 v2 v3
du_isMagmaIsomorphism_98 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_98 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaIsomorphism'46'constructor_7199
      (coe du_isMagmaMonomorphism_96 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_109 ::
  T_GeneralizeTel_113 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_109 v0
  = case coe v0 of
      C_mkGeneralizeTel_115 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_111 ::
  T_GeneralizeTel_113 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_111 v0
  = case coe v0 of
      C_mkGeneralizeTel_115 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_113 = ()
data T_GeneralizeTel_113
  = C_mkGeneralizeTel_115 MAlonzo.Code.Agda.Primitive.T_Level_18
                          MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_132 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_134 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_136 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny
d_ε'45'homo_146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism.surjective
d_surjective_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism.injective
d_injective_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isMonoidHomomorphism
d_isMonoidHomomorphism_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_198 ~v0 ~v1 v2 v3
  = du_isMonoidHomomorphism_198 v2 v3
du_isMonoidHomomorphism_198 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
du_isMonoidHomomorphism_198 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe
         du_isMagmaHomomorphism_90
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_92 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isMonoidMonomorphism
d_isMonoidMonomorphism_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_200 ~v0 ~v1 v2 v3
  = du_isMonoidMonomorphism_200 v2 v3
du_isMonoidMonomorphism_200 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
du_isMonoidMonomorphism_200 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_10237
      (coe du_isMonoidHomomorphism_198 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMonoidIsomorphism
d_isMonoidIsomorphism_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416
d_isMonoidIsomorphism_202 ~v0 ~v1 v2 v3
  = du_isMonoidIsomorphism_202 v2 v3
du_isMonoidIsomorphism_202 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416
du_isMonoidIsomorphism_202 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidIsomorphism'46'constructor_11597
      (coe du_isMonoidMonomorphism_200 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism
d_IsGroupHomomorphism_240 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism
d_IsGroupIsomorphism_242 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism
d_IsGroupMonomorphism_244 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634 ->
  AgdaAny -> AgdaAny
d_'8315''185''45'homo_258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_644
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_698 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_660
d_isGroupMonomorphism_268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupMonomorphism_706
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism.surjective
d_surjective_288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_698 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_288 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_708 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism.injective
d_injective_300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_660 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_670 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_660 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
d_isGroupHomomorphism_302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_668
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isGroupHomomorphism
d_isGroupHomomorphism_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
d_isGroupHomomorphism_324 ~v0 ~v1 v2 v3
  = du_isGroupHomomorphism_324 v2 v3
du_isGroupHomomorphism_324 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
du_isGroupHomomorphism_324 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupHomomorphism'46'constructor_14585
      (coe
         du_isMonoidHomomorphism_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_128 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_126 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isGroupMonomorphism
d_isGroupMonomorphism_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_660
d_isGroupMonomorphism_328 ~v0 ~v1 v2 v3
  = du_isGroupMonomorphism_328 v2 v3
du_isGroupMonomorphism_328 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_660
du_isGroupMonomorphism_328 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupMonomorphism'46'constructor_15537
      (coe du_isGroupHomomorphism_324 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isGroupIsomorphism
d_isGroupIsomorphism_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_698
d_isGroupIsomorphism_330 ~v0 ~v1 v2 v3
  = du_isGroupIsomorphism_330 v2 v3
du_isGroupIsomorphism_330 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_698
du_isGroupIsomorphism_330 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupIsomorphism'46'constructor_17073
      (coe du_isGroupMonomorphism_328 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_370 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_372 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_374 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_378 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_938
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_386 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_998 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringMonomorphism_1006
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism.surjective
d_surjective_432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1008 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism.injective
d_injective_456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_956 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_966 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_956 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_964
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_466 ~v0 ~v1 v2 v3
  = du_isNearSemiringHomomorphism_466 v2 v3
du_isNearSemiringHomomorphism_466 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_466 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringHomomorphism'46'constructor_19989
      (coe
         du_isMonoidHomomorphism_198
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__162 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_956
d_isNearSemiringMonomorphism_472 ~v0 ~v1 v2 v3
  = du_isNearSemiringMonomorphism_472 v2 v3
du_isNearSemiringMonomorphism_472 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_956
du_isNearSemiringMonomorphism_472 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringMonomorphism'46'constructor_21119
      (coe du_isNearSemiringHomomorphism_466 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_998
d_isNearSemiringIsomorphism_474 ~v0 ~v1 v2 v3
  = du_isNearSemiringIsomorphism_474 v2 v3
du_isNearSemiringIsomorphism_474 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_998
du_isNearSemiringIsomorphism_474 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringIsomorphism'46'constructor_23007
      (coe du_isNearSemiringMonomorphism_472 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_520 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_522 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_524 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294 ->
  AgdaAny
d_1'35''45'homo_542 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1304
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_544 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_592 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1376 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_592 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringMonomorphism_1384
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism.surjective
d_surjective_594 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1376 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_594 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1386 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism.injective
d_injective_622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_622 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1338 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_630 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1328 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_630 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_1336
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isSemiringHomomorphism
d_isSemiringHomomorphism_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_634 ~v0 ~v1 v2 v3
  = du_isSemiringHomomorphism_634 v2 v3
du_isSemiringHomomorphism_634 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
du_isSemiringHomomorphism_634 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringHomomorphism'46'constructor_26561
      (coe
         du_isNearSemiringHomomorphism_466
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_208 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isSemiringMonomorphism
d_isSemiringMonomorphism_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1328
d_isSemiringMonomorphism_636 ~v0 ~v1 v2 v3
  = du_isSemiringMonomorphism_636 v2 v3
du_isSemiringMonomorphism_636 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1328
du_isSemiringMonomorphism_636 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringMonomorphism'46'constructor_27871
      (coe du_isSemiringHomomorphism_634 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isSemiringIsomorphism
d_isSemiringIsomorphism_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1376
d_isSemiringIsomorphism_638 ~v0 ~v1 v2 v3
  = du_isSemiringIsomorphism_638 v2 v3
du_isSemiringIsomorphism_638 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1376
du_isSemiringIsomorphism_638 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringIsomorphism'46'constructor_29931
      (coe du_isSemiringMonomorphism_636 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_684 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_686 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_688 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism.*-homo
d_'42''45'homo_692 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_692 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_1756
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_698 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_698 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1830 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1780
d_isRingWithoutOneMonomorphism_758 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingWithoutOneMonomorphism_1838
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism.surjective
d_surjective_760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1830 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_760 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1840 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism.injective
d_injective_790 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_790 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1790 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_798 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1780 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_798 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingWithoutOneHomomorphism_1788
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_804 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneHomomorphism_804 v2 v3
du_isRingWithoutOneHomomorphism_804 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
du_isRingWithoutOneHomomorphism_804 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneHomomorphism'46'constructor_34297
      (coe
         du_isGroupHomomorphism_324
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_270 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__252 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1780
d_isRingWithoutOneMonomorphism_810 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneMonomorphism_810 v2 v3
du_isRingWithoutOneMonomorphism_810 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1780
du_isRingWithoutOneMonomorphism_810 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneMonomorphism'46'constructor_35739
      (coe du_isRingWithoutOneHomomorphism_804 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneIsoMorphism
d_isRingWithoutOneIsoMorphism_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1830
d_isRingWithoutOneIsoMorphism_812 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneIsoMorphism_812 v2 v3
du_isRingWithoutOneIsoMorphism_812 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1830
du_isRingWithoutOneIsoMorphism_812 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneIsoMorphism'46'constructor_37851
      (coe du_isRingWithoutOneMonomorphism_810 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism
d_IsRingHomomorphism_864 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism
d_IsRingIsomorphism_866 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism
d_IsRingMonomorphism_868 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism.-‿homo
d_'45''8255'homo_1162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374 ->
  AgdaAny -> AgdaAny
d_'45''8255'homo_1162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2384
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_1174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism.isRingMonomorphism
d_isRingMonomorphism_1220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2480 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2416
d_isRingMonomorphism_1220 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingMonomorphism_2488
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism.surjective
d_surjective_1230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2480 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1230 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_2490 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism.injective
d_injective_1262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2416 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2426 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism.isRingHomomorphism
d_isRingHomomorphism_1268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374
d_isRingHomomorphism_1268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2424
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isRingHomomorphism
d_isRingHomomorphism_1278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374
d_isRingHomomorphism_1278 ~v0 ~v1 v2 v3
  = du_isRingHomomorphism_1278 v2 v3
du_isRingHomomorphism_1278 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374
du_isRingHomomorphism_1278 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingHomomorphism'46'constructor_43635
      (coe
         du_isSemiringHomomorphism_634
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isRingMonomorphism
d_isRingMonomorphism_1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2416
d_isRingMonomorphism_1282 ~v0 ~v1 v2 v3
  = du_isRingMonomorphism_1282 v2 v3
du_isRingMonomorphism_1282 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2416
du_isRingMonomorphism_1282 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingMonomorphism'46'constructor_45289
      (coe du_isRingHomomorphism_1278 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingIsomorphism
d_isRingIsomorphism_1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2480
d_isRingIsomorphism_1284 ~v0 ~v1 v2 v3
  = du_isRingIsomorphism_1284 v2 v3
du_isRingIsomorphism_1284 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2480
du_isRingIsomorphism_1284 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingIsomorphism'46'constructor_48021
      (coe du_isRingMonomorphism_1282 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_1324 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_1326 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_1328 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_1365 ::
  T_GeneralizeTel_1369 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_1365 v0
  = case coe v0 of
      C_mkGeneralizeTel_1371 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_1367 ::
  T_GeneralizeTel_1369 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_1367 v0
  = case coe v0 of
      C_mkGeneralizeTel_1371 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_1369 = ()
data T_GeneralizeTel_1369
  = C_mkGeneralizeTel_1371 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_1382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2788
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_1386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1386 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2786
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1390 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2782
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_1392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2784
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2844 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2802
d_isQuasigroupMonomorphism_1420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupMonomorphism_2852
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism.surjective
d_surjective_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2844 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_2854 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism.injective
d_injective_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2802 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2812 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2802 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_1456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_2810
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_1570 ~v0 ~v1 v2 v3
  = du_isQuasigroupHomomorphism_1570 v2 v3
du_isQuasigroupHomomorphism_1570 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
du_isQuasigroupHomomorphism_1570 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupHomomorphism'46'constructor_52623
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__354 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__356 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__358 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2802
d_isQuasigroupMonomorphism_1584 ~v0 ~v1 v2 v3
  = du_isQuasigroupMonomorphism_1584 v2 v3
du_isQuasigroupMonomorphism_1584 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2802
du_isQuasigroupMonomorphism_1584 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupMonomorphism'46'constructor_54419
      (coe du_isQuasigroupHomomorphism_1570 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupIsomorphism
d_isQuasigroupIsomorphism_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2844
d_isQuasigroupIsomorphism_1586 ~v0 ~v1 v2 v3
  = du_isQuasigroupIsomorphism_1586 v2 v3
du_isQuasigroupIsomorphism_1586 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2844
du_isQuasigroupIsomorphism_1586 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupIsomorphism'46'constructor_56539
      (coe du_isQuasigroupMonomorphism_1584 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism
d_IsLoopHomomorphism_1630 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism
d_IsLoopIsomorphism_1632 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism
d_IsLoopMonomorphism_1634 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1646 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_1646 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism.ε-homo
d_ε'45'homo_1650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218 ->
  AgdaAny
d_ε'45'homo_1650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_3228 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism.isLoopMonomorphism
d_isLoopMonomorphism_1672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3286 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3250
d_isLoopMonomorphism_1672 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isLoopMonomorphism_3294
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism.surjective
d_surjective_1678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1678 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3296 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism.injective
d_injective_1698 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1698 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_3260 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism.isLoopHomomorphism
d_isLoopHomomorphism_1700 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3250 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218
d_isLoopHomomorphism_1700 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isLoopHomomorphism_3258
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isLoopHomomorphism
d_isLoopHomomorphism_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218
d_isLoopHomomorphism_1714 ~v0 ~v1 v2 v3
  = du_isLoopHomomorphism_1714 v2 v3
du_isLoopHomomorphism_1714 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218
du_isLoopHomomorphism_1714 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopHomomorphism'46'constructor_60801
      (coe
         du_isQuasigroupHomomorphism_1570
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_404 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_402 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isLoopMonomorphism
d_isLoopMonomorphism_1716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3250
d_isLoopMonomorphism_1716 ~v0 ~v1 v2 v3
  = du_isLoopMonomorphism_1716 v2 v3
du_isLoopMonomorphism_1716 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3250
du_isLoopMonomorphism_1716 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopMonomorphism'46'constructor_61911
      (coe du_isLoopHomomorphism_1714 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isLoopIsomorphism
d_isLoopIsomorphism_1718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3286
d_isLoopIsomorphism_1718 ~v0 ~v1 v2 v3
  = du_isLoopIsomorphism_1718 v2 v3
du_isLoopIsomorphism_1718 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3286
du_isLoopIsomorphism_1718 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopIsomorphism'46'constructor_63155
      (coe du_isLoopMonomorphism_1716 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism
d_IsKleeneAlgebraHomomorphism_1766 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism
d_IsKleeneAlgebraIsomorphism_1768 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism
d_IsKleeneAlgebraMonomorphism_1770 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1794 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_1794 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism.⋆-homo
d_'8902''45'homo_1796 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522 ->
  AgdaAny -> AgdaAny
d_'8902''45'homo_1796 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8902''45'homo_3532
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3602 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3560
d_isKleeneAlgebraMonomorphism_1822 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isKleeneAlgebraMonomorphism_3610
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism.surjective
d_surjective_1830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3602 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3612 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism.injective
d_injective_1854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_3570 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3560 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522
d_isKleeneAlgebraHomomorphism_1856 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isKleeneAlgebraHomomorphism_3568
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522
d_isKleeneAlgebraHomomorphism_1868 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraHomomorphism_1868 v2 v3
du_isKleeneAlgebraHomomorphism_1868 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522
du_isKleeneAlgebraHomomorphism_1868 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraHomomorphism'46'constructor_65639
      (coe
         du_isSemiringHomomorphism_634
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_454 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8902'_448 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3560
d_isKleeneAlgebraMonomorphism_1872 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraMonomorphism_1872 v2 v3
du_isKleeneAlgebraMonomorphism_1872 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3560
du_isKleeneAlgebraMonomorphism_1872 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraMonomorphism'46'constructor_66943
      (coe du_isKleeneAlgebraHomomorphism_1868 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraIsomorphism
d_isKleeneAlgebraIsomorphism_1874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3602
d_isKleeneAlgebraIsomorphism_1874 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraIsomorphism_1874 v2 v3
du_isKleeneAlgebraIsomorphism_1874 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3602
du_isKleeneAlgebraIsomorphism_1874 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraIsomorphism'46'constructor_68383
      (coe du_isKleeneAlgebraMonomorphism_1872 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._.rawMagma
d_rawMagma_1888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_1888 ~v0 ~v1 v2 = du_rawMagma_1888 v2
du_rawMagma_1888 ::
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_1888 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawMagma_116 (coe v0)
-- Algebra.Morphism.Construct.Identity._.magmaHomomorphism
d_magmaHomomorphism_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MagmaHomomorphism_28
d_magmaHomomorphism_1942 ~v0 ~v1 v2 = du_magmaHomomorphism_1942 v2
du_magmaHomomorphism_1942 ::
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MagmaHomomorphism_28
du_magmaHomomorphism_1942 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_MagmaHomomorphism'46'constructor_487
      (coe (\ v1 -> v1))
      (coe
         du_isMagmaHomomorphism_90
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMagma_116 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_92 (coe v0)))))
-- Algebra.Morphism.Construct.Identity._._.rawMonoid
d_rawMonoid_1956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1956 ~v0 ~v1 v2 = du_rawMonoid_1956 v2
du_rawMonoid_1956 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_rawMonoid_1956 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958 (coe v0)
-- Algebra.Morphism.Construct.Identity._.monoidHomomorphism
d_monoidHomomorphism_2028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MonoidHomomorphism_110
d_monoidHomomorphism_2028 ~v0 ~v1 v2
  = du_monoidHomomorphism_2028 v2
du_monoidHomomorphism_2028 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_MonoidHomomorphism_110
du_monoidHomomorphism_2028 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_MonoidHomomorphism'46'constructor_2579
      (coe (\ v1 -> v1))
      (coe
         du_isMonoidHomomorphism_198
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_910 (coe v0)))))))
-- Algebra.Morphism.Construct.Identity._._.rawGroup
d_rawGroup_2042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_rawGroup_2042 ~v0 ~v1 v2 = du_rawGroup_2042 v2
du_rawGroup_2042 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_rawGroup_2042 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawGroup_1614 (coe v0)
-- Algebra.Morphism.Construct.Identity._.groupHomomorphism
d_groupHomomorphism_2132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_GroupHomomorphism_206
d_groupHomomorphism_2132 ~v0 ~v1 v2 = du_groupHomomorphism_2132 v2
du_groupHomomorphism_2132 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_GroupHomomorphism_206
du_groupHomomorphism_2132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_GroupHomomorphism'46'constructor_5279
      (coe (\ v1 -> v1))
      (coe
         du_isGroupHomomorphism_324
         (coe MAlonzo.Code.Algebra.Bundles.du_rawGroup_1614 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v0))))))))
-- Algebra.Morphism.Construct.Identity._._.rawNearSemiring
d_rawNearSemiring_2146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1770 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
d_rawNearSemiring_2146 ~v0 ~v1 v2 = du_rawNearSemiring_2146 v2
du_rawNearSemiring_2146 ::
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1770 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
du_rawNearSemiring_2146 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawNearSemiring_1854 (coe v0)
-- Algebra.Morphism.Construct.Identity._.nearSemiringHomomorphism
d_nearSemiringHomomorphism_2248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1770 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_NearSemiringHomomorphism_326
d_nearSemiringHomomorphism_2248 ~v0 ~v1 v2
  = du_nearSemiringHomomorphism_2248 v2
du_nearSemiringHomomorphism_2248 ::
  MAlonzo.Code.Algebra.Bundles.T_NearSemiring_1770 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_NearSemiringHomomorphism_326
du_nearSemiringHomomorphism_2248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_NearSemiringHomomorphism'46'constructor_8661
      (coe (\ v1 -> v1))
      (coe
         du_isNearSemiringHomomorphism_466
         (coe MAlonzo.Code.Algebra.Bundles.du_rawNearSemiring_1854 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNearSemiring_1798 (coe v0))))))))
-- Algebra.Morphism.Construct.Identity._._.rawSemiring
d_rawSemiring_2262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_2262 ~v0 ~v1 v2 = du_rawSemiring_2262 v2
du_rawSemiring_2262 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_2262 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
         (coe v0))
-- Algebra.Morphism.Construct.Identity._.semiringHomomorphism
d_semiringHomomorphism_2382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_SemiringHomomorphism_458
d_semiringHomomorphism_2382 ~v0 ~v1 v2
  = du_semiringHomomorphism_2382 v2
du_semiringHomomorphism_2382 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_SemiringHomomorphism_458
du_semiringHomomorphism_2382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_SemiringHomomorphism'46'constructor_12601
      (coe (\ v1 -> v1))
      (coe
         du_isSemiringHomomorphism_634
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
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
                                 MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336 (coe v0))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawKleeneAlgebra
d_rawKleeneAlgebra_2396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420
d_rawKleeneAlgebra_2396 ~v0 ~v1 v2 = du_rawKleeneAlgebra_2396 v2
du_rawKleeneAlgebra_2396 ::
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420
du_rawKleeneAlgebra_2396 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawKleeneAlgebra_3224 (coe v0)
-- Algebra.Morphism.Construct.Identity._.kleeneAlgebraHomomorphism
d_kleeneAlgebraHomomorphism_2504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_KleeneAlgebraHomomorphism_624
d_kleeneAlgebraHomomorphism_2504 ~v0 ~v1 v2
  = du_kleeneAlgebraHomomorphism_2504 v2
du_kleeneAlgebraHomomorphism_2504 ::
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_KleeneAlgebraHomomorphism_624
du_kleeneAlgebraHomomorphism_2504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_KleeneAlgebraHomomorphism'46'constructor_17181
      (coe (\ v1 -> v1))
      (coe
         du_isKleeneAlgebraHomomorphism_1868
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawKleeneAlgebra_3224 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
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
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068
                                       (coe v0))))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawRingWithoutOne
d_rawRingWithoutOne_2518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_2518 ~v0 ~v1 v2 = du_rawRingWithoutOne_2518 v2
du_rawRingWithoutOne_2518 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_2518 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawRingWithoutOne_3516 (coe v0)
-- Algebra.Morphism.Construct.Identity._.ringWithoutOneHomomorphism
d_ringWithoutOneHomomorphism_2644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingWithoutOneHomomorphism_826
d_ringWithoutOneHomomorphism_2644 ~v0 ~v1 v2
  = du_ringWithoutOneHomomorphism_2644 v2
du_ringWithoutOneHomomorphism_2644 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingWithoutOneHomomorphism_826
du_ringWithoutOneHomomorphism_2644 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_RingWithoutOneHomomorphism'46'constructor_22227
      (coe (\ v1 -> v1))
      (coe
         du_isRingWithoutOneHomomorphism_804
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawRingWithoutOne_3516 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
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
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2324
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402
                                 (coe v0))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawRing
d_rawRing_2658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_2658 ~v0 ~v1 v2 = du_rawRing_2658 v2
du_rawRing_2658 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_2658 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawRing_4042 (coe v0)
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_2909 ::
  T_GeneralizeTel_2913 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_2909 v0
  = case coe v0 of
      C_mkGeneralizeTel_2915 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_2911 ::
  T_GeneralizeTel_2913 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_2911 v0
  = case coe v0 of
      C_mkGeneralizeTel_2915 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_2913 = ()
data T_GeneralizeTel_2913
  = C_mkGeneralizeTel_2915 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._.ringHomomorphism
d_ringHomomorphism_3078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingHomomorphism_992
d_ringHomomorphism_3078 ~v0 ~v1 v2 = du_ringHomomorphism_3078 v2
du_ringHomomorphism_3078 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_RingHomomorphism_992
du_ringHomomorphism_3078 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_RingHomomorphism'46'constructor_26823
      (coe (\ v1 -> v1))
      (coe
         du_isRingHomomorphism_1278
         (coe MAlonzo.Code.Algebra.Bundles.du_rawRing_4042 (coe v0))
         (let v1 = MAlonzo.Code.Algebra.Bundles.d_isRing_3874 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
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
                                 (coe v1))))))))))
-- Algebra.Morphism.Construct.Identity._._.rawQuasigroup
d_rawQuasigroup_3092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
d_rawQuasigroup_3092 ~v0 ~v1 v2 = du_rawQuasigroup_3092 v2
du_rawQuasigroup_3092 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
du_rawQuasigroup_3092 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawQuasigroup_4370 (coe v0)
-- Algebra.Morphism.Construct.Identity._.quasigroupHomomorphism
d_quasigroupHomomorphism_3344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_QuasigroupHomomorphism_1198
d_quasigroupHomomorphism_3344 ~v0 ~v1 v2
  = du_quasigroupHomomorphism_3344 v2
du_quasigroupHomomorphism_3344 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_QuasigroupHomomorphism_1198
du_quasigroupHomomorphism_3344 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_QuasigroupHomomorphism'46'constructor_32365
      (coe (\ v1 -> v1))
      (coe
         du_isQuasigroupHomomorphism_1570
         (coe MAlonzo.Code.Algebra.Bundles.du_rawQuasigroup_4370 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                  (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0))))))
-- Algebra.Morphism.Construct.Identity._._.rawLoop
d_rawLoop_3358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374
d_rawLoop_3358 ~v0 ~v1 v2 = du_rawLoop_3358 v2
du_rawLoop_3358 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374
du_rawLoop_3358 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_rawLoop_4474 (coe v0)
-- Algebra.Morphism.Construct.Identity._.loopHomomorphism
d_loopHomomorphism_3448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_LoopHomomorphism_1324
d_loopHomomorphism_3448 ~v0 ~v1 v2 = du_loopHomomorphism_3448 v2
du_loopHomomorphism_3448 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Morphism.Bundles.T_LoopHomomorphism_1324
du_loopHomomorphism_3448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Bundles.C_LoopHomomorphism'46'constructor_35661
      (coe (\ v1 -> v1))
      (coe
         du_isLoopHomomorphism_1714
         (coe MAlonzo.Code.Algebra.Bundles.du_rawLoop_4474 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0)))))))
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_4635 ::
  T_GeneralizeTel_4639 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_4635 v0
  = case coe v0 of
      C_mkGeneralizeTel_4641 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_4637 ::
  T_GeneralizeTel_4639 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_4637 v0
  = case coe v0 of
      C_mkGeneralizeTel_4641 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_4639 = ()
data T_GeneralizeTel_4639
  = C_mkGeneralizeTel_4641 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_6517 ::
  T_GeneralizeTel_6521 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_6517 v0
  = case coe v0 of
      C_mkGeneralizeTel_6523 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_6519 ::
  T_GeneralizeTel_6521 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_6519 v0
  = case coe v0 of
      C_mkGeneralizeTel_6523 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_6521 = ()
data T_GeneralizeTel_6521
  = C_mkGeneralizeTel_6523 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_8567 ::
  T_GeneralizeTel_8571 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_8567 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_8569 ::
  T_GeneralizeTel_8571 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_8569 v0
  = case coe v0 of
      C_mkGeneralizeTel_8573 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_8571 = ()
data T_GeneralizeTel_8571
  = C_mkGeneralizeTel_8573 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_10703 ::
  T_GeneralizeTel_10707 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_10703 v0
  = case coe v0 of
      C_mkGeneralizeTel_10709 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_10705 ::
  T_GeneralizeTel_10707 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_10705 v0
  = case coe v0 of
      C_mkGeneralizeTel_10709 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_10707 = ()
data T_GeneralizeTel_10707
  = C_mkGeneralizeTel_10709 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_14913 ::
  T_GeneralizeTel_14917 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_14913 v0
  = case coe v0 of
      C_mkGeneralizeTel_14919 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_14915 ::
  T_GeneralizeTel_14917 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_14915 v0
  = case coe v0 of
      C_mkGeneralizeTel_14919 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_14917 = ()
data T_GeneralizeTel_14917
  = C_mkGeneralizeTel_14919 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_17653 ::
  T_GeneralizeTel_17657 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_17653 v0
  = case coe v0 of
      C_mkGeneralizeTel_17659 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_17655 ::
  T_GeneralizeTel_17657 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_17655 v0
  = case coe v0 of
      C_mkGeneralizeTel_17659 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_17657 = ()
data T_GeneralizeTel_17657
  = C_mkGeneralizeTel_17659 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_19445 ::
  T_GeneralizeTel_19449 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_19445 v0
  = case coe v0 of
      C_mkGeneralizeTel_19451 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_19447 ::
  T_GeneralizeTel_19449 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_19447 v0
  = case coe v0 of
      C_mkGeneralizeTel_19451 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_19449 = ()
data T_GeneralizeTel_19449
  = C_mkGeneralizeTel_19451 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
