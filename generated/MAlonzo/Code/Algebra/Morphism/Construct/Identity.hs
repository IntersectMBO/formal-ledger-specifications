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
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism.homo
d_homo_48 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_homo_48 v0
  = coe MAlonzo.Code.Algebra.Morphism.Structures.d_homo_186 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_50 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_50 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_62 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_62 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaMonomorphism_226
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaIsomorphism.surjective
d_surjective_70 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_70 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_228 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism.injective
d_injective_78 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_78 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_204 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_80 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_80 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_202
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isMagmaHomomorphism
d_isMagmaHomomorphism_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_36 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_88 ~v0 ~v1 v2 v3
  = du_isMagmaHomomorphism_88 v2 v3
du_isMagmaHomomorphism_88 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_36 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
du_isMagmaHomomorphism_88 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__52 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isMagmaMonomorphism
d_isMagmaMonomorphism_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_36 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_94 ~v0 ~v1 v2 v3
  = du_isMagmaMonomorphism_94 v2 v3
du_isMagmaMonomorphism_94 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_36 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_94 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaMonomorphism'46'constructor_5763
      (coe du_isMagmaHomomorphism_88 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMagmaIsomorphism
d_isMagmaIsomorphism_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_36 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_96 ~v0 ~v1 v2 v3
  = du_isMagmaIsomorphism_96 v2 v3
du_isMagmaIsomorphism_96 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_36 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaIsomorphism'46'constructor_7199
      (coe du_isMagmaMonomorphism_94 (coe v0) (coe v1))
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
d_IsMonoidHomomorphism_130 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_132 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_134 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny
d_ε'45'homo_144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_360 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidIsomorphism.surjective
d_surjective_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism.injective
d_injective_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isMonoidHomomorphism
d_isMonoidHomomorphism_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_196 ~v0 ~v1 v2 v3
  = du_isMonoidHomomorphism_196 v2 v3
du_isMonoidHomomorphism_196 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
du_isMonoidHomomorphism_196 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe
         du_isMagmaHomomorphism_88
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_84 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isMonoidMonomorphism
d_isMonoidMonomorphism_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_198 ~v0 ~v1 v2 v3
  = du_isMonoidMonomorphism_198 v2 v3
du_isMonoidMonomorphism_198 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
du_isMonoidMonomorphism_198 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_10237
      (coe du_isMonoidHomomorphism_196 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isMonoidIsomorphism
d_isMonoidIsomorphism_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404
d_isMonoidIsomorphism_200 ~v0 ~v1 v2 v3
  = du_isMonoidIsomorphism_200 v2 v3
du_isMonoidIsomorphism_200 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404
du_isMonoidIsomorphism_200 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidIsomorphism'46'constructor_11597
      (coe du_isMonoidMonomorphism_198 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism
d_IsGroupHomomorphism_238 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism
d_IsGroupIsomorphism_240 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism
d_IsGroupMonomorphism_242 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_250 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_630
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622 ->
  AgdaAny -> AgdaAny
d_'8315''185''45'homo_256 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_632
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_686 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_648
d_isGroupMonomorphism_266 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupMonomorphism_694
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupIsomorphism.surjective
d_surjective_286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_686 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_696 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism.injective
d_injective_298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_648 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_658 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_648 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622
d_isGroupHomomorphism_300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_656
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isGroupHomomorphism
d_isGroupHomomorphism_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622
d_isGroupHomomorphism_322 ~v0 ~v1 v2 v3
  = du_isGroupHomomorphism_322 v2 v3
du_isGroupHomomorphism_322 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622
du_isGroupHomomorphism_322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupHomomorphism'46'constructor_14585
      (coe
         du_isMonoidHomomorphism_196
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_120 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isGroupMonomorphism
d_isGroupMonomorphism_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_648
d_isGroupMonomorphism_326 ~v0 ~v1 v2 v3
  = du_isGroupMonomorphism_326 v2 v3
du_isGroupMonomorphism_326 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_648
du_isGroupMonomorphism_326 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupMonomorphism'46'constructor_15537
      (coe du_isGroupHomomorphism_322 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isGroupIsomorphism
d_isGroupIsomorphism_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_686
d_isGroupIsomorphism_328 ~v0 ~v1 v2 v3
  = du_isGroupIsomorphism_328 v2 v3
du_isGroupIsomorphism_328 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupIsomorphism_686
du_isGroupIsomorphism_328 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupIsomorphism'46'constructor_17073
      (coe du_isGroupMonomorphism_326 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_368 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_370 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_372 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism.*-homo
d_'42''45'homo_376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_926
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_'43''45'isMonoidHomomorphism_384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_924
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_986 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_944
d_isNearSemiringMonomorphism_422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringMonomorphism_994
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringIsomorphism.surjective
d_surjective_430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_986 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_996 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism.injective
d_injective_454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_944 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_954 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_944 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916
d_isNearSemiringHomomorphism_456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_952
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_134 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916
d_isNearSemiringHomomorphism_464 ~v0 ~v1 v2 v3
  = du_isNearSemiringHomomorphism_464 v2 v3
du_isNearSemiringHomomorphism_464 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_134 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916
du_isNearSemiringHomomorphism_464 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringHomomorphism'46'constructor_19989
      (coe
         du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_160 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__156 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_134 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_944
d_isNearSemiringMonomorphism_470 ~v0 ~v1 v2 v3
  = du_isNearSemiringMonomorphism_470 v2 v3
du_isNearSemiringMonomorphism_470 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_134 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_944
du_isNearSemiringMonomorphism_470 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringMonomorphism'46'constructor_21119
      (coe du_isNearSemiringHomomorphism_464 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isNearSemiringIsomorphism
d_isNearSemiringIsomorphism_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_134 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_986
d_isNearSemiringIsomorphism_472 ~v0 ~v1 v2 v3
  = du_isNearSemiringIsomorphism_472 v2 v3
du_isNearSemiringIsomorphism_472 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_134 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringIsomorphism_986
du_isNearSemiringIsomorphism_472 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringIsomorphism'46'constructor_23007
      (coe du_isNearSemiringMonomorphism_470 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism
d_IsSemiringHomomorphism_518 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism
d_IsSemiringIsomorphism_520 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism
d_IsSemiringMonomorphism_522 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism.1#-homo
d_1'35''45'homo_540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282 ->
  AgdaAny
d_1'35''45'homo_540 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1292
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916
d_isNearSemiringHomomorphism_542 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1290
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_590 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1364 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1316
d_isSemiringMonomorphism_590 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringMonomorphism_1372
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringIsomorphism.surjective
d_surjective_592 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1364 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_592 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1374 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism.injective
d_injective_620 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_620 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1326 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_628 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1316 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282
d_isSemiringHomomorphism_628 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_1324
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isSemiringHomomorphism
d_isSemiringHomomorphism_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_174 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282
d_isSemiringHomomorphism_632 ~v0 ~v1 v2 v3
  = du_isSemiringHomomorphism_632 v2 v3
du_isSemiringHomomorphism_632 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_174 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282
du_isSemiringHomomorphism_632 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringHomomorphism'46'constructor_26561
      (coe
         du_isNearSemiringHomomorphism_464
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_204 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_202 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isSemiringMonomorphism
d_isSemiringMonomorphism_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_174 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1316
d_isSemiringMonomorphism_634 ~v0 ~v1 v2 v3
  = du_isSemiringMonomorphism_634 v2 v3
du_isSemiringMonomorphism_634 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_174 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1316
du_isSemiringMonomorphism_634 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringMonomorphism'46'constructor_27871
      (coe du_isSemiringHomomorphism_632 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isSemiringIsomorphism
d_isSemiringIsomorphism_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_174 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1364
d_isSemiringIsomorphism_636 ~v0 ~v1 v2 v3
  = du_isSemiringIsomorphism_636 v2 v3
du_isSemiringIsomorphism_636 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_174 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringIsomorphism_1364
du_isSemiringIsomorphism_636 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringIsomorphism'46'constructor_29931
      (coe du_isSemiringMonomorphism_634 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism
d_IsRingWithoutOneHomomorphism_680 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism
d_IsRingWithoutOneIsoMorphism_682 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism
d_IsRingWithoutOneMonomorphism_684 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism.*-homo
d_'42''45'homo_688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1632 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_688 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_1642
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_694 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1632 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622
d_'43''45'isGroupHomomorphism_694 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1640
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1712 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1664
d_isRingWithoutOneMonomorphism_750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingWithoutOneMonomorphism_1720
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneIsoMorphism.surjective
d_surjective_752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1712 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_752 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_1722 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism.injective
d_injective_780 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1664 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_780 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_1674 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingWithoutOneMonomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_788 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1664 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1632
d_isRingWithoutOneHomomorphism_788 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingWithoutOneHomomorphism_1672
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_222 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1632
d_isRingWithoutOneHomomorphism_794 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneHomomorphism_794 v2 v3
du_isRingWithoutOneHomomorphism_794 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_222 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1632
du_isRingWithoutOneHomomorphism_794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneHomomorphism'46'constructor_33433
      (coe
         du_isGroupHomomorphism_322
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_252 (coe v0))
         (coe v1))
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__246 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneMonomorphism
d_isRingWithoutOneMonomorphism_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_222 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1664
d_isRingWithoutOneMonomorphism_800 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneMonomorphism_800 v2 v3
du_isRingWithoutOneMonomorphism_800 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_222 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneMonomorphism_1664
du_isRingWithoutOneMonomorphism_800 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneMonomorphism'46'constructor_34691
      (coe du_isRingWithoutOneHomomorphism_794 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingWithoutOneIsoMorphism
d_isRingWithoutOneIsoMorphism_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_222 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1712
d_isRingWithoutOneIsoMorphism_802 ~v0 ~v1 v2 v3
  = du_isRingWithoutOneIsoMorphism_802 v2 v3
du_isRingWithoutOneIsoMorphism_802 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_222 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneIsoMorphism_1712
du_isRingWithoutOneIsoMorphism_802 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingWithoutOneIsoMorphism'46'constructor_36755
      (coe du_isRingWithoutOneMonomorphism_800 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism
d_IsRingHomomorphism_854 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism
d_IsRingIsomorphism_856 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism
d_IsRingMonomorphism_858 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism.-‿homo
d_'45''8255'homo_1030 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2132 ->
  AgdaAny -> AgdaAny
d_'45''8255'homo_1030 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2142
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1040 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2132 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282
d_isSemiringHomomorphism_1040 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2140
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism.isRingMonomorphism
d_isRingMonomorphism_1086 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2172
d_isRingMonomorphism_1086 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingMonomorphism_2242
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingIsomorphism.surjective
d_surjective_1094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1094 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_2244 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism.injective
d_injective_1126 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1126 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2182 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsRingMonomorphism.isRingHomomorphism
d_isRingHomomorphism_1132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2172 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2132
d_isRingHomomorphism_1132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2180
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isRingHomomorphism
d_isRingHomomorphism_1140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_268 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2132
d_isRingHomomorphism_1140 ~v0 ~v1 v2 v3
  = du_isRingHomomorphism_1140 v2 v3
du_isRingHomomorphism_1140 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_268 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2132
du_isRingHomomorphism_1140 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingHomomorphism'46'constructor_41447
      (coe
         du_isSemiringHomomorphism_632
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__296 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isRingMonomorphism
d_isRingMonomorphism_1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_268 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2172
d_isRingMonomorphism_1144 ~v0 ~v1 v2 v3
  = du_isRingMonomorphism_1144 v2 v3
du_isRingMonomorphism_1144 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_268 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2172
du_isRingMonomorphism_1144 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingMonomorphism'46'constructor_42933
      (coe du_isRingHomomorphism_1140 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isRingIsomorphism
d_isRingIsomorphism_1146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_268 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2234
d_isRingIsomorphism_1146 ~v0 ~v1 v2 v3
  = du_isRingIsomorphism_1146 v2 v3
du_isRingIsomorphism_1146 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_268 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingIsomorphism_2234
du_isRingIsomorphism_1146 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingIsomorphism'46'constructor_45617
      (coe du_isRingMonomorphism_1144 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism
d_IsQuasigroupHomomorphism_1186 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism
d_IsQuasigroupIsomorphism_1188 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism
d_IsQuasigroupMonomorphism_1190 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.//-homo
d_'47''47''45'homo_1244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2540
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.\\-homo
d_'92''92''45'homo_1248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2538
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2534
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupHomomorphism.∙-homo
d_'8729''45'homo_1254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2536
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2596 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2554
d_isQuasigroupMonomorphism_1282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupMonomorphism_2604
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupIsomorphism.surjective
d_surjective_1290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2596 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_2606 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism.injective
d_injective_1316 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2554 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1316 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2564 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsQuasigroupMonomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2554 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522
d_isQuasigroupHomomorphism_1318 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_2562
      (coe v0)
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
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_326 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522
d_isQuasigroupHomomorphism_1432 ~v0 ~v1 v2 v3
  = du_isQuasigroupHomomorphism_1432 v2 v3
du_isQuasigroupHomomorphism_1432 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_326 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522
du_isQuasigroupHomomorphism_1432 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupHomomorphism'46'constructor_50171
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity.du_isRelHomomorphism_28)
      (coe
         (\ v2 v3 ->
            coe
              v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__346 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__348 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              v1
              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__350 v0 v2 v3)))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupMonomorphism
d_isQuasigroupMonomorphism_1446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_326 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2554
d_isQuasigroupMonomorphism_1446 ~v0 ~v1 v2 v3
  = du_isQuasigroupMonomorphism_1446 v2 v3
du_isQuasigroupMonomorphism_1446 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_326 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupMonomorphism_2554
du_isQuasigroupMonomorphism_1446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupMonomorphism'46'constructor_51967
      (coe du_isQuasigroupHomomorphism_1432 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isQuasigroupIsomorphism
d_isQuasigroupIsomorphism_1448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_326 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2596
d_isQuasigroupIsomorphism_1448 ~v0 ~v1 v2 v3
  = du_isQuasigroupIsomorphism_1448 v2 v3
du_isQuasigroupIsomorphism_1448 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_326 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupIsomorphism_2596
du_isQuasigroupIsomorphism_1448 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsQuasigroupIsomorphism'46'constructor_54087
      (coe du_isQuasigroupMonomorphism_1446 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism
d_IsLoopHomomorphism_1492 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism
d_IsLoopIsomorphism_1494 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism
d_IsLoopMonomorphism_1496 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2970 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2522
d_isQuasigroupHomomorphism_1508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_2978
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopHomomorphism.ε-homo
d_ε'45'homo_1512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2970 ->
  AgdaAny
d_ε'45'homo_1512 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_2980 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism.isLoopMonomorphism
d_isLoopMonomorphism_1534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3038 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3002
d_isLoopMonomorphism_1534 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isLoopMonomorphism_3046
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopIsomorphism.surjective
d_surjective_1540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3038 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1540 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3048 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism.injective
d_injective_1560 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3002 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1560 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_3012 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsLoopMonomorphism.isLoopHomomorphism
d_isLoopHomomorphism_1562 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3002 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2970
d_isLoopHomomorphism_1562 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isLoopHomomorphism_3010
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isLoopHomomorphism
d_isLoopHomomorphism_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_366 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2970
d_isLoopHomomorphism_1576 ~v0 ~v1 v2 v3
  = du_isLoopHomomorphism_1576 v2 v3
du_isLoopHomomorphism_1576 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_366 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_2970
du_isLoopHomomorphism_1576 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopHomomorphism'46'constructor_58349
      (coe
         du_isQuasigroupHomomorphism_1432
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_396 (coe v0))
         (coe v1))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_394 (coe v0)))
-- Algebra.Morphism.Construct.Identity._._.isLoopMonomorphism
d_isLoopMonomorphism_1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_366 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3002
d_isLoopMonomorphism_1578 ~v0 ~v1 v2 v3
  = du_isLoopMonomorphism_1578 v2 v3
du_isLoopMonomorphism_1578 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_366 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopMonomorphism_3002
du_isLoopMonomorphism_1578 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopMonomorphism'46'constructor_59459
      (coe du_isLoopHomomorphism_1576 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isLoopIsomorphism
d_isLoopIsomorphism_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_366 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3038
d_isLoopIsomorphism_1580 ~v0 ~v1 v2 v3
  = du_isLoopIsomorphism_1580 v2 v3
du_isLoopIsomorphism_1580 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_366 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopIsomorphism_3038
du_isLoopIsomorphism_1580 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsLoopIsomorphism'46'constructor_60703
      (coe du_isLoopMonomorphism_1578 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism
d_IsKleeneAlgebraHomomorphism_1628 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism
d_IsKleeneAlgebraIsomorphism_1630 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism
d_IsKleeneAlgebraMonomorphism_1632 a0 a1 a2 a3 a4 = ()
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3274 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282
d_isSemiringHomomorphism_1656 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3282
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraHomomorphism.⋆-homo
d_'8902''45'homo_1658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3274 ->
  AgdaAny -> AgdaAny
d_'8902''45'homo_1658 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8902''45'homo_3284
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1684 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3354 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3312
d_isKleeneAlgebraMonomorphism_1684 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isKleeneAlgebraMonomorphism_3362
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraIsomorphism.surjective
d_surjective_1692 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3354 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1692 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_3364 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism.injective
d_injective_1716 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1716 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_3322 (coe v0)
-- Algebra.Morphism.Construct.Identity._._._.IsKleeneAlgebraMonomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1718 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3312 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3274
d_isKleeneAlgebraHomomorphism_1718 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isKleeneAlgebraHomomorphism_3320
      (coe v0)
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_412 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3274
d_isKleeneAlgebraHomomorphism_1730 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraHomomorphism_1730 v2 v3
du_isKleeneAlgebraHomomorphism_1730 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_412 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3274
du_isKleeneAlgebraHomomorphism_1730 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraHomomorphism'46'constructor_63187
      (coe
         du_isSemiringHomomorphism_632
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_446 (coe v0))
         (coe v1))
      (coe
         (\ v2 ->
            coe v1 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8902'_440 v0 v2)))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraMonomorphism
d_isKleeneAlgebraMonomorphism_1734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_412 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3312
d_isKleeneAlgebraMonomorphism_1734 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraMonomorphism_1734 v2 v3
du_isKleeneAlgebraMonomorphism_1734 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_412 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraMonomorphism_3312
du_isKleeneAlgebraMonomorphism_1734 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraMonomorphism'46'constructor_64491
      (coe du_isKleeneAlgebraHomomorphism_1730 (coe v0) (coe v1))
      (coe (\ v2 v3 v4 -> v4))
-- Algebra.Morphism.Construct.Identity._._.isKleeneAlgebraIsomorphism
d_isKleeneAlgebraIsomorphism_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_412 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3354
d_isKleeneAlgebraIsomorphism_1736 ~v0 ~v1 v2 v3
  = du_isKleeneAlgebraIsomorphism_1736 v2 v3
du_isKleeneAlgebraIsomorphism_1736 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_412 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraIsomorphism_3354
du_isKleeneAlgebraIsomorphism_1736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsKleeneAlgebraIsomorphism'46'constructor_65931
      (coe du_isKleeneAlgebraMonomorphism_1734 (coe v0) (coe v1))
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
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
d_'46'generalizedField'45'c_10631 ::
  T_GeneralizeTel_10635 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_10631 v0
  = case coe v0 of
      C_mkGeneralizeTel_10637 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_10633 ::
  T_GeneralizeTel_10635 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_10633 v0
  = case coe v0 of
      C_mkGeneralizeTel_10637 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_10635 = ()
data T_GeneralizeTel_10635
  = C_mkGeneralizeTel_10637 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_13857 ::
  T_GeneralizeTel_13861 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_13857 v0
  = case coe v0 of
      C_mkGeneralizeTel_13863 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_13859 ::
  T_GeneralizeTel_13861 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_13859 v0
  = case coe v0 of
      C_mkGeneralizeTel_13863 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_13861 = ()
data T_GeneralizeTel_13861
  = C_mkGeneralizeTel_13863 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_16597 ::
  T_GeneralizeTel_16601 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_16597 v0
  = case coe v0 of
      C_mkGeneralizeTel_16603 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_16599 ::
  T_GeneralizeTel_16601 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_16599 v0
  = case coe v0 of
      C_mkGeneralizeTel_16603 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_16601 = ()
data T_GeneralizeTel_16601
  = C_mkGeneralizeTel_16603 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
-- Algebra.Morphism.Construct.Identity._..generalizedField-c
d_'46'generalizedField'45'c_18389 ::
  T_GeneralizeTel_18393 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'c_18389 v0
  = case coe v0 of
      C_mkGeneralizeTel_18395 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._..generalizedField-ℓ
d_'46'generalizedField'45'ℓ_18391 ::
  T_GeneralizeTel_18393 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ_18391 v0
  = case coe v0 of
      C_mkGeneralizeTel_18395 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Construct.Identity._.GeneralizeTel
d_GeneralizeTel_18393 = ()
data T_GeneralizeTel_18393
  = C_mkGeneralizeTel_18395 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
