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

module MAlonzo.Code.Algebra.Morphism.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Algebra.Morphism.Bundles.MagmaHomomorphism
d_MagmaHomomorphism_28 a0 a1 a2 a3 a4 a5 = ()
data T_MagmaHomomorphism_28
  = C_MagmaHomomorphism'46'constructor_487 (AgdaAny -> AgdaAny)
                                           MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 -> ()
d_Carrier_42 = erased
-- Algebra.Morphism.Bundles.MagmaHomomorphism.⟦_⟧
d_'10214'_'10215'_86 ::
  T_MagmaHomomorphism_28 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_86 v0
  = case coe v0 of
      C_MagmaHomomorphism'46'constructor_487 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MagmaHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_88 ::
  T_MagmaHomomorphism_28 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_88 v0
  = case coe v0 of
      C_MagmaHomomorphism'46'constructor_487 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MagmaHomomorphism._.homo
d_homo_92 ::
  T_MagmaHomomorphism_28 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_92 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe d_isMagmaHomomorphism_88 (coe v0))
-- Algebra.Morphism.Bundles.MagmaHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_94 ::
  T_MagmaHomomorphism_28 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_94 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe d_isMagmaHomomorphism_88 (coe v0))
-- Algebra.Morphism.Bundles.MagmaHomomorphism._.cong
d_cong_96 ::
  T_MagmaHomomorphism_28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_96 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe d_isMagmaHomomorphism_88 (coe v0)))
-- Algebra.Morphism.Bundles.MonoidHomomorphism
d_MonoidHomomorphism_110 a0 a1 a2 a3 a4 a5 = ()
data T_MonoidHomomorphism_110
  = C_MonoidHomomorphism'46'constructor_2579 (AgdaAny -> AgdaAny)
                                             MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 -> ()
d_Carrier_124 = erased
-- Algebra.Morphism.Bundles.MonoidHomomorphism.A.rawMagma
d_rawMagma_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  T_MonoidHomomorphism_110 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_158 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_rawMagma_158 v4
du_rawMagma_158 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_158 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_92 (coe v0)
-- Algebra.Morphism.Bundles.MonoidHomomorphism.B.rawMagma
d_rawMagma_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  T_MonoidHomomorphism_110 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_172 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawMagma_172 v5
du_rawMagma_172 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_172 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_92 (coe v0)
-- Algebra.Morphism.Bundles.MonoidHomomorphism.⟦_⟧
d_'10214'_'10215'_176 ::
  T_MonoidHomomorphism_110 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_176 v0
  = case coe v0 of
      C_MonoidHomomorphism'46'constructor_2579 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MonoidHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_178 ::
  T_MonoidHomomorphism_110 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_178 v0
  = case coe v0 of
      C_MonoidHomomorphism'46'constructor_2579 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.homo
d_homo_182 ::
  T_MonoidHomomorphism_110 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_178 (coe v0)))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_184 ::
  T_MonoidHomomorphism_110 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe d_isMonoidHomomorphism_178 (coe v0))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_186 ::
  T_MonoidHomomorphism_110 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_178 (coe v0)))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.ε-homo
d_ε'45'homo_188 :: T_MonoidHomomorphism_110 -> AgdaAny
d_ε'45'homo_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe d_isMonoidHomomorphism_178 (coe v0))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.cong
d_cong_190 ::
  T_MonoidHomomorphism_110 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_190 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe d_isMonoidHomomorphism_178 (coe v0))))
-- Algebra.Morphism.Bundles.MonoidHomomorphism.magmaHomomorphism
d_magmaHomomorphism_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  T_MonoidHomomorphism_110 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_192 v6
du_magmaHomomorphism_192 ::
  T_MonoidHomomorphism_110 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_192 v0
  = coe
      C_MagmaHomomorphism'46'constructor_487
      (coe d_'10214'_'10215'_176 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe d_isMonoidHomomorphism_178 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism
d_GroupHomomorphism_206 a0 a1 a2 a3 a4 a5 = ()
data T_GroupHomomorphism_206
  = C_GroupHomomorphism'46'constructor_5279 (AgdaAny -> AgdaAny)
                                            MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 -> ()
d_Carrier_222 = erased
-- Algebra.Morphism.Bundles.GroupHomomorphism.A.rawMonoid
d_rawMonoid_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  T_GroupHomomorphism_206 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_266 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_rawMonoid_266 v4
du_rawMonoid_266 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_rawMonoid_266 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_128 (coe v0)
-- Algebra.Morphism.Bundles.GroupHomomorphism.B.rawMonoid
d_rawMonoid_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  T_GroupHomomorphism_206 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_284 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawMonoid_284 v5
du_rawMonoid_284 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_rawMonoid_284 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_128 (coe v0)
-- Algebra.Morphism.Bundles.GroupHomomorphism.⟦_⟧
d_'10214'_'10215'_288 ::
  T_GroupHomomorphism_206 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_288 v0
  = case coe v0 of
      C_GroupHomomorphism'46'constructor_5279 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.GroupHomomorphism.isGroupHomomorphism
d_isGroupHomomorphism_290 ::
  T_GroupHomomorphism_206 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
d_isGroupHomomorphism_290 v0
  = case coe v0 of
      C_GroupHomomorphism'46'constructor_5279 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.GroupHomomorphism._.homo
d_homo_294 ::
  T_GroupHomomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_290 (coe v0))))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_296 ::
  T_GroupHomomorphism_206 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_296 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_290 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_298 ::
  T_GroupHomomorphism_206 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
      (coe d_isGroupHomomorphism_290 (coe v0))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_300 ::
  T_GroupHomomorphism_206 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
            (coe d_isGroupHomomorphism_290 (coe v0))))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.ε-homo
