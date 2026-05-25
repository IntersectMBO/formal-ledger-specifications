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
  = C_constructor_98 (AgdaAny -> AgdaAny)
                     MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 -> ()
d_Carrier_42 = erased
-- Algebra.Morphism.Bundles.MagmaHomomorphism.⟦_⟧
d_'10214'_'10215'_86 ::
  T_MagmaHomomorphism_28 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_86 v0
  = case coe v0 of
      C_constructor_98 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MagmaHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_88 ::
  T_MagmaHomomorphism_28 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_88 v0
  = case coe v0 of
      C_constructor_98 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MagmaHomomorphism._.homo
d_homo_92 ::
  T_MagmaHomomorphism_28 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_92 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe d_isMagmaHomomorphism_88 (coe v0))
-- Algebra.Morphism.Bundles.MagmaHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_94 ::
  T_MagmaHomomorphism_28 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_94 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe d_isMagmaHomomorphism_88 (coe v0))
-- Algebra.Morphism.Bundles.MagmaHomomorphism._.cong
d_cong_96 ::
  T_MagmaHomomorphism_28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_96 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe d_isMagmaHomomorphism_88 (coe v0)))
-- Algebra.Morphism.Bundles.MonoidHomomorphism
d_MonoidHomomorphism_112 a0 a1 a2 a3 a4 a5 = ()
data T_MonoidHomomorphism_112
  = C_constructor_196 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 -> ()
d_Carrier_126 = erased
-- Algebra.Morphism.Bundles.MonoidHomomorphism.A.rawMagma
d_rawMagma_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  T_MonoidHomomorphism_112 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_160 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_rawMagma_160 v4
du_rawMagma_160 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_160 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v0)
-- Algebra.Morphism.Bundles.MonoidHomomorphism.B.rawMagma
d_rawMagma_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  T_MonoidHomomorphism_112 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_174 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawMagma_174 v5
du_rawMagma_174 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_174 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v0)
-- Algebra.Morphism.Bundles.MonoidHomomorphism.⟦_⟧
d_'10214'_'10215'_178 ::
  T_MonoidHomomorphism_112 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_178 v0
  = case coe v0 of
      C_constructor_196 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MonoidHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_180 ::
  T_MonoidHomomorphism_112 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_180 v0
  = case coe v0 of
      C_constructor_196 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.homo
d_homo_184 ::
  T_MonoidHomomorphism_112 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe d_isMonoidHomomorphism_180 (coe v0)))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_186 ::
  T_MonoidHomomorphism_112 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe d_isMonoidHomomorphism_180 (coe v0))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_188 ::
  T_MonoidHomomorphism_112 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe d_isMonoidHomomorphism_180 (coe v0)))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.ε-homo
d_ε'45'homo_190 :: T_MonoidHomomorphism_112 -> AgdaAny
d_ε'45'homo_190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe d_isMonoidHomomorphism_180 (coe v0))
-- Algebra.Morphism.Bundles.MonoidHomomorphism._.cong
d_cong_192 ::
  T_MonoidHomomorphism_112 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_192 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe d_isMonoidHomomorphism_180 (coe v0))))
-- Algebra.Morphism.Bundles.MonoidHomomorphism.magmaHomomorphism
d_magmaHomomorphism_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  T_MonoidHomomorphism_112 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_194 v6
du_magmaHomomorphism_194 ::
  T_MonoidHomomorphism_112 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_194 v0
  = coe
      C_constructor_98 (coe d_'10214'_'10215'_178 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe d_isMonoidHomomorphism_180 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism
d_GroupHomomorphism_210 a0 a1 a2 a3 a4 a5 = ()
data T_GroupHomomorphism_210
  = C_constructor_318 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 -> ()
d_Carrier_226 = erased
-- Algebra.Morphism.Bundles.GroupHomomorphism.A.rawMonoid
d_rawMonoid_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  T_GroupHomomorphism_210 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_270 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_rawMonoid_270 v4
du_rawMonoid_270 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_rawMonoid_270 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0)
-- Algebra.Morphism.Bundles.GroupHomomorphism.B.rawMonoid
d_rawMonoid_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  T_GroupHomomorphism_210 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_288 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawMonoid_288 v5
du_rawMonoid_288 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_rawMonoid_288 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0)
-- Algebra.Morphism.Bundles.GroupHomomorphism.⟦_⟧
d_'10214'_'10215'_292 ::
  T_GroupHomomorphism_210 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_292 v0
  = case coe v0 of
      C_constructor_318 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.GroupHomomorphism.isGroupHomomorphism
d_isGroupHomomorphism_294 ::
  T_GroupHomomorphism_210 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
d_isGroupHomomorphism_294 v0
  = case coe v0 of
      C_constructor_318 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.GroupHomomorphism._.homo
d_homo_298 ::
  T_GroupHomomorphism_210 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
            (coe d_isGroupHomomorphism_294 (coe v0))))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_300 ::
  T_GroupHomomorphism_210 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
         (coe d_isGroupHomomorphism_294 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_302 ::
  T_GroupHomomorphism_210 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
      (coe d_isGroupHomomorphism_294 (coe v0))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_304 ::
  T_GroupHomomorphism_210 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
            (coe d_isGroupHomomorphism_294 (coe v0))))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.ε-homo
d_ε'45'homo_306 :: T_GroupHomomorphism_210 -> AgdaAny
d_ε'45'homo_306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
         (coe d_isGroupHomomorphism_294 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_308 ::
  T_GroupHomomorphism_210 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_308 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
      (coe d_isGroupHomomorphism_294 (coe v0))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.cong
d_cong_310 ::
  T_GroupHomomorphism_210 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
               (coe d_isGroupHomomorphism_294 (coe v0)))))
