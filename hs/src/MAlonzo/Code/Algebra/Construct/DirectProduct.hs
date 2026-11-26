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

module MAlonzo.Code.Algebra.Construct.DirectProduct where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent

-- Algebra.Construct.DirectProduct.rawMagma
d_rawMagma_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_rawMagma_14 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawMagma_14 v4 v5
du_rawMagma_14 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_rawMagma_14 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__60 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__60 (coe v1))))
-- Algebra.Construct.DirectProduct.rawMonoid
d_rawMonoid_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_48 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawMonoid_48 v4 v5
du_rawMonoid_48 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
du_rawMonoid_48 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v1)))
-- Algebra.Construct.DirectProduct.rawGroup
d_rawGroup_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_rawGroup_86 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawGroup_86 v4 v5
du_rawGroup_86 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
du_rawGroup_86 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_142
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 (coe v1))))
-- Algebra.Construct.DirectProduct.rawSemiring
d_rawSemiring_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_132 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawSemiring_132 v4 v5
du_rawSemiring_132 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_132 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_234
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__212 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__212 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__214 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__214 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_216 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_216 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_218 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_218 (coe v1)))
-- Algebra.Construct.DirectProduct.rawRingWithoutOne
d_rawRingWithoutOne_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
d_rawRingWithoutOne_194 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rawRingWithoutOne_194 v4 v5
du_rawRingWithoutOne_194 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_240
du_rawRingWithoutOne_194 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_284
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__262 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__262 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__264 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__264 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__266 (coe v0))
         (coe
            (\ v2 -> MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__266 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_268 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_268 (coe v1)))
-- Algebra.Construct.DirectProduct.rawRing
d_rawRing_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_256 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawRing_256 v4 v5
du_rawRing_256 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_256 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_344
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 (coe v0))
         (coe
            (\ v2 -> MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322 (coe v1)))
-- Algebra.Construct.DirectProduct.rawQuasigroup
d_rawQuasigroup_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
d_rawQuasigroup_330 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rawQuasigroup_330 v4 v5
du_rawQuasigroup_330 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_350
du_rawQuasigroup_330 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_386
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__370 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__370 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__372 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__372 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__374 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__374 (coe v1))))
-- Algebra.Construct.DirectProduct.rawLoop
d_rawLoop_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392
d_rawLoop_380 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawLoop_380 v4 v5
du_rawLoop_380 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_392
du_rawLoop_380 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_434
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__414 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__414 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__416 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__416 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__418 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__418 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_420 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_420 (coe v1)))
-- Algebra.Construct.DirectProduct.magma
d_magma_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_438 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_magma_438 v4 v5
du_magma_438 ::
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_438 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__92 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__92 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_212
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                    (MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                         (MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))))
-- Algebra.Construct.DirectProduct.idempotentMagma
d_idempotentMagma_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_250 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_250 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_250
d_idempotentMagma_516 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_idempotentMagma_516 v4 v5
du_idempotentMagma_516 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_250 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_250 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_250
du_idempotentMagma_516 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_304
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__268 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__268 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_288
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_298 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_298 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_264
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentMagma_270 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_264
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentMagma_270 (coe v1))))))
-- Algebra.Construct.DirectProduct.alternativeMagma
d_alternativeMagma_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_310 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_310 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_310
d_alternativeMagma_604 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_alternativeMagma_604 v4 v5
du_alternativeMagma_604 ::
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_310 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_310 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_310
du_alternativeMagma_604 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_368
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__328 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__328 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_330
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_362 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_362 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'737'_326
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_330 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'737'_326
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_330 (coe v1))))
                       v2)))
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'691'_328
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_330 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'691'_328
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_330 (coe v1))))
                       v2)))))
-- Algebra.Construct.DirectProduct.flexibleMagma
d_flexibleMagma_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_374 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_374 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_374
d_flexibleMagma_706 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_flexibleMagma_706 v4 v5
du_flexibleMagma_706 ::
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_374 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_374 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_374
du_flexibleMagma_706 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_428
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__392 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__392 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_368
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_422 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_422 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_flex_344
                          (coe MAlonzo.Code.Algebra.Bundles.d_isFlexibleMagma_394 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_flex_344
                          (coe MAlonzo.Code.Algebra.Bundles.d_isFlexibleMagma_394 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.medialMagma
d_medialMagma_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_434 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_434 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_434
d_medialMagma_796 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_medialMagma_796 v4 v5
du_medialMagma_796 ::
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_434 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_434 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_434
du_medialMagma_796 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_488
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__452 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__452 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_406
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_482 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_482 (coe v1))))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_medial_382
                                (coe MAlonzo.Code.Algebra.Bundles.d_isMedialMagma_454 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_medial_382
                                (coe MAlonzo.Code.Algebra.Bundles.d_isMedialMagma_454 (coe v1))))
                          v2)
                       v3)
                    v4))))