d_ε'45'homo_302 :: T_GroupHomomorphism_206 -> AgdaAny
d_ε'45'homo_302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_290 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_304 ::
  T_GroupHomomorphism_206 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_644
      (coe d_isGroupHomomorphism_290 (coe v0))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.cong
d_cong_306 ::
  T_GroupHomomorphism_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
               (coe d_isGroupHomomorphism_290 (coe v0)))))
-- Algebra.Morphism.Bundles.GroupHomomorphism.monoidHomomorphism
d_monoidHomomorphism_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  T_GroupHomomorphism_206 -> T_MonoidHomomorphism_110
d_monoidHomomorphism_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_monoidHomomorphism_308 v6
du_monoidHomomorphism_308 ::
  T_GroupHomomorphism_206 -> T_MonoidHomomorphism_110
du_monoidHomomorphism_308 v0
  = coe
      C_MonoidHomomorphism'46'constructor_2579
      (coe d_'10214'_'10215'_288 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
         (coe d_isGroupHomomorphism_290 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  T_GroupHomomorphism_206 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_312 v6
du_magmaHomomorphism_312 ::
  T_GroupHomomorphism_206 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_312 v0
  = coe
      du_magmaHomomorphism_192 (coe du_monoidHomomorphism_308 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism
d_NearSemiringHomomorphism_326 a0 a1 a2 a3 a4 a5 = ()
data T_NearSemiringHomomorphism_326
  = C_NearSemiringHomomorphism'46'constructor_8661 (AgdaAny ->
                                                    AgdaAny)
                                                   MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 -> ()
d_Carrier_350 = erased
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.A.*-rawMagma
d_'42''45'rawMagma_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'42''45'rawMagma_386 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'42''45'rawMagma_386 v4
du_'42''45'rawMagma_386 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'42''45'rawMagma_386 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_174 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.A.+-rawMonoid
d_'43''45'rawMonoid_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'43''45'rawMonoid_390 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'43''45'rawMonoid_390 v4
du_'43''45'rawMonoid_390 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'43''45'rawMonoid_390 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.B.*-rawMagma
d_'42''45'rawMagma_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'42''45'rawMagma_406 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'rawMagma_406 v5
du_'42''45'rawMagma_406 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'42''45'rawMagma_406 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_174 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.B.+-rawMonoid
d_'43''45'rawMonoid_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'43''45'rawMonoid_410 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'rawMonoid_410 v5
du_'43''45'rawMonoid_410 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'43''45'rawMonoid_410 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_166 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.⟦_⟧
d_'10214'_'10215'_416 ::
  T_NearSemiringHomomorphism_326 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_416 v0
  = case coe v0 of
      C_NearSemiringHomomorphism'46'constructor_8661 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_418 ::
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_418 v0
  = case coe v0 of
      C_NearSemiringHomomorphism'46'constructor_8661 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.*-homo
d_'42''45'homo_422 ::
  T_NearSemiringHomomorphism_326 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_938
      (coe d_isNearSemiringHomomorphism_418 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_424 v6
du_'42''45'isMagmaHomomorphism_424 ::
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_952
      (coe d_isNearSemiringHomomorphism_418 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.homo
d_homo_426 ::
  T_NearSemiringHomomorphism_326 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_418 (coe v0))))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_428 ::
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_418 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_430 ::
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
      (coe d_isNearSemiringHomomorphism_418 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.ε-homo
d_ε'45'homo_432 :: T_NearSemiringHomomorphism_326 -> AgdaAny
d_ε'45'homo_432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_418 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_434 ::
  T_NearSemiringHomomorphism_326 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe d_isNearSemiringHomomorphism_418 (coe v0))))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.cong
d_cong_436 ::
  T_NearSemiringHomomorphism_326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_436 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
               (coe d_isNearSemiringHomomorphism_418 (coe v0)))))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 -> T_MonoidHomomorphism_110
d_'43''45'monoidHomomorphism_438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_438 v6
du_'43''45'monoidHomomorphism_438 ::
  T_NearSemiringHomomorphism_326 -> T_MonoidHomomorphism_110