-- Algebra.Morphism.Bundles.GroupHomomorphism.monoidHomomorphism
d_monoidHomomorphism_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  T_GroupHomomorphism_210 -> T_MonoidHomomorphism_112
d_monoidHomomorphism_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_monoidHomomorphism_312 v6
du_monoidHomomorphism_312 ::
  T_GroupHomomorphism_210 -> T_MonoidHomomorphism_112
du_monoidHomomorphism_312 v0
  = coe
      C_constructor_196 (coe d_'10214'_'10215'_292 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
         (coe d_isGroupHomomorphism_294 (coe v0)))
-- Algebra.Morphism.Bundles.GroupHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  T_GroupHomomorphism_210 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_316 v6
du_magmaHomomorphism_316 ::
  T_GroupHomomorphism_210 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_316 v0
  = coe
      du_magmaHomomorphism_194 (coe du_monoidHomomorphism_312 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism
d_NearSemiringHomomorphism_332 a0 a1 a2 a3 a4 a5 = ()
data T_NearSemiringHomomorphism_332
  = C_constructor_452 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 -> ()
d_Carrier_356 = erased
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.A.*-rawMagma
d_'42''45'rawMagma_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_392 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'42''45'rawMagma_392 v4
du_'42''45'rawMagma_392 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'42''45'rawMagma_392 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_182 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.A.+-rawMonoid
d_'43''45'rawMonoid_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_396 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'43''45'rawMonoid_396 v4
du_'43''45'rawMonoid_396 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'43''45'rawMonoid_396 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.B.*-rawMagma
d_'42''45'rawMagma_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_412 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'rawMagma_412 v5
du_'42''45'rawMagma_412 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'42''45'rawMagma_412 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMagma_182 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.B.+-rawMonoid
d_'43''45'rawMonoid_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_416 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'rawMonoid_416 v5
du_'43''45'rawMonoid_416 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'43''45'rawMonoid_416 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_174 (coe v0)
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.⟦_⟧
d_'10214'_'10215'_422 ::
  T_NearSemiringHomomorphism_332 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_422 v0
  = case coe v0 of
      C_constructor_452 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_424 ::
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_424 v0
  = case coe v0 of
      C_constructor_452 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.*-homo
d_'42''45'homo_428 ::
  T_NearSemiringHomomorphism_332 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_992
      (coe d_isNearSemiringHomomorphism_424 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'42''45'isMagmaHomomorphism_430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_430 v6
du_'42''45'isMagmaHomomorphism_430 ::
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'42''45'isMagmaHomomorphism_430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1006
      (coe d_isNearSemiringHomomorphism_424 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.homo
d_homo_432 ::
  T_NearSemiringHomomorphism_332 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe d_isNearSemiringHomomorphism_424 (coe v0))))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_434 ::
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe d_isNearSemiringHomomorphism_424 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_436 ::
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'43''45'isMonoidHomomorphism_436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
      (coe d_isNearSemiringHomomorphism_424 (coe v0))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.ε-homo
d_ε'45'homo_438 :: T_NearSemiringHomomorphism_332 -> AgdaAny
d_ε'45'homo_438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe d_isNearSemiringHomomorphism_424 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_440 ::
  T_NearSemiringHomomorphism_332 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe d_isNearSemiringHomomorphism_424 (coe v0))))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.cong
d_cong_442 ::
  T_NearSemiringHomomorphism_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_442 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
               (coe d_isNearSemiringHomomorphism_424 (coe v0)))))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 -> T_MonoidHomomorphism_112
d_'43''45'monoidHomomorphism_444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_444 v6
du_'43''45'monoidHomomorphism_444 ::
  T_NearSemiringHomomorphism_332 -> T_MonoidHomomorphism_112
du_'43''45'monoidHomomorphism_444 v0
  = coe
      C_constructor_196 (coe d_'10214'_'10215'_422 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe d_isNearSemiringHomomorphism_424 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_446 v6
du_'42''45'magmaHomomorphism_446 ::
  T_NearSemiringHomomorphism_332 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_446 v0
  = coe
      C_constructor_98 (coe d_'10214'_'10215'_422 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1006
         (coe d_isNearSemiringHomomorphism_424 (coe v0)))
-- Algebra.Morphism.Bundles.NearSemiringHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148 ->
  T_NearSemiringHomomorphism_332 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_450 v6
du_magmaHomomorphism_450 ::
  T_NearSemiringHomomorphism_332 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_450 v0
  = coe
      du_magmaHomomorphism_194
      (coe du_'43''45'monoidHomomorphism_444 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism
d_SemiringHomomorphism_466 a0 a1 a2 a3 a4 a5 = ()
data T_SemiringHomomorphism_466
  = C_constructor_620 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 -> ()
d_Carrier_494 = erased
-- Algebra.Morphism.Bundles.SemiringHomomorphism.A.*-rawMonoid
d_'42''45'rawMonoid_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_540 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'42''45'rawMonoid_540 v4
du_'42''45'rawMonoid_540 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'42''45'rawMonoid_540 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.A.rawNearSemiring
d_rawNearSemiring_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_rawNearSemiring_552 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawNearSemiring_552 v4
du_rawNearSemiring_552 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
du_rawNearSemiring_552 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.B.*-rawMonoid
d_'42''45'rawMonoid_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_566 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'rawMonoid_566 v5
du_'42''45'rawMonoid_566 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_'42''45'rawMonoid_566 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.B.rawNearSemiring
d_rawNearSemiring_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_rawNearSemiring_578 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawNearSemiring_578 v5
du_rawNearSemiring_578 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
du_rawNearSemiring_578 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_220 (coe v0)
-- Algebra.Morphism.Bundles.SemiringHomomorphism.⟦_⟧
d_'10214'_'10215'_580 ::
  T_SemiringHomomorphism_466 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_580 v0
  = case coe v0 of
      C_constructor_620 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.SemiringHomomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_582 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_582 v0
  = case coe v0 of
      C_constructor_620 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-homo
d_'42''45'homo_586 ::
  T_SemiringHomomorphism_466 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_586 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_992
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe d_isSemiringHomomorphism_582 (coe v0)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'42''45'isMagmaHomomorphism_588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_588 v6
du_'42''45'isMagmaHomomorphism_588 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'42''45'isMagmaHomomorphism_588 v0
  = let v1 = d_isSemiringHomomorphism_582 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1006
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe v1)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'42''45'isMonoidHomomorphism_590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMonoidHomomorphism_590 v6
du_'42''45'isMonoidHomomorphism_590 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
du_'42''45'isMonoidHomomorphism_590 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1396
      (coe d_isSemiringHomomorphism_582 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.homo
d_homo_592 ::
  T_SemiringHomomorphism_466 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_592 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe d_isSemiringHomomorphism_582 (coe v0)))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_594 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_594 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe d_isSemiringHomomorphism_582 (coe v0))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_596 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'43''45'isMonoidHomomorphism_596 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe d_isSemiringHomomorphism_582 (coe v0)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.ε-homo