-- Algebra.Construct.DirectProduct.semimedialMagma
d_semimedialMagma_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_494 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_494 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_494
d_semimedialMagma_890 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_semimedialMagma_890 v4 v5
du_semimedialMagma_890 ::
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_494 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_494 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_494
du_semimedialMagma_890 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_552
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__512 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__512 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_448
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_546 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_546 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'737'_444
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_514 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'737'_444
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_514 (coe v1))))
                          v2)
                       v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'691'_446
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_514 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'691'_446
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_514 (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.semigroup
d_semigroup_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_996 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_semigroup_996 v4 v5
du_semigroup_996 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_996 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__576 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__576 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_524
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_606 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_606 (coe v1))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_assoc_500
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_578 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_assoc_500
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_578 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.band
d_band_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
d_band_1092 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_band_1092 v4 v5
du_band_1092 ::
  MAlonzo.Code.Algebra.Bundles.T_Band_620 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
du_band_1092 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_682
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__638 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__638 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_566
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemigroup_578
            (coe
               du_semigroup_996
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_672 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_672 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_538
                  (coe MAlonzo.Code.Algebra.Bundles.d_isBand_640 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_538
                  (coe MAlonzo.Code.Algebra.Bundles.d_isBand_640 (coe v1))))))
-- Algebra.Construct.DirectProduct.commutativeSemigroup
d_commutativeSemigroup_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_commutativeSemigroup_1196 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeSemigroup_1196 v4 v5
du_commutativeSemigroup_1196 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_commutativeSemigroup_1196 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__706 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_610
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemigroup_578
            (coe
               du_semigroup_996
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_580
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_580
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                             (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.unitalMagma
d_unitalMagma_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_844 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_844 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_844
d_unitalMagma_1310 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_unitalMagma_1310 v4 v5
du_unitalMagma_1310 ::
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_844 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_844 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_844
du_unitalMagma_1310 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_908
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__864 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__864 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_866 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_866 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_708
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_900 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_900 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_704
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_704
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_706
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_706
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v1)))))))
-- Algebra.Construct.DirectProduct.monoid
d_monoid_1416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1416 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_monoid_1416 v4 v5
du_monoid_1416 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_1416 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__934 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__934 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_936 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_936 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_760
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemigroup_578
            (coe
               du_semigroup_996
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v1)))))))
-- Algebra.Construct.DirectProduct.commutativeMonoid
d_commutativeMonoid_1546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_commutativeMonoid_1546 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeMonoid_1546 v4 v5
du_commutativeMonoid_1546 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_commutativeMonoid_1546 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_822
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMonoid_938
            (coe
               du_monoid_1416
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_778
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_778
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.idempotentCommutativeMonoid
d_idempotentCommutativeMonoid_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186
d_idempotentCommutativeMonoid_1704 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_idempotentCommutativeMonoid_1704 v4 v5
du_idempotentCommutativeMonoid_1704 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1186
du_idempotentCommutativeMonoid_1704 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1296
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1206 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1206 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1208 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1208 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_952
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
            (coe
               du_commutativeMonoid_1546
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_1266 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_1266 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_898
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentCommutativeMonoid_1210
                     (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_898
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentCommutativeMonoid_1210
                     (coe v1))))))