du_'43''45'monoidHomomorphism_438 v0
  = coe
      C_MonoidHomomorphism'46'constructor_2579
      (coe d_'10214'_'10215'_416 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe d_isNearSemiringHomomorphism_418 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_440 v6
du_'42''45'magmaHomomorphism_440 ::
  T_NearSemiringHomomorphism_326 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_440 v0
  = coe
      C_MagmaHomomorphism'46'constructor_487
      (coe d_'10214'_'10215'_416 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_952
         (coe d_isNearSemiringHomomorphism_418 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140 ->
  T_NearSemiringHomomorphism_326 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_444 v6
du_magmaHomomorphism_444 ::
  T_NearSemiringHomomorphism_326 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_444 v0
  = coe
      du_magmaHomomorphism_192
      (coe du_'43''45'monoidHomomorphism_438 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism
d_SemiringHomomorphism_458 a0 a1 a2 a3 a4 a5 = ()
data T_SemiringHomomorphism_458
  = C_SemiringHomomorphism'46'constructor_12601 (AgdaAny -> AgdaAny)
                                                MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 -> ()
d_Carrier_486 = erased
-- Algebra.Morphism.Bundles.SemiringHomomorphism.A.*-rawMonoid
d_'42''45'rawMonoid_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'42''45'rawMonoid_532 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'42''45'rawMonoid_532 v4
du_'42''45'rawMonoid_532 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'42''45'rawMonoid_532 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.A.rawNearSemiring
d_rawNearSemiring_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
d_rawNearSemiring_544 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawNearSemiring_544 v4
du_rawNearSemiring_544 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
du_rawNearSemiring_544 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.B.*-rawMonoid
d_'42''45'rawMonoid_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_'42''45'rawMonoid_558 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'rawMonoid_558 v5
du_'42''45'rawMonoid_558 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_'42''45'rawMonoid_558 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.B.rawNearSemiring
d_rawNearSemiring_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
d_rawNearSemiring_570 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawNearSemiring_570 v5
du_rawNearSemiring_570 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
du_rawNearSemiring_570 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_210 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.⟦_⟧
d_'10214'_'10215'_572 ::
  T_SemiringHomomorphism_458 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_572 v0
  = case coe v0 of
      C_SemiringHomomorphism'46'constructor_12601 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.SemiringHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_574 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_574 v0
  = case coe v0 of
      C_SemiringHomomorphism'46'constructor_12601 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-homo
d_'42''45'homo_578 ::
  T_SemiringHomomorphism_458 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_578 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_938
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_574 (coe v0)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_580 v6
du_'42''45'isMagmaHomomorphism_580 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_580 v0
  = let v1 = d_isSemiringHomomorphism_574 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_952
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe v1)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMonoidHomomorphism_582 v6
du_'42''45'isMonoidHomomorphism_582 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_582 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1324
      (coe d_isSemiringHomomorphism_574 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.homo
d_homo_584 ::
  T_SemiringHomomorphism_458 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_584 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_574 (coe v0)))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_586 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_586 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_574 (coe v0))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_588 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_588 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_574 (coe v0)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.ε-homo
d_ε'45'homo_590 :: T_SemiringHomomorphism_458 -> AgdaAny
d_ε'45'homo_590 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe d_isSemiringHomomorphism_574 (coe v0))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.1#-homo
d_1'35''45'homo_592 :: T_SemiringHomomorphism_458 -> AgdaAny
d_1'35''45'homo_592 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1304
      (coe d_isSemiringHomomorphism_574 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_594 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_594 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
      (coe d_isSemiringHomomorphism_574 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_596 ::
  T_SemiringHomomorphism_458 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_596 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe d_isSemiringHomomorphism_574 (coe v0)))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.cong
d_cong_598 ::
  T_SemiringHomomorphism_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_598 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
                  (coe d_isSemiringHomomorphism_574 (coe v0))))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism.nearSemiringHomomorphism
d_nearSemiringHomomorphism_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 -> T_NearSemiringHomomorphism_326
d_nearSemiringHomomorphism_600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_600 v6
du_nearSemiringHomomorphism_600 ::
  T_SemiringHomomorphism_458 -> T_NearSemiringHomomorphism_326