d_ε'45'homo_598 :: T_SemiringHomomorphism_466 -> AgdaAny
d_ε'45'homo_598 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe d_isSemiringHomomorphism_582 (coe v0))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.1#-homo
d_1'35''45'homo_600 :: T_SemiringHomomorphism_466 -> AgdaAny
d_1'35''45'homo_600 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1376
      (coe d_isSemiringHomomorphism_582 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_602 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_602 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
      (coe d_isSemiringHomomorphism_582 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_604 ::
  T_SemiringHomomorphism_466 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_604 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe d_isSemiringHomomorphism_582 (coe v0)))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.cong
d_cong_606 ::
  T_SemiringHomomorphism_466 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
                  (coe d_isSemiringHomomorphism_582 (coe v0))))))
-- Algebra.Morphism.Bundles.SemiringHomomorphism.nearSemiringHomomorphism
d_nearSemiringHomomorphism_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 -> T_NearSemiringHomomorphism_332
d_nearSemiringHomomorphism_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_608 v6
du_nearSemiringHomomorphism_608 ::
  T_SemiringHomomorphism_466 -> T_NearSemiringHomomorphism_332
du_nearSemiringHomomorphism_608 v0
  = coe
      C_constructor_452 (coe d_'10214'_'10215'_580 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe d_isSemiringHomomorphism_582 (coe v0)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_612 v6
du_'42''45'magmaHomomorphism_612 ::
  T_SemiringHomomorphism_466 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_612 v0
  = coe
      du_'42''45'magmaHomomorphism_446
      (coe du_nearSemiringHomomorphism_608 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_614 v6
du_magmaHomomorphism_614 ::
  T_SemiringHomomorphism_466 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_614 v0
  = let v1 = coe du_nearSemiringHomomorphism_608 (coe v0) in
    coe
      (coe
         du_magmaHomomorphism_194
         (coe du_'43''45'monoidHomomorphism_444 (coe v1)))
-- Algebra.Morphism.Bundles.SemiringHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 -> T_MonoidHomomorphism_112
d_'43''45'monoidHomomorphism_616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_616 v6
du_'43''45'monoidHomomorphism_616 ::
  T_SemiringHomomorphism_466 -> T_MonoidHomomorphism_112
du_'43''45'monoidHomomorphism_616 v0
  = coe
      du_'43''45'monoidHomomorphism_444
      (coe du_nearSemiringHomomorphism_608 (coe v0))
-- Algebra.Morphism.Bundles.SemiringHomomorphism.*-monoidHomomorphism
d_'42''45'monoidHomomorphism_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  T_SemiringHomomorphism_466 -> T_MonoidHomomorphism_112
d_'42''45'monoidHomomorphism_618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'monoidHomomorphism_618 v6
du_'42''45'monoidHomomorphism_618 ::
  T_SemiringHomomorphism_466 -> T_MonoidHomomorphism_112
du_'42''45'monoidHomomorphism_618 v0
  = coe
      C_constructor_196 (coe d_'10214'_'10215'_580 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1396
         (coe d_isSemiringHomomorphism_582 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism
d_KleeneAlgebraHomomorphism_634 a0 a1 a2 a3 a4 a5 = ()
data T_KleeneAlgebraHomomorphism_634
  = C_constructor_824 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 -> ()
d_Carrier_664 = erased
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.A.rawSemiring
d_rawSemiring_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_726 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawSemiring_726 v4
du_rawSemiring_726 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_726 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_474 (coe v0)
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.B.rawSemiring
d_rawSemiring_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_754 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawSemiring_754 v5
du_rawSemiring_754 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_754 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_474 (coe v0)
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.⟦_⟧
d_'10214'_'10215'_756 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_756 v0
  = case coe v0 of
      C_constructor_824 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.isKleeneAlgebraHomomorphism
d_isKleeneAlgebraHomomorphism_758 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsKleeneAlgebraHomomorphism_3714
d_isKleeneAlgebraHomomorphism_758 v0
  = case coe v0 of
      C_constructor_824 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-homo
d_'42''45'homo_762 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_762 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_992
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
            (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'42''45'isMagmaHomomorphism_764 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_764 v6
du_'42''45'isMagmaHomomorphism_764 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'42''45'isMagmaHomomorphism_764 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_758 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1006
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe v2))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'42''45'isMonoidHomomorphism_766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMonoidHomomorphism_766 v6
du_'42''45'isMonoidHomomorphism_766 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
du_'42''45'isMonoidHomomorphism_766 v0
  = let v1 = d_isKleeneAlgebraHomomorphism_758 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1396
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
            (coe v1)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.homo
d_homo_768 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_768 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                  (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_770 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_770 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
               (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_772 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'43''45'isMonoidHomomorphism_772 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
            (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.ε-homo
d_ε'45'homo_774 :: T_KleeneAlgebraHomomorphism_634 -> AgdaAny
d_ε'45'homo_774 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
               (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.1#-homo
d_1'35''45'homo_776 :: T_KleeneAlgebraHomomorphism_634 -> AgdaAny
d_1'35''45'homo_776 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1376
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
         (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_778 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_778 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
         (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_780 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_780 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                  (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_782 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_782 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
      (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.⋆-homo
d_'8902''45'homo_784 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny
d_'8902''45'homo_784 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8902''45'homo_3724
      (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.cong
d_cong_786 ::
  T_KleeneAlgebraHomomorphism_634 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                     (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism.semiringHomomorphism
d_semiringHomomorphism_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> T_SemiringHomomorphism_466
d_semiringHomomorphism_788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_semiringHomomorphism_788 v6
du_semiringHomomorphism_788 ::
  T_KleeneAlgebraHomomorphism_634 -> T_SemiringHomomorphism_466
du_semiringHomomorphism_788 v0
  = coe
      C_constructor_620 (coe d_'10214'_'10215'_756 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
         (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-homo
d_'42''45'homo_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'homo_792 v6
du_'42''45'homo_792 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'homo_792 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_992
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
            (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_794 v6
du_'42''45'magmaHomomorphism_794 ::
  T_KleeneAlgebraHomomorphism_634 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_794 v0
  = let v1 = coe du_semiringHomomorphism_788 (coe v0) in
    coe
      (coe
         du_'42''45'magmaHomomorphism_446
         (coe du_nearSemiringHomomorphism_608 (coe v1)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.*-monoidHomomorphism
d_'42''45'monoidHomomorphism_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> T_MonoidHomomorphism_112
d_'42''45'monoidHomomorphism_796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'monoidHomomorphism_796 v6
du_'42''45'monoidHomomorphism_796 ::
  T_KleeneAlgebraHomomorphism_634 -> T_MonoidHomomorphism_112
du_'42''45'monoidHomomorphism_796 v0
  = coe
      du_'42''45'monoidHomomorphism_618
      (coe du_semiringHomomorphism_788 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.homo
d_homo_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_homo_798 v6
du_homo_798 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny -> AgdaAny
du_homo_798 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                  (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isMagmaHomomorphism_800 v6
du_isMagmaHomomorphism_800 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_isMagmaHomomorphism_800 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
               (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'43''45'isMonoidHomomorphism_802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'isMonoidHomomorphism_802 v6
du_'43''45'isMonoidHomomorphism_802 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
du_'43''45'isMonoidHomomorphism_802 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
            (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_804 v6
du_magmaHomomorphism_804 ::
  T_KleeneAlgebraHomomorphism_634 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_804 v0
  = let v1 = coe du_semiringHomomorphism_788 (coe v0) in
    coe
      (let v2 = coe du_nearSemiringHomomorphism_608 (coe v1) in
       coe
         (coe
            du_magmaHomomorphism_194
            (coe du_'43''45'monoidHomomorphism_444 (coe v2))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> T_MonoidHomomorphism_112
d_'43''45'monoidHomomorphism_806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_806 v6
du_'43''45'monoidHomomorphism_806 ::
  T_KleeneAlgebraHomomorphism_634 -> T_MonoidHomomorphism_112
du_'43''45'monoidHomomorphism_806 v0
  = let v1 = coe du_semiringHomomorphism_788 (coe v0) in
    coe
      (coe
         du_'43''45'monoidHomomorphism_444
         (coe du_nearSemiringHomomorphism_608 (coe v1)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.ε-homo
d_ε'45'homo_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny
d_ε'45'homo_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_ε'45'homo_808 v6
du_ε'45'homo_808 :: T_KleeneAlgebraHomomorphism_634 -> AgdaAny
du_ε'45'homo_808 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
               (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.1#-homo
d_1'35''45'homo_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny
d_1'35''45'homo_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_1'35''45'homo_810 v6
du_1'35''45'homo_810 :: T_KleeneAlgebraHomomorphism_634 -> AgdaAny
du_1'35''45'homo_810 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1376
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
         (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isNearSemiringHomomorphism_812 v6
du_isNearSemiringHomomorphism_812 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
du_isNearSemiringHomomorphism_812 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
         (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isRelHomomorphism_814 v6
du_isRelHomomorphism_814 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_814 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                  (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))))))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemiringHomomorphism_816 v6
du_isSemiringHomomorphism_816 ::
  T_KleeneAlgebraHomomorphism_634 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
du_isSemiringHomomorphism_816 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
      (coe d_isKleeneAlgebraHomomorphism_758 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.nearSemiringHomomorphism
d_nearSemiringHomomorphism_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> T_NearSemiringHomomorphism_332
d_nearSemiringHomomorphism_818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_818 v6
du_nearSemiringHomomorphism_818 ::
  T_KleeneAlgebraHomomorphism_634 -> T_NearSemiringHomomorphism_332
du_nearSemiringHomomorphism_818 v0
  = coe
      du_nearSemiringHomomorphism_608
      (coe du_semiringHomomorphism_788 (coe v0))
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.⟦_⟧
d_'10214'_'10215'_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'10214'_'10215'_820 v6
du_'10214'_'10215'_820 ::
  T_KleeneAlgebraHomomorphism_634 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_820 v0 = coe d_'10214'_'10215'_756 (coe v0)
-- Algebra.Morphism.Bundles.KleeneAlgebraHomomorphism._.cong
d_cong_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawKleeneAlgebra_440 ->
  T_KleeneAlgebraHomomorphism_634 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_cong_822 v6
du_cong_822 ::
  T_KleeneAlgebraHomomorphism_634 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cong_822 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_3722
                     (coe d_isKleeneAlgebraHomomorphism_758 (coe v0)))))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism
d_RingWithoutOneHomomorphism_838 a0 a1 a2 a3 a4 a5 = ()
data T_RingWithoutOneHomomorphism_838
  = C_constructor_992 (AgdaAny -> AgdaAny)
                      MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 -> ()
d_Carrier_866 = erased
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.A.+-rawGroup
d_'43''45'rawGroup_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'rawGroup_912 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'43''45'rawGroup_912 v4
du_'43''45'rawGroup_912 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_'43''45'rawGroup_912 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_282 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.A.rawNearSemiring
d_rawNearSemiring_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_rawNearSemiring_924 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawNearSemiring_924 v4
du_rawNearSemiring_924 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
du_rawNearSemiring_924 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_270 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.B.+-rawGroup
d_'43''45'rawGroup_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'rawGroup_938 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'rawGroup_938 v5
du_'43''45'rawGroup_938 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_'43''45'rawGroup_938 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_282 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.B.rawNearSemiring
d_rawNearSemiring_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_rawNearSemiring_950 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawNearSemiring_950 v5
du_rawNearSemiring_950 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
du_rawNearSemiring_950 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_270 (coe v0)
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.⟦_⟧
d_'10214'_'10215'_952 ::
  T_RingWithoutOneHomomorphism_838 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_952 v0
  = case coe v0 of
      C_constructor_992 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_954 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
d_isRingWithoutOneHomomorphism_954 v0
  = case coe v0 of
      C_constructor_992 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.*-homo
d_'42''45'homo_958 ::
  T_RingWithoutOneHomomorphism_838 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_1852
      (coe d_isRingWithoutOneHomomorphism_954 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'42''45'isMagmaHomomorphism_960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_960 v6
du_'42''45'isMagmaHomomorphism_960 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'42''45'isMagmaHomomorphism_960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1872
      (coe d_isRingWithoutOneHomomorphism_954 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.homo
d_homo_962 ::
  T_RingWithoutOneHomomorphism_838 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_962 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
               (coe d_isRingWithoutOneHomomorphism_954 (coe v0)))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_964 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
d_'43''45'isGroupHomomorphism_964 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
      (coe d_isRingWithoutOneHomomorphism_954 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_966 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_966 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
            (coe d_isRingWithoutOneHomomorphism_954 (coe v0))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_968 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_968 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
         (coe d_isRingWithoutOneHomomorphism_954 (coe v0)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.ε-homo
d_ε'45'homo_970 :: T_RingWithoutOneHomomorphism_838 -> AgdaAny
d_ε'45'homo_970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
            (coe d_isRingWithoutOneHomomorphism_954 (coe v0))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isNearSemiringHomomorphism_972 v6
du_isNearSemiringHomomorphism_972 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
du_isNearSemiringHomomorphism_972 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isNearSemiringHomomorphism_1870
      (coe d_isRingWithoutOneHomomorphism_954 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_974 ::
  T_RingWithoutOneHomomorphism_838 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_974 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
               (coe d_isRingWithoutOneHomomorphism_954 (coe v0)))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_976 ::
  T_RingWithoutOneHomomorphism_838 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_976 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
         (coe d_isRingWithoutOneHomomorphism_954 (coe v0)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.cong
d_cong_978 ::
  T_RingWithoutOneHomomorphism_838 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_978 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
                  (coe d_isRingWithoutOneHomomorphism_954 (coe v0))))))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.nearSemiringHomomorphism
d_nearSemiringHomomorphism_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 -> T_NearSemiringHomomorphism_332
d_nearSemiringHomomorphism_980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_980 v6
du_nearSemiringHomomorphism_980 ::
  T_RingWithoutOneHomomorphism_838 -> T_NearSemiringHomomorphism_332
du_nearSemiringHomomorphism_980 v0
  = coe
      C_constructor_452 (coe d_'10214'_'10215'_952 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isNearSemiringHomomorphism_1870
         (coe d_isRingWithoutOneHomomorphism_954 (coe v0)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_984 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_984 v6
du_'42''45'magmaHomomorphism_984 ::
  T_RingWithoutOneHomomorphism_838 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_984 v0
  = coe
      du_'42''45'magmaHomomorphism_446
      (coe du_nearSemiringHomomorphism_980 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_986 v6
du_magmaHomomorphism_986 ::
  T_RingWithoutOneHomomorphism_838 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_986 v0
  = let v1 = coe du_nearSemiringHomomorphism_980 (coe v0) in
    coe
      (coe
         du_magmaHomomorphism_194
         (coe du_'43''45'monoidHomomorphism_444 (coe v1)))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 -> T_MonoidHomomorphism_112
d_'43''45'monoidHomomorphism_988 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_988 v6
du_'43''45'monoidHomomorphism_988 ::
  T_RingWithoutOneHomomorphism_838 -> T_MonoidHomomorphism_112
du_'43''45'monoidHomomorphism_988 v0
  = coe
      du_'43''45'monoidHomomorphism_444
      (coe du_nearSemiringHomomorphism_980 (coe v0))
-- Algebra.Morphism.Bundles.RingWithoutOneHomomorphism.+-groupHomomorphism
d_'43''45'groupHomomorphism_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  T_RingWithoutOneHomomorphism_838 -> T_GroupHomomorphism_210
d_'43''45'groupHomomorphism_990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'groupHomomorphism_990 v6
du_'43''45'groupHomomorphism_990 ::
  T_RingWithoutOneHomomorphism_838 -> T_GroupHomomorphism_210
du_'43''45'groupHomomorphism_990 v0
  = coe
      C_constructor_318 (coe d_'10214'_'10215'_952 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isGroupHomomorphism_1850
         (coe d_isRingWithoutOneHomomorphism_954 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism
d_RingHomomorphism_1006 a0 a1 a2 a3 a4 a5 = ()
data T_RingHomomorphism_1006
  = C_constructor_1200 (AgdaAny -> AgdaAny)
                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 -> ()
d_Carrier_1038 = erased
-- Algebra.Morphism.Bundles.RingHomomorphism.A.rawRingWithoutOne
d_rawRingWithoutOne_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_1108 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawRingWithoutOne_1108 v4
du_rawRingWithoutOne_1108 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_1108 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.A.rawSemiring
d_rawSemiring_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_1110 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawSemiring_1110 v4
du_rawSemiring_1110 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_1110 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.B.rawRingWithoutOne
d_rawRingWithoutOne_1140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_1140 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawRingWithoutOne_1140 v5
du_rawRingWithoutOne_1140 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_1140 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_338 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.B.rawSemiring
d_rawSemiring_1142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_1142 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawSemiring_1142 v5
du_rawSemiring_1142 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_1142 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_324 (coe v0)
-- Algebra.Morphism.Bundles.RingHomomorphism.⟦_⟧
d_'10214'_'10215'_1144 ::
  T_RingHomomorphism_1006 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1144 v0
  = case coe v0 of
      C_constructor_1200 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingHomomorphism.isRingHomomorphism
d_isRingHomomorphism_1146 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2500
d_isRingHomomorphism_1146 v0
  = case coe v0 of
      C_constructor_1200 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-homo
d_'42''45'homo_1150 ::
  T_RingHomomorphism_1006 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_992
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
            (coe d_isRingHomomorphism_1146 (coe v0))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_1152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'42''45'isMagmaHomomorphism_1152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMagmaHomomorphism_1152 v6
du_'42''45'isMagmaHomomorphism_1152 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'42''45'isMagmaHomomorphism_1152 v0
  = let v1 = d_isRingHomomorphism_1146 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMagmaHomomorphism_1006
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe v2))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'42''45'isMonoidHomomorphism_1154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'isMonoidHomomorphism_1154 v6
du_'42''45'isMonoidHomomorphism_1154 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
du_'42''45'isMonoidHomomorphism_1154 v0
  = let v1 = d_isRingHomomorphism_1146 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidHomomorphism_1396
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
            (coe v1)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.homo
d_homo_1156 ::
  T_RingHomomorphism_1006 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
                  (coe d_isRingHomomorphism_1146 (coe v0))))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
d_'43''45'isGroupHomomorphism_1158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'isGroupHomomorphism_1158 v6
du_'43''45'isGroupHomomorphism_1158 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_670
du_'43''45'isGroupHomomorphism_1158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupHomomorphism_2536
      (coe d_isRingHomomorphism_1146 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1160 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
               (coe d_isRingHomomorphism_1146 (coe v0)))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1162 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_'43''45'isMonoidHomomorphism_1162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
            (coe d_isRingHomomorphism_1146 (coe v0))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.-‿homo
d_'45''8255'homo_1164 ::
  T_RingHomomorphism_1006 -> AgdaAny -> AgdaAny
d_'45''8255'homo_1164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2510
      (coe d_isRingHomomorphism_1146 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.ε-homo
d_ε'45'homo_1166 :: T_RingHomomorphism_1006 -> AgdaAny
d_ε'45'homo_1166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
               (coe d_isRingHomomorphism_1146 (coe v0)))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.1#-homo
d_1'35''45'homo_1168 :: T_RingHomomorphism_1006 -> AgdaAny
d_1'35''45'homo_1168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_1'35''45'homo_1376
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
         (coe d_isRingHomomorphism_1146 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_1170 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_982
d_isNearSemiringHomomorphism_1170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
         (coe d_isRingHomomorphism_1146 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1172 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
                  (coe d_isRingHomomorphism_1146 (coe v0))))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isRingWithoutOneHomomorphism
d_isRingWithoutOneHomomorphism_1174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
d_isRingWithoutOneHomomorphism_1174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isRingWithoutOneHomomorphism_1174 v6
du_isRingWithoutOneHomomorphism_1174 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingWithoutOneHomomorphism_1842
du_isRingWithoutOneHomomorphism_1174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRingWithoutOneHomomorphism_2538
      (coe d_isRingHomomorphism_1146 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_1176 ::
  T_RingHomomorphism_1006 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1366
d_isSemiringHomomorphism_1176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
      (coe d_isRingHomomorphism_1146 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.cong
d_cong_1178 ::
  T_RingHomomorphism_1006 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_990
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1374
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
                     (coe d_isRingHomomorphism_1146 (coe v0)))))))
-- Algebra.Morphism.Bundles.RingHomomorphism.ringWithoutOneHomomorphism
d_ringWithoutOneHomomorphism_1180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_RingWithoutOneHomomorphism_838
d_ringWithoutOneHomomorphism_1180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ringWithoutOneHomomorphism_1180 v6
du_ringWithoutOneHomomorphism_1180 ::
  T_RingHomomorphism_1006 -> T_RingWithoutOneHomomorphism_838
du_ringWithoutOneHomomorphism_1180 v0
  = coe
      C_constructor_992 (coe d_'10214'_'10215'_1144 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRingWithoutOneHomomorphism_2538
         (coe d_isRingHomomorphism_1146 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-groupHomomorphism
d_'43''45'groupHomomorphism_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_GroupHomomorphism_210
d_'43''45'groupHomomorphism_1184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'groupHomomorphism_1184 v6
du_'43''45'groupHomomorphism_1184 ::
  T_RingHomomorphism_1006 -> T_GroupHomomorphism_210
du_'43''45'groupHomomorphism_1184 v0
  = coe
      du_'43''45'groupHomomorphism_990
      (coe du_ringWithoutOneHomomorphism_1180 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism.semiringHomomorphism
d_semiringHomomorphism_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_SemiringHomomorphism_466
d_semiringHomomorphism_1186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_semiringHomomorphism_1186 v6
du_semiringHomomorphism_1186 ::
  T_RingHomomorphism_1006 -> T_SemiringHomomorphism_466
du_semiringHomomorphism_1186 v0
  = coe
      C_constructor_620 (coe d_'10214'_'10215'_1144 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2508
         (coe d_isRingHomomorphism_1146 (coe v0)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-magmaHomomorphism
d_'42''45'magmaHomomorphism_1190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_MagmaHomomorphism_28
d_'42''45'magmaHomomorphism_1190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'magmaHomomorphism_1190 v6
du_'42''45'magmaHomomorphism_1190 ::
  T_RingHomomorphism_1006 -> T_MagmaHomomorphism_28
du_'42''45'magmaHomomorphism_1190 v0
  = let v1 = coe du_semiringHomomorphism_1186 (coe v0) in
    coe
      (coe
         du_'42''45'magmaHomomorphism_446
         (coe du_nearSemiringHomomorphism_608 (coe v1)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.*-monoidHomomorphism
d_'42''45'monoidHomomorphism_1192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_MonoidHomomorphism_112
d_'42''45'monoidHomomorphism_1192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'42''45'monoidHomomorphism_1192 v6
du_'42''45'monoidHomomorphism_1192 ::
  T_RingHomomorphism_1006 -> T_MonoidHomomorphism_112
du_'42''45'monoidHomomorphism_1192 v0
  = coe
      du_'42''45'monoidHomomorphism_618
      (coe du_semiringHomomorphism_1186 (coe v0))
-- Algebra.Morphism.Bundles.RingHomomorphism._.magmaHomomorphism
d_magmaHomomorphism_1194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_1194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_1194 v6
du_magmaHomomorphism_1194 ::
  T_RingHomomorphism_1006 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_1194 v0
  = let v1 = coe du_semiringHomomorphism_1186 (coe v0) in
    coe
      (let v2 = coe du_nearSemiringHomomorphism_608 (coe v1) in
       coe
         (coe
            du_magmaHomomorphism_194
            (coe du_'43''45'monoidHomomorphism_444 (coe v2))))
-- Algebra.Morphism.Bundles.RingHomomorphism._.+-monoidHomomorphism
d_'43''45'monoidHomomorphism_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_MonoidHomomorphism_112
d_'43''45'monoidHomomorphism_1196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'43''45'monoidHomomorphism_1196 v6
du_'43''45'monoidHomomorphism_1196 ::
  T_RingHomomorphism_1006 -> T_MonoidHomomorphism_112
du_'43''45'monoidHomomorphism_1196 v0
  = let v1 = coe du_semiringHomomorphism_1186 (coe v0) in
    coe
      (coe
         du_'43''45'monoidHomomorphism_444
         (coe du_nearSemiringHomomorphism_608 (coe v1)))
-- Algebra.Morphism.Bundles.RingHomomorphism._.nearSemiringHomomorphism
d_nearSemiringHomomorphism_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_RingHomomorphism_1006 -> T_NearSemiringHomomorphism_332
d_nearSemiringHomomorphism_1198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_nearSemiringHomomorphism_1198 v6
du_nearSemiringHomomorphism_1198 ::
  T_RingHomomorphism_1006 -> T_NearSemiringHomomorphism_332
du_nearSemiringHomomorphism_1198 v0
  = coe
      du_nearSemiringHomomorphism_608
      (coe du_semiringHomomorphism_1186 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism
d_QuasigroupHomomorphism_1214 a0 a1 a2 a3 a4 a5 = ()
data T_QuasigroupHomomorphism_1214
  = C_constructor_1328 (AgdaAny -> AgdaAny)
                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_1234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 -> ()
d_Carrier_1234 = erased
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.A.∙-rawMagma
d_'8729''45'rawMagma_1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8729''45'rawMagma_1282 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8729''45'rawMagma_1282 v4
du_'8729''45'rawMagma_1282 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'8729''45'rawMagma_1282 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'8729''45'rawMagma_376 (coe v0)
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.B.∙-rawMagma
d_'8729''45'rawMagma_1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8729''45'rawMagma_1302 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'rawMagma_1302 v5
du_'8729''45'rawMagma_1302 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'8729''45'rawMagma_1302 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_'8729''45'rawMagma_376 (coe v0)
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.⟦_⟧
d_'10214'_'10215'_1304 ::
  T_QuasigroupHomomorphism_1214 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1304 v0
  = case coe v0 of
      C_constructor_1328 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1306 ::
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
d_isQuasigroupHomomorphism_1306 v0
  = case coe v0 of
      C_constructor_1328 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.//-homo
d_'47''47''45'homo_1310 ::
  T_QuasigroupHomomorphism_1214 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1310 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2938
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_1312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'47''47''45'isMagmaHomomorphism_1312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'47''47''45'isMagmaHomomorphism_1312 v6
du_'47''47''45'isMagmaHomomorphism_1312 ::
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'47''47''45'isMagmaHomomorphism_1312 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'47''47''45'isMagmaHomomorphism_2948
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.\\-homo
d_'92''92''45'homo_1314 ::
  T_QuasigroupHomomorphism_1214 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1314 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2936
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_1316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'92''92''45'isMagmaHomomorphism_1316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'92''92''45'isMagmaHomomorphism_1316 v6
du_'92''92''45'isMagmaHomomorphism_1316 ::
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'92''92''45'isMagmaHomomorphism_1316 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'92''92''45'isMagmaHomomorphism_2946
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1318 ::
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1318 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2932
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.∙-homo
d_'8729''45'homo_1320 ::
  T_QuasigroupHomomorphism_1214 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1320 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2934
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_1322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8729''45'isMagmaHomomorphism_1322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'isMagmaHomomorphism_1322 v6
du_'8729''45'isMagmaHomomorphism_1322 ::
  T_QuasigroupHomomorphism_1214 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8729''45'isMagmaHomomorphism_1322 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_'8729''45'isMagmaHomomorphism_2944
      (coe d_isQuasigroupHomomorphism_1306 (coe v0))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism._.cong
d_cong_1324 ::
  T_QuasigroupHomomorphism_1214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2932
         (coe d_isQuasigroupHomomorphism_1306 (coe v0)))
-- Algebra.Morphism.Bundles.QuasigroupHomomorphism.magmaHomomorphism
d_magmaHomomorphism_1326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  T_QuasigroupHomomorphism_1214 -> T_MagmaHomomorphism_28
d_magmaHomomorphism_1326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_magmaHomomorphism_1326 v6
du_magmaHomomorphism_1326 ::
  T_QuasigroupHomomorphism_1214 -> T_MagmaHomomorphism_28
du_magmaHomomorphism_1326 v0
  = coe
      C_constructor_98 (coe d_'10214'_'10215'_1304 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'8729''45'isMagmaHomomorphism_2944
         (coe d_isQuasigroupHomomorphism_1306 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism
d_LoopHomomorphism_1342 a0 a1 a2 a3 a4 a5 = ()
data T_LoopHomomorphism_1342
  = C_constructor_1476 (AgdaAny -> AgdaAny)
                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398
-- Algebra.Morphism.Bundles.A.Carrier
d_Carrier_1362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 -> ()
d_Carrier_1362 = erased
-- Algebra.Morphism.Bundles.LoopHomomorphism.A.rawQuasigroup
d_rawQuasigroup_1418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
d_rawQuasigroup_1418 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_rawQuasigroup_1418 v4
du_rawQuasigroup_1418 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
du_rawQuasigroup_1418 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_422 (coe v0)
-- Algebra.Morphism.Bundles.LoopHomomorphism.B.rawQuasigroup
d_rawQuasigroup_1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
d_rawQuasigroup_1442 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawQuasigroup_1442 v5
du_rawQuasigroup_1442 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
du_rawQuasigroup_1442 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.du_rawQuasigroup_422 (coe v0)
-- Algebra.Morphism.Bundles.LoopHomomorphism.⟦_⟧
d_'10214'_'10215'_1448 ::
  T_LoopHomomorphism_1342 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1448 v0
  = case coe v0 of
      C_constructor_1476 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.LoopHomomorphism.isLoopHomomorphism
d_isLoopHomomorphism_1450 ::
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsLoopHomomorphism_3398
d_isLoopHomomorphism_1450 v0
  = case coe v0 of
      C_constructor_1476 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Bundles.LoopHomomorphism._.//-homo
d_'47''47''45'homo_1454 ::
  T_LoopHomomorphism_1342 -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'homo_1454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'47''47''45'homo_2938
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
         (coe d_isLoopHomomorphism_1450 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.//-isMagmaHomomorphism
d_'47''47''45'isMagmaHomomorphism_1456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'47''47''45'isMagmaHomomorphism_1456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'47''47''45'isMagmaHomomorphism_1456 v6
du_'47''47''45'isMagmaHomomorphism_1456 ::
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'47''47''45'isMagmaHomomorphism_1456 v0
  = let v1 = d_isLoopHomomorphism_1450 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'47''47''45'isMagmaHomomorphism_2948
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
            (coe v1)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.\\-homo
d_'92''92''45'homo_1458 ::
  T_LoopHomomorphism_1342 -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'homo_1458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'92''92''45'homo_2936
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
         (coe d_isLoopHomomorphism_1450 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.\\-isMagmaHomomorphism
d_'92''92''45'isMagmaHomomorphism_1460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'92''92''45'isMagmaHomomorphism_1460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'92''92''45'isMagmaHomomorphism_1460 v6
du_'92''92''45'isMagmaHomomorphism_1460 ::
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'92''92''45'isMagmaHomomorphism_1460 v0
  = let v1 = d_isLoopHomomorphism_1450 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'92''92''45'isMagmaHomomorphism_2946
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
            (coe v1)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.isQuasigroupHomomorphism
d_isQuasigroupHomomorphism_1462 ::
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsQuasigroupHomomorphism_2920
d_isQuasigroupHomomorphism_1462 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
      (coe d_isLoopHomomorphism_1450 (coe v0))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1464 ::
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2932
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
         (coe d_isLoopHomomorphism_1450 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.ε-homo
d_ε'45'homo_1466 :: T_LoopHomomorphism_1342 -> AgdaAny
d_ε'45'homo_1466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_3408
      (coe d_isLoopHomomorphism_1450 (coe v0))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.∙-homo
d_'8729''45'homo_1468 ::
  T_LoopHomomorphism_1342 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_'8729''45'homo_2934
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
         (coe d_isLoopHomomorphism_1450 (coe v0)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.∙-isMagmaHomomorphism
d_'8729''45'isMagmaHomomorphism_1470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_'8729''45'isMagmaHomomorphism_1470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'isMagmaHomomorphism_1470 v6
du_'8729''45'isMagmaHomomorphism_1470 ::
  T_LoopHomomorphism_1342 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
du_'8729''45'isMagmaHomomorphism_1470 v0
  = let v1 = d_isLoopHomomorphism_1450 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'8729''45'isMagmaHomomorphism_2944
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
            (coe v1)))
-- Algebra.Morphism.Bundles.LoopHomomorphism._.cong
d_cong_1472 ::
  T_LoopHomomorphism_1342 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1472 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_2932
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
            (coe d_isLoopHomomorphism_1450 (coe v0))))
-- Algebra.Morphism.Bundles.LoopHomomorphism.quasigroupHomomorphism
d_quasigroupHomomorphism_1474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  T_LoopHomomorphism_1342 -> T_QuasigroupHomomorphism_1214
d_quasigroupHomomorphism_1474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_quasigroupHomomorphism_1474 v6
du_quasigroupHomomorphism_1474 ::
  T_LoopHomomorphism_1342 -> T_QuasigroupHomomorphism_1214
du_quasigroupHomomorphism_1474 v0
  = coe
      C_constructor_1328 (coe d_'10214'_'10215'_1448 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isQuasigroupHomomorphism_3406
         (coe d_isLoopHomomorphism_1450 (coe v0)))