-- Algebra.Construct.DirectProduct.invertibleMagma
d_invertibleMagma_1896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1400 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1400 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1400
d_invertibleMagma_1896 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_invertibleMagma_1896 v4 v5
du_invertibleMagma_1896 ::
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1400 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1400 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1400
du_invertibleMagma_1896 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1470
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1422 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1422 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1424 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1424 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1426 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1426 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1006
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_1462 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_1462 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1002
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1002
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1004
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1004
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_978
                    (MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_978
                         (MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.invertibleUnitalMagma
d_invertibleUnitalMagma_2010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1476 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1476 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1476
d_invertibleUnitalMagma_2010 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_invertibleUnitalMagma_2010 v4 v5
du_invertibleUnitalMagma_2010 ::
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1476 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1476 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1476
du_invertibleUnitalMagma_2010 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1558
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1498 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1498 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1500 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1500 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1502 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1502 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1068
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428
            (coe
               du_invertibleMagma_1896
               (coe MAlonzo.Code.Algebra.Bundles.du_invertibleMagma_1548 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_invertibleMagma_1548 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_1062
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_1062
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_1064
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_1064
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v1)))))))
-- Algebra.Construct.DirectProduct.group
d_group_2148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564
d_group_2148 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_group_2148 v4 v5
du_group_2148 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564
du_group_2148 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1676
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1166
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMonoid_938
            (coe
               du_monoid_1416
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1656 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1656 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1146
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1146
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094
                    (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094
                         (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.abelianGroup
d_abelianGroup_2346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
d_abelianGroup_2346 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_abelianGroup_2346 v4 v5
du_abelianGroup_2346 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
du_abelianGroup_2346 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1808
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1704 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1704 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1706 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1706 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1708 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1708 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1254
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
            (coe
               du_group_2148
               (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_1188
                          (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_1188
                          (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204
d_semiringWithoutAnnihilatingZero_2568 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_semiringWithoutAnnihilatingZero_2568 v4 v5
du_semiringWithoutAnnihilatingZero_2568 ::
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204
du_semiringWithoutAnnihilatingZero_2568 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2350
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2228 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__2228 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__2230 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__2230 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2232 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2232 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_2234 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_2234 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
            (coe
               du_commutativeMonoid_1546
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1560
                    (MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                       (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1560
                         (MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                            (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1562
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1562
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                (coe v1))))
                       v2)
                    v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1620
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v1)))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_1568
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_1568
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                   (coe v1))))
                          v2)
                       v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_1570
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_1570
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                   (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.semiring
d_semiring_2840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_2840 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_semiring_2840 v4 v5
du_semiring_2840 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_2840 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2518
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2228
         (coe du_U_3126 (coe v0) (coe v1)))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2230
         (coe du_U_3126 (coe v0) (coe v1)))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2232
         (coe du_U_3126 (coe v0) (coe v1)))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2234
         (coe du_U_3126 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1742
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
            (coe du_U_3126 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_1426
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_1426
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v1)))
                          v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_1428
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_1428
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1732
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v1)))
                          v3))))))
-- Algebra.Construct.DirectProduct._.U
d_U_3126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204
d_U_3126 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_U_3126 v4 v5
du_U_3126 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2204
du_U_3126 v0 v1
  = coe
      du_semiringWithoutAnnihilatingZero_2568
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
         (coe v1))
-- Algebra.Construct.DirectProduct.commutativeSemiring
d_commutativeSemiring_3136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_3136 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeSemiring_3136 v4 v5
du_commutativeSemiring_3136 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_3136 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2228
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2230
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2232
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2234
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1864
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
            (coe
               du_semiring_2840
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1768
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1768
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556
                             (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.idempotentSemiring
d_idempotentSemiring_3466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2904 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2904 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2904
d_idempotentSemiring_3466 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_idempotentSemiring_3466 v4 v5
du_idempotentSemiring_3466 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2904 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2904 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2904
du_idempotentSemiring_3466 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3086
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2228
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2230
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2232
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2234
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2112
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
            (coe
               du_semiring_2840
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3034 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'idem_2016
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2936 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'idem_2016
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2936
                     (coe v1))))))
-- Algebra.Construct.DirectProduct.kleeneAlgebra
d_kleeneAlgebra_3794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092
d_kleeneAlgebra_3794 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_kleeneAlgebra_3794 v4 v5
du_kleeneAlgebra_3794 ::
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3092
du_kleeneAlgebra_3794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3286
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2228
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240
                  (coe v1)))))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2230
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240
                  (coe v1)))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'8902'_3122 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'8902'_3122 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2232
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240
                  (coe v1)))))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2234
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_3034
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240
                  (coe v1)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2252
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2936
            (coe
               du_idempotentSemiring_3466
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3240 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'737'_2244
                     (coe MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'737'_2244
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'691'_2246
                     (coe MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'691'_2246
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v1))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 v4 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'737'_2248
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'737'_2248
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128
                                      (coe v1))))
                             v2)
                          v3)
                       v4)))
            (coe
               (\ v2 v3 v4 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'691'_2250
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'691'_2250
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128
                                      (coe v1))))
                             v2)
                          v3)
                       v4)))))