du_nearSemiringHomomorphism_600 v0
  = coe
      C_NearSemiringHomomorphism'46'constructor_8661
      (coe d_'10214'_'10215'_572 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe d_isSemiringHomomorphism_574 (coe v0)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_604 v6
du_'42''45'magmaHomomorphism_604 ::
  T_SemiringHomomorphism_458 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_604 v0
  = coe
      du_'42''45'magmaHomomorphism_440
      (coe du_nearSemiringHomomorphism_600 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_606 v6
du_magmaHomomorphism_606 ::
  T_SemiringHomomorphism_458 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_606 v0
  = let v1 = coe du_nearSemiringHomomorphism_600 (coe v0) in
    coe
      (coe
         du_magmaHomomorphism_192
         (coe du_'43''45'monoidHomomorphism_438 (coe v1)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 -> T_MonoidHomomorphism_110
d_'43''45'monoidHomomorphism_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_608 v6
du_'43''45'monoidHomomorphism_608 ::
  T_SemiringHomomorphism_458 -> T_MonoidHomomorphism_110
du_'43''45'monoidHomomorphism_608 v0
  = coe
      du_'43''45'monoidHomomorphism_438
      (coe du_nearSemiringHomomorphism_600 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism.*-monoidHomomorphism
d_'42''45'monoidHomomorphism_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  T_SemiringHomomorphism_458 -> T_MonoidHomomorphism_110
d_'42''45'monoidHomomorphism_610 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'monoidHomomorphism_610 v6
du_'42''45'monoidHomomorphism_610 ::
  T_SemiringHomomorphism_458 -> T_MonoidHomomorphism_110
du_'42''45'monoidHomomorphism_610 v0
  = coe
      C_MonoidHomomorphism'46'constructor_2579
      (coe d_'10214'_'10215'_572 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1324
         (coe d_isSemiringHomomorphism_574 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism
d_KleeneAlgebraHomomorphism_624 a0 a1 a2 a3 a4 a5 = ()
data T_KleeneAlgebraHomomorphism_624
  = C_KleeneAlgebraHomomorphism'46'constructor_17181 (AgdaAny ->
                                                      AgdaAny)
                                                     MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 -> ()
d_Carrier_654 = erased
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.A.rawSemiring
d_rawSemiring_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_716 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawSemiring_716 v4
du_rawSemiring_716 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_716 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_454 (coe v0)
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.B.rawSemiring
d_rawSemiring_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_744 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawSemiring_744 v5
du_rawSemiring_744 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_744 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_454 (coe v0)
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.⟦_⟧
d_'10214'_'10215'_746 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_746 v0
  = case coe v0 of
      C_KleeneAlgebraHomomorphism'46'constructor_17181 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_748 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3522
d_isKleeneAlgebraHomomorphism_748 v0
  = case coe v0 of
      C_KleeneAlgebraHomomorphism'46'constructor_17181 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-homo
d_'42''45'homo_752 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_752 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_938
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
            (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_754 v6
du_'42''45'isMagmaHomomorphism_754 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_754 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_952
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe v2))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMonoidHomomorphism_756 v6
du_'42''45'isMonoidHomomorphism_756 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_756 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1324
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
            (coe v1)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.homo
d_homo_758 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_758 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                  (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_760 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_760 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
               (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_762 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_762 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
            (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.ε-homo
d_ε'45'homo_764 :: T_KleeneAlgebraHomomorphism_624 -> AgdaAny
d_ε'45'homo_764 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
               (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.1#-homo
d_1'35''45'homo_766 :: T_KleeneAlgebraHomomorphism_624 -> AgdaAny
d_1'35''45'homo_766 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1304
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_768 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_768 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_770 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_770 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                  (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_772 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_772 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
      (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.⋆-homo
d_'8902''45'homo_774 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny
d_'8902''45'homo_774 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8902''45'homo_3532
      (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.cong
d_cong_776 ::
  T_KleeneAlgebraHomomorphism_624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_776 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                     (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.semiringHomomorphism
d_semiringHomomorphism_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> T_SemiringHomomorphism_458
d_semiringHomomorphism_778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_semiringHomomorphism_778 v6
du_semiringHomomorphism_778 ::
  T_KleeneAlgebraHomomorphism_624 -> T_SemiringHomomorphism_458
du_semiringHomomorphism_778 v0
  = coe
      C_SemiringHomomorphism'46'constructor_12601
      (coe d_'10214'_'10215'_746 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-homo
d_'42''45'homo_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'homo_782 v6
du_'42''45'homo_782 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'homo_782 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_938
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
            (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_784 v6
du_'42''45'magmaHomomorphism_784 ::
  T_KleeneAlgebraHomomorphism_624 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_784 v0
  = let v1 = coe du_semiringHomomorphism_778 (coe v0) in
    coe
      (coe
         du_'42''45'magmaHomomorphism_440
         (coe du_nearSemiringHomomorphism_600 (coe v1)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-monoidHomomorphism
d_'42''45'monoidHomomorphism_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> T_MonoidHomomorphism_110
d_'42''45'monoidHomomorphism_786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'monoidHomomorphism_786 v6
du_'42''45'monoidHomomorphism_786 ::
  T_KleeneAlgebraHomomorphism_624 -> T_MonoidHomomorphism_110
du_'42''45'monoidHomomorphism_786 v0
  = coe
      du_'42''45'monoidHomomorphism_610
      (coe du_semiringHomomorphism_778 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.homo
d_homo_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_homo_788 v6
du_homo_788 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny -> AgdaAny
du_homo_788 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                  (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isMagmaHomomorphism_790 v6
du_isMagmaHomomorphism_790 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_isMagmaHomomorphism_790 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
               (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'isMonoidHomomorphism_792 v6
du_'43''45'isMonoidHomomorphism_792 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
du_'43''45'isMonoidHomomorphism_792 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
            (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_794 v6
du_magmaHomomorphism_794 ::
  T_KleeneAlgebraHomomorphism_624 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_794 v0
  = let v1 = coe du_semiringHomomorphism_778 (coe v0) in
    coe
      (let v2 = coe du_nearSemiringHomomorphism_600 (coe v1) in
       coe
         (coe
            du_magmaHomomorphism_192
            (coe du_'43''45'monoidHomomorphism_438 (coe v2))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> T_MonoidHomomorphism_110
d_'43''45'monoidHomomorphism_796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_796 v6
du_'43''45'monoidHomomorphism_796 ::
  T_KleeneAlgebraHomomorphism_624 -> T_MonoidHomomorphism_110
du_'43''45'monoidHomomorphism_796 v0
  = let v1 = coe du_semiringHomomorphism_778 (coe v0) in
    coe
      (coe
         du_'43''45'monoidHomomorphism_438
         (coe du_nearSemiringHomomorphism_600 (coe v1)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.ε-homo
d_ε'45'homo_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny
d_ε'45'homo_798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_ε'45'homo_798 v6
du_ε'45'homo_798 :: T_KleeneAlgebraHomomorphism_624 -> AgdaAny
du_ε'45'homo_798 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
               (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.1#-homo
d_1'35''45'homo_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny
d_1'35''45'homo_800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_1'35''45'homo_800 v6
du_1'35''45'homo_800 :: T_KleeneAlgebraHomomorphism_624 -> AgdaAny
du_1'35''45'homo_800 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1304
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isNearSemiringHomomorphism_802 v6
du_isNearSemiringHomomorphism_802 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_802 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
         (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isRelHomomorphism_804 v6
du_isRelHomomorphism_804 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_804 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                  (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemiringHomomorphism_806 v6
du_isSemiringHomomorphism_806 ::
  T_KleeneAlgebraHomomorphism_624 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
du_isSemiringHomomorphism_806 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
      (coe d_isKleeneAlgebraHomomorphism_748 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.nearSemiringHomomorphism
d_nearSemiringHomomorphism_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> T_NearSemiringHomomorphism_326
d_nearSemiringHomomorphism_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_808 v6
du_nearSemiringHomomorphism_808 ::
  T_KleeneAlgebraHomomorphism_624 -> T_NearSemiringHomomorphism_326
du_nearSemiringHomomorphism_808 v0
  = coe
      du_nearSemiringHomomorphism_600
      (coe du_semiringHomomorphism_778 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.⟦_⟧
d_'10214'_'10215'_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'10214'_'10215'_810 v6
du_'10214'_'10215'_810 ::
  T_KleeneAlgebraHomomorphism_624 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_810 v0 = coe d_'10214'_'10215'_746 (coe v0)
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.cong
d_cong_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_420 ->
  T_KleeneAlgebraHomomorphism_624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_cong_812 v6
du_cong_812 ::
  T_KleeneAlgebraHomomorphism_624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cong_812 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3530
                     (coe d_isKleeneAlgebraHomomorphism_748 (coe v0)))))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism
d_RingWithoutOneHomomorphism_826 a0 a1 a2 a3 a4 a5 = ()
data T_RingWithoutOneHomomorphism_826
  = C_RingWithoutOneHomomorphism'46'constructor_22227 (AgdaAny ->
                                                       AgdaAny)
                                                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 -> ()
d_Carrier_854 = erased
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.A.+-rawGroup
d_'43''45'rawGroup_900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_'43''45'rawGroup_900 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'43''45'rawGroup_900 v4
du_'43''45'rawGroup_900 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_'43''45'rawGroup_900 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_270 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.A.rawNearSemiring
d_rawNearSemiring_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
d_rawNearSemiring_912 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawNearSemiring_912 v4
du_rawNearSemiring_912 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
du_rawNearSemiring_912 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_258 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.B.+-rawGroup
d_'43''45'rawGroup_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_'43''45'rawGroup_926 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'rawGroup_926 v5
du_'43''45'rawGroup_926 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_'43''45'rawGroup_926 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_270 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.B.rawNearSemiring
d_rawNearSemiring_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
d_rawNearSemiring_938 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawNearSemiring_938 v5
du_rawNearSemiring_938 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_140
du_rawNearSemiring_938 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_258 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.⟦_⟧
d_'10214'_'10215'_940 ::
  T_RingWithoutOneHomomorphism_826 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_940 v0
  = case coe v0 of
      C_RingWithoutOneHomomorphism'46'constructor_22227 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_942 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_942 v0
  = case coe v0 of
      C_RingWithoutOneHomomorphism'46'constructor_22227 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.*-homo
d_'42''45'homo_946 ::
  T_RingWithoutOneHomomorphism_826 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_946 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_1756
      (coe d_isRingWithoutOneHomomorphism_942 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_948 v6
du_'42''45'isMagmaHomomorphism_948 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_948 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1776
      (coe d_isRingWithoutOneHomomorphism_942 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.homo
d_homo_950 ::
  T_RingWithoutOneHomomorphism_826 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_950 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
               (coe d_isRingWithoutOneHomomorphism_942 (coe v0)))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_952 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_952 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
      (coe d_isRingWithoutOneHomomorphism_942 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_954 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_954 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
            (coe d_isRingWithoutOneHomomorphism_942 (coe v0))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_956 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_956 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_942 (coe v0)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.ε-homo
d_ε'45'homo_958 :: T_RingWithoutOneHomomorphism_826 -> AgdaAny
d_ε'45'homo_958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
            (coe d_isRingWithoutOneHomomorphism_942 (coe v0))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isNearSemiringHomomorphism_960 v6
du_isNearSemiringHomomorphism_960 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
du_isNearSemiringHomomorphism_960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isNearSemiringHomomorphism_1774
      (coe d_isRingWithoutOneHomomorphism_942 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_962 ::
  T_RingWithoutOneHomomorphism_826 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_962 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
               (coe d_isRingWithoutOneHomomorphism_942 (coe v0)))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_964 ::
  T_RingWithoutOneHomomorphism_826 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_964 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_644
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_942 (coe v0)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.cong
d_cong_966 ::
  T_RingWithoutOneHomomorphism_826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_966 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_642
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
                  (coe d_isRingWithoutOneHomomorphism_942 (coe v0))))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.nearSemiringHomomorphism
d_nearSemiringHomomorphism_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 -> T_NearSemiringHomomorphism_326
d_nearSemiringHomomorphism_968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_968 v6
du_nearSemiringHomomorphism_968 ::
  T_RingWithoutOneHomomorphism_826 -> T_NearSemiringHomomorphism_326
du_nearSemiringHomomorphism_968 v0
  = coe
      C_NearSemiringHomomorphism'46'constructor_8661
      (coe d_'10214'_'10215'_940 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isNearSemiringHomomorphism_1774
         (coe d_isRingWithoutOneHomomorphism_942 (coe v0)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_972 v6
du_'42''45'magmaHomomorphism_972 ::
  T_RingWithoutOneHomomorphism_826 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_972 v0
  = coe
      du_'42''45'magmaHomomorphism_440
      (coe du_nearSemiringHomomorphism_968 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_974 v6
du_magmaHomomorphism_974 ::
  T_RingWithoutOneHomomorphism_826 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_974 v0
  = let v1 = coe du_nearSemiringHomomorphism_968 (coe v0) in
    coe
      (coe
         du_magmaHomomorphism_192
         (coe du_'43''45'monoidHomomorphism_438 (coe v1)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 -> T_MonoidHomomorphism_110
d_'43''45'monoidHomomorphism_976 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_976 v6
du_'43''45'monoidHomomorphism_976 ::
  T_RingWithoutOneHomomorphism_826 -> T_MonoidHomomorphism_110
du_'43''45'monoidHomomorphism_976 v0
  = coe
      du_'43''45'monoidHomomorphism_438
      (coe du_nearSemiringHomomorphism_968 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.+-groupHomomorphism
d_'43''45'groupHomomorphism_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  T_RingWithoutOneHomomorphism_826 -> T_GroupHomomorphism_206
d_'43''45'groupHomomorphism_978 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'groupHomomorphism_978 v6
du_'43''45'groupHomomorphism_978 ::
  T_RingWithoutOneHomomorphism_826 -> T_GroupHomomorphism_206
du_'43''45'groupHomomorphism_978 v0
  = coe
      C_GroupHomomorphism'46'constructor_5279
      (coe d_'10214'_'10215'_940 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1754
         (coe d_isRingWithoutOneHomomorphism_942 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism
d_RingHomomorphism_992 a0 a1 a2 a3 a4 a5 = ()
data T_RingHomomorphism_992
  = C_RingHomomorphism'46'constructor_26823 (AgdaAny -> AgdaAny)
                                            MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 -> ()
d_Carrier_1024 = erased
-- Algebra.Morphism.Bundles.RingHomomorphism.A.rawRingWithoutOne
d_rawRingWithoutOne_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_1094 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawRingWithoutOne_1094 v4
du_rawRingWithoutOne_1094 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_1094 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.A.rawSemiring
d_rawSemiring_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_1096 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawSemiring_1096 v4
du_rawSemiring_1096 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_1096 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.B.rawRingWithoutOne
d_rawRingWithoutOne_1126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_1126 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawRingWithoutOne_1126 v5
du_rawRingWithoutOne_1126 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_1126 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_324 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.B.rawSemiring
d_rawSemiring_1128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_1128 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawSemiring_1128 v5
du_rawSemiring_1128 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_1128 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_310 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.⟦_⟧
d_'10214'_'10215'_1130 ::
  T_RingHomomorphism_992 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1130 v0
  = case coe v0 of
      C_RingHomomorphism'46'constructor_26823 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingHomomorphism.isRingHomomorphism
d_isRingHomomorphism_1132 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2374
d_isRingHomomorphism_1132 v0
  = case coe v0 of
      C_RingHomomorphism'46'constructor_26823 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-homo
d_'42''45'homo_1136 ::
  T_RingHomomorphism_992 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_938
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
            (coe d_isRingHomomorphism_1132 (coe v0))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'42''45'isMagmaHomomorphism_1138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_1138 v6
du_'42''45'isMagmaHomomorphism_1138 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'42''45'isMagmaHomomorphism_1138 v0
  = let v1 = d_isRingHomomorphism_1132 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_952
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe v2))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'42''45'isMonoidHomomorphism_1140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMonoidHomomorphism_1140 v6
du_'42''45'isMonoidHomomorphism_1140 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
du_'42''45'isMonoidHomomorphism_1140 v0
  = let v1 = d_isRingHomomorphism_1132 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1324
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
            (coe v1)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.homo
d_homo_1142 ::
  T_RingHomomorphism_992 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_198
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
                  (coe d_isRingHomomorphism_1132 (coe v0))))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
d_'43''45'isGroupHomomorphism_1144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'isGroupHomomorphism_1144 v6
du_'43''45'isGroupHomomorphism_1144 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_634
du_'43''45'isGroupHomomorphism_1144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupHomomorphism_2410
      (coe d_isRingHomomorphism_1132 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1146 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
               (coe d_isRingHomomorphism_1132 (coe v0)))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1148 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_'43''45'isMonoidHomomorphism_1148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
            (coe d_isRingHomomorphism_1132 (coe v0))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.-‿homo
d_'45''8255'homo_1150 ::
  T_RingHomomorphism_992 -> AgdaAny -> AgdaAny
d_'45''8255'homo_1150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2384
      (coe d_isRingHomomorphism_1132 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.ε-homo
d_ε'45'homo_1152 :: T_RingHomomorphism_992 -> AgdaAny
d_ε'45'homo_1152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_372
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
               (coe d_isRingHomomorphism_1132 (coe v0)))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.1#-homo
d_1'35''45'homo_1154 :: T_RingHomomorphism_992 -> AgdaAny
d_1'35''45'homo_1154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1304
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
         (coe d_isRingHomomorphism_1132 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1156 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_928
d_isNearSemiringHomomorphism_1156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
         (coe d_isRingHomomorphism_1132 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1158 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
                  (coe d_isRingHomomorphism_1132 (coe v0))))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
d_isRingWithoutOneHomomorphism_1160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isRingWithoutOneHomomorphism_1160 v6
du_isRingWithoutOneHomomorphism_1160 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1746
du_isRingWithoutOneHomomorphism_1160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRingWithoutOneHomomorphism_2412
      (coe d_isRingHomomorphism_1132 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_1162 ::
  T_RingHomomorphism_992 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1294
d_isSemiringHomomorphism_1162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
      (coe d_isRingHomomorphism_1132 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.cong
d_cong_1164 ::
  T_RingHomomorphism_992 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_936
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1302
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
                     (coe d_isRingHomomorphism_1132 (coe v0)))))))
-- Algebra.Morphism.Bundles.RingHomomorphism.ringWithoutOneHomomorphism
d_ringWithoutOneHomomorphism_1166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_RingWithoutOneHomomorphism_826
d_ringWithoutOneHomomorphism_1166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ringWithoutOneHomomorphism_1166 v6
du_ringWithoutOneHomomorphism_1166 ::
  T_RingHomomorphism_992 -> T_RingWithoutOneHomomorphism_826
du_ringWithoutOneHomomorphism_1166 v0
  = coe
      C_RingWithoutOneHomomorphism'46'constructor_22227
      (coe d_'10214'_'10215'_1130 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRingWithoutOneHomomorphism_2412
         (coe d_isRingHomomorphism_1132 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-groupHomomorphism
d_'43''45'groupHomomorphism_1170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_GroupHomomorphism_206
d_'43''45'groupHomomorphism_1170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'groupHomomorphism_1170 v6
du_'43''45'groupHomomorphism_1170 ::
  T_RingHomomorphism_992 -> T_GroupHomomorphism_206
du_'43''45'groupHomomorphism_1170 v0
  = coe
      du_'43''45'groupHomomorphism_978
      (coe du_ringWithoutOneHomomorphism_1166 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism.semiringHomomorphism
d_semiringHomomorphism_1172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_SemiringHomomorphism_458
d_semiringHomomorphism_1172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_semiringHomomorphism_1172 v6
du_semiringHomomorphism_1172 ::
  T_RingHomomorphism_992 -> T_SemiringHomomorphism_458
du_semiringHomomorphism_1172 v0
  = coe
      C_SemiringHomomorphism'46'constructor_12601
      (coe d_'10214'_'10215'_1130 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2382
         (coe d_isRingHomomorphism_1132 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_1176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_1176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_1176 v6
du_'42''45'magmaHomomorphism_1176 ::
  T_RingHomomorphism_992 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_1176 v0
  = let v1 = coe du_semiringHomomorphism_1172 (coe v0) in
    coe
      (coe
         du_'42''45'magmaHomomorphism_440
         (coe du_nearSemiringHomomorphism_600 (coe v1)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-monoidHomomorphism
d_'42''45'monoidHomomorphism_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_MonoidHomomorphism_110
d_'42''45'monoidHomomorphism_1178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'monoidHomomorphism_1178 v6
du_'42''45'monoidHomomorphism_1178 ::
  T_RingHomomorphism_992 -> T_MonoidHomomorphism_110
du_'42''45'monoidHomomorphism_1178 v0
  = coe
      du_'42''45'monoidHomomorphism_610
      (coe du_semiringHomomorphism_1172 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_1180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_1180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_1180 v6
du_magmaHomomorphism_1180 ::
  T_RingHomomorphism_992 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_1180 v0
  = let v1 = coe du_semiringHomomorphism_1172 (coe v0) in
    coe
      (let v2 = coe du_nearSemiringHomomorphism_600 (coe v1) in
       coe
         (coe
            du_magmaHomomorphism_192
            (coe du_'43''45'monoidHomomorphism_438 (coe v2))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_MonoidHomomorphism_110
d_'43''45'monoidHomomorphism_1182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_1182 v6
du_'43''45'monoidHomomorphism_1182 ::
  T_RingHomomorphism_992 -> T_MonoidHomomorphism_110
du_'43''45'monoidHomomorphism_1182 v0
  = let v1 = coe du_semiringHomomorphism_1172 (coe v0) in
    coe
      (coe
         du_'43''45'monoidHomomorphism_438
         (coe du_nearSemiringHomomorphism_600 (coe v1)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.nearSemiringHomomorphism
d_nearSemiringHomomorphism_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_RingHomomorphism_992 -> T_NearSemiringHomomorphism_326
d_nearSemiringHomomorphism_1184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_1184 v6
du_nearSemiringHomomorphism_1184 ::
  T_RingHomomorphism_992 -> T_NearSemiringHomomorphism_326
du_nearSemiringHomomorphism_1184 v0
  = coe
      du_nearSemiringHomomorphism_600
      (coe du_semiringHomomorphism_1172 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism
d_QuasigroupHomomorphism_1198 a0 a1 a2 a3 a4 a5 = ()
data T_QuasigroupHomomorphism_1198
  = C_QuasigroupHomomorphism'46'constructor_32365 (AgdaAny ->
                                                   AgdaAny)
                                                  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 -> ()
d_Carrier_1218 = erased
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.A.∙-rawMagma
d_'8729''45'rawMagma_1266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'8729''45'rawMagma_1266 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8729''45'rawMagma_1266 v4
du_'8729''45'rawMagma_1266 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'8729''45'rawMagma_1266 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'8729''45'rawMagma_360 (coe v0)
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.B.∙-rawMagma
d_'8729''45'rawMagma_1286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'8729''45'rawMagma_1286 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'rawMagma_1286 v5
du_'8729''45'rawMagma_1286 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'8729''45'rawMagma_1286 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'8729''45'rawMagma_360 (coe v0)
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.⟦_⟧
d_'10214'_'10215'_1288 ::
  T_QuasigroupHomomorphism_1198 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1288 v0
  = case coe v0 of
      C_QuasigroupHomomorphism'46'constructor_32365 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1290 ::
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_1290 v0
  = case coe v0 of
      C_QuasigroupHomomorphism'46'constructor_32365 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.//-homo
d_'47''47''45'homo_1294 ::
  T_QuasigroupHomomorphism_1198 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2788
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_1296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_1296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'47''47''45'isMagmaHomomorphism_1296 v6
du_'47''47''45'isMagmaHomomorphism_1296 ::
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_1296 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'47''47''45'isMagmaHomomorphism_2798
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.\\-homo
d_'92''92''45'homo_1298 ::
  T_QuasigroupHomomorphism_1198 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2786
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_1300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'92''92''45'isMagmaHomomorphism_1300 v6
du_'92''92''45'isMagmaHomomorphism_1300 ::
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_1300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'92''92''45'isMagmaHomomorphism_2796
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1302 ::
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2782
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.∙-homo
d_'8729''45'homo_1304 ::
  T_QuasigroupHomomorphism_1198 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2784
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_1306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_1306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'isMagmaHomomorphism_1306 v6
du_'8729''45'isMagmaHomomorphism_1306 ::
  T_QuasigroupHomomorphism_1198 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_1306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'8729''45'isMagmaHomomorphism_2794
      (coe d_isQuasigroupHomomorphism_1290 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.cong
d_cong_1308 ::
  T_QuasigroupHomomorphism_1198 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1308 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2782
         (coe d_isQuasigroupHomomorphism_1290 (coe v0)))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.magmaHomomorphism
d_magmaHomomorphism_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  T_QuasigroupHomomorphism_1198 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_1310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_1310 v6
du_magmaHomomorphism_1310 ::
  T_QuasigroupHomomorphism_1198 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_1310 v0
  = coe
      C_MagmaHomomorphism'46'constructor_487
      (coe d_'10214'_'10215'_1288 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'8729''45'isMagmaHomomorphism_2794
         (coe d_isQuasigroupHomomorphism_1290 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism
d_LoopHomomorphism_1324 a0 a1 a2 a3 a4 a5 = ()
data T_LoopHomomorphism_1324
  = C_LoopHomomorphism'46'constructor_35661 (AgdaAny -> AgdaAny)
                                            MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 -> ()
d_Carrier_1344 = erased
-- Algebra.Morphism.Bundles.LoopHomomorphism.A.rawQuasigroup
d_rawQuasigroup_1400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
d_rawQuasigroup_1400 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawQuasigroup_1400 v4
du_rawQuasigroup_1400 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
du_rawQuasigroup_1400 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_404 (coe v0)
-- Algebra.Morphism.Bundles.LoopHomomorphism.B.rawQuasigroup
d_rawQuasigroup_1424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
d_rawQuasigroup_1424 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawQuasigroup_1424 v5
du_rawQuasigroup_1424 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
du_rawQuasigroup_1424 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_404 (coe v0)
-- Algebra.Morphism.Bundles.LoopHomomorphism.⟦_⟧
d_'10214'_'10215'_1430 ::
  T_LoopHomomorphism_1324 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1430 v0
  = case coe v0 of
      C_LoopHomomorphism'46'constructor_35661 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.LoopHomomorphism.isLoopHomomorphism
d_isLoopHomomorphism_1432 ::
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3218
d_isLoopHomomorphism_1432 v0
  = case coe v0 of
      C_LoopHomomorphism'46'constructor_35661 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.LoopHomomorphism._.//-homo
d_'47''47''45'homo_1436 ::
  T_LoopHomomorphism_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2788
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_1432 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_1438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'47''47''45'isMagmaHomomorphism_1438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'47''47''45'isMagmaHomomorphism_1438 v6
du_'47''47''45'isMagmaHomomorphism_1438 ::
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'47''47''45'isMagmaHomomorphism_1438 v0
  = let v1 = d_isLoopHomomorphism_1432 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'47''47''45'isMagmaHomomorphism_2798
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
            (coe v1)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.\\-homo
d_'92''92''45'homo_1440 ::
  T_LoopHomomorphism_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2786
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_1432 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'92''92''45'isMagmaHomomorphism_1442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'92''92''45'isMagmaHomomorphism_1442 v6
du_'92''92''45'isMagmaHomomorphism_1442 ::
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'92''92''45'isMagmaHomomorphism_1442 v0
  = let v1 = d_isLoopHomomorphism_1432 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'92''92''45'isMagmaHomomorphism_2796
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
            (coe v1)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1444 ::
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2770
d_isQuasigroupHomomorphism_1444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
      (coe d_isLoopHomomorphism_1432 (coe v0))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1446 ::
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2782
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_1432 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.ε-homo
d_ε'45'homo_1448 :: T_LoopHomomorphism_1324 -> AgdaAny
d_ε'45'homo_1448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_3228
      (coe d_isLoopHomomorphism_1432 (coe v0))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.∙-homo
d_'8729''45'homo_1450 ::
  T_LoopHomomorphism_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2784
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_1432 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_1452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_'8729''45'isMagmaHomomorphism_1452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'isMagmaHomomorphism_1452 v6
du_'8729''45'isMagmaHomomorphism_1452 ::
  T_LoopHomomorphism_1324 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
du_'8729''45'isMagmaHomomorphism_1452 v0
  = let v1 = d_isLoopHomomorphism_1432 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'8729''45'isMagmaHomomorphism_2794
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
            (coe v1)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.cong
d_cong_1454 ::
  T_LoopHomomorphism_1324 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2782
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
            (coe d_isLoopHomomorphism_1432 (coe v0))))
-- Algebra.Morphism.Bundles.LoopHomomorphism.quasigroupHomomorphism
d_quasigroupHomomorphism_1456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  T_LoopHomomorphism_1324 -> T_QuasigroupHomomorphism_1198
d_quasigroupHomomorphism_1456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_quasigroupHomomorphism_1456 v6
du_quasigroupHomomorphism_1456 ::
  T_LoopHomomorphism_1324 -> T_QuasigroupHomomorphism_1198
du_quasigroupHomomorphism_1456 v0
  = coe
      C_QuasigroupHomomorphism'46'constructor_32365
      (coe d_'10214'_'10215'_1430 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3226
         (coe d_isLoopHomomorphism_1432 (coe v0)))