-- Algebra.Construct.DirectProduct.ringWithoutOne
d_ringWithoutOne_4164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3622 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3622 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3622
d_ringWithoutOne_4164 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_ringWithoutOne_4164 v4 v5
du_ringWithoutOne_4164 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3622 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3622 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3622
du_ringWithoutOne_4164 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3778
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3646 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3646 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3648 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3648 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3648 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3650 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Algebra.Bundles.d_'45'__3650 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3652 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3652 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2610
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710
            (coe
               du_abelianGroup_2346
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2516
                    (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2516
                         (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2518
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2518
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v1))))
                       v2)
                    v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2588
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2588
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v1))))
                          v2)
                       v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2590
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2590
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3654 (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.nonAssociativeRing
d_nonAssociativeRing_4446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3784 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3784 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3784
d_nonAssociativeRing_4446 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_nonAssociativeRing_4446 v4 v5
du_nonAssociativeRing_4446 ::
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3784 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3784 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3784
du_nonAssociativeRing_4446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3936
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3810 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3810 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3812 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3812 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3812 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3814 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Algebra.Bundles.d_'45'__3814 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3816 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3816 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3818 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3818 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2742
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710
            (coe
               du_abelianGroup_2346
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3918 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3918
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2646
                    (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2646
                         (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_704
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_704
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                           (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_706
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_706
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2734
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                           (coe v1)))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2724
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2724
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                                   (coe v1))))
                          v2)
                       v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2726
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2726
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820
                                   (coe v1))))
                          v2)
                       v3))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2720
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820 (coe v0))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2720
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820 (coe v1))
                          v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2722
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820 (coe v0))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2722
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3820 (coe v1))
                          v3))))))
-- Algebra.Construct.DirectProduct.quasiring
d_quasiring_4728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3292 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3292 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3292
d_quasiring_4728 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_quasiring_4728 v4 v5
du_quasiring_4728 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3292 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3292 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3292
du_quasiring_4728 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3428
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3316 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3316 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3318 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3318 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3318 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3320 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3320 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3322 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3322 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2360
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMonoid_938
            (coe
               du_monoid_1416
               (coe MAlonzo.Code.Algebra.Bundles.du_'43''45'monoid_3400 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'monoid_3400 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2286
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2286
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2288
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2288
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1))))
                       v2)
                    v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2348
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1)))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2332
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2332
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1))))
                          v2)
                       v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2334
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2334
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1))))
                          v2)
                       v3))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2336
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)) v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2336
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1)) v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2338
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)) v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2338
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1)) v3))))))
-- Algebra.Construct.DirectProduct.nearring
d_nearring_4982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3942 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3942 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3942
d_nearring_4982 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_nearring_4982 v4 v5
du_nearring_4982 ::
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3942 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3942 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3942
du_nearring_4982 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4090
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3968 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3968 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3970 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3970 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3970 (coe v1)))
                 (coe v2) (coe v3))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d_'45'__3972 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d_'45'__3972 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3974 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3974 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3976 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3976 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2856
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324
            (coe
               du_quasiring_4728
               (coe MAlonzo.Code.Algebra.Bundles.du_quasiring_4064 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_quasiring_4064 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'737'_2852
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3978 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'737'_2852
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3978 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'691'_2854
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3978 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'691'_2854
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3978 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_2776
                    (MAlonzo.Code.Algebra.Bundles.d_isNearring_3978 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_2776
                         (MAlonzo.Code.Algebra.Bundles.d_isNearring_3978 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.ring
d_ring_5244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096
d_ring_5244 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ring_5244 v4 v5
du_ring_5244 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096
du_ring_5244 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4308
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1704
         (coe du_A_5620 (coe v0) (coe v1)))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__4124 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'42'__2382
                 (coe du_Semi_5618 (coe v0) (coe v1)) v2 v3)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0 v2)
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v1 v3))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1706
         (coe du_A_5620 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Algebra.Bundles.d_1'35'_2386
               (coe du_Semi_5618 (coe v0) (coe v1)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3004
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710
            (coe du_A_5620 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1560
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1562
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_distrib_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1))))))
-- Algebra.Construct.DirectProduct._.Semi
d_Semi_5618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Semi_5618 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Semi_5618 v4 v5
du_Semi_5618 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_Semi_5618 v0 v1
  = coe
      du_semiring_2840
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_4248 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_4248 (coe v1))
-- Algebra.Construct.DirectProduct._.A
d_A_5620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
d_A_5620 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_A_5620 v4 v5
du_A_5620 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
du_A_5620 v0 v1
  = coe
      du_abelianGroup_2346
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_4244 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_4244 (coe v1))
-- Algebra.Construct.DirectProduct.commutativeRing
d_commutativeRing_5626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
d_commutativeRing_5626 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeRing_5626 v4 v5
du_commutativeRing_5626 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
du_commutativeRing_5626 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4540
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1704
         (coe
            du_A_5620 (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__4342 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'42'__2382
                 (coe
                    du_Semi_5618
                    (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v0))
                    (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v1)))
                 v2 v3)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4344 v0 v2)
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4344 v1 v3))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1706
         (coe
            du_A_5620 (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_4348 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Algebra.Bundles.d_1'35'_2386
               (coe
                  du_Semi_5618
                  (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v1))))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3158
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isRing_4132
            (coe
               du_ring_5244
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4476 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_3034
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4350 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_3034
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4350 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.quasigroup
d_quasigroup_6040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784
d_quasigroup_6040 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_quasigroup_6040 v4 v5
du_quasigroup_6040 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784
du_quasigroup_6040 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4880
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4806 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4806 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4808 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4808 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4810 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4810 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3396
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_4862 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_4862 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_3342
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_3342
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_3344
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_3344
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3388
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3388
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v1))))
                       v2)))
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3390
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3390
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v1))))
                       v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3392
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3392
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v1))))
                       v2)))
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3394
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3394
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812 (coe v1))))
                       v2)))))
-- Algebra.Construct.DirectProduct.loop
d_loop_6214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886
d_loop_6214 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_loop_6214 v4 v5
du_loop_6214 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886
du_loop_6214 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4990
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4910 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4910 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4912 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4912 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4914 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4914 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3476
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4812
            (coe
               du_quasigroup_6040
               (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_3472
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_3472
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_3474
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_3474
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v1)))))))
-- Algebra.Construct.DirectProduct.leftBolLoop
d_leftBolLoop_6392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4996 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4996 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4996
d_leftBolLoop_6392 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_leftBolLoop_6392 v4 v5
du_leftBolLoop_6392 ::
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4996 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4996 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4996
du_leftBolLoop_6392 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_5096
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__5020 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__5020 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__5022 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__5022 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__5024 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__5024 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5026 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5026 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3560
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4918
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_5090 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_5090 (coe v1))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_leftBol_3502
                             (coe MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_5028 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_leftBol_3502
                             (coe MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_5028 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.rightBolLoop
d_rightBolLoop_6564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_5102 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_5102 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_5102
d_rightBolLoop_6564 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rightBolLoop_6564 v4 v5
du_rightBolLoop_6564 ::
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_5102 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_5102 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_5102
du_rightBolLoop_6564 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_5202
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__5126 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__5126 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__5128 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__5128 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__5130 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__5130 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5132 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5132 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3644
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4918
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_5196 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_5196 (coe v1))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3586
                             (coe MAlonzo.Code.Algebra.Bundles.d_isRightBolLoop_5134 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3586
                             (coe MAlonzo.Code.Algebra.Bundles.d_isRightBolLoop_5134 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.middleBolLoop
d_middleBolLoop_6736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_5320 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_5320 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_5320
d_middleBolLoop_6736 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_middleBolLoop_6736 v4 v5
du_middleBolLoop_6736 ::
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_5320 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_5320 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_5320
du_middleBolLoop_6736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_5420
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__5344 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__5344 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__5346 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__5346 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__5348 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__5348 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5350 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5350 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3820
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4918
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_5414 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_5414 (coe v1))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_middleBol_3762
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMiddleBolLoop_5352 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_middleBol_3762
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isMiddleBolLoop_5352 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.moufangLoop
d_moufangLoop_6908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_5208 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_5208 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_5208
d_moufangLoop_6908 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_moufangLoop_6908 v4 v5
du_moufangLoop_6908 ::
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_5208 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_5208 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_5208
du_moufangLoop_6908 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_5314
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__5232 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__5232 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__5234 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__5234 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__5236 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__5236 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5238 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_5238 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3736
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_5028
            (coe
               du_leftBolLoop_6392
               (coe MAlonzo.Code.Algebra.Bundles.du_leftBolLoop_5308 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_leftBolLoop_5308 (coe v1))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3672
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_5240 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3672
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_5240 (coe v1))))
                       v2)
                    v3)))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_identical_3674
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_5240 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_identical_3674
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_5240 (coe v1))))
                       v2)
                    v3))))
