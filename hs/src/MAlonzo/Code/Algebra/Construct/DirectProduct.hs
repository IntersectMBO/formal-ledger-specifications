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
         MAlonzo.Code.Algebra.Structures.C_constructor_210
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                    (MAlonzo.Code.Algebra.Bundles.d_isMagma_94 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
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
         MAlonzo.Code.Algebra.Structures.C_constructor_286
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
                  MAlonzo.Code.Algebra.Structures.d_idem_262
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentMagma_270 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_262
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
         MAlonzo.Code.Algebra.Structures.C_constructor_328
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
                             MAlonzo.Code.Algebra.Structures.du_alternative'737'_324
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_330 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'737'_324
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
                             MAlonzo.Code.Algebra.Structures.du_alternative'691'_326
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_330 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'691'_326
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
         MAlonzo.Code.Algebra.Structures.C_constructor_366
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
                          MAlonzo.Code.Algebra.Structures.d_flex_342
                          (coe MAlonzo.Code.Algebra.Bundles.d_isFlexibleMagma_394 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_flex_342
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
         MAlonzo.Code.Algebra.Structures.C_constructor_404
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
                                MAlonzo.Code.Algebra.Structures.d_medial_380
                                (coe MAlonzo.Code.Algebra.Bundles.d_isMedialMagma_454 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_medial_380
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
         MAlonzo.Code.Algebra.Structures.C_constructor_446
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
                                MAlonzo.Code.Algebra.Structures.du_semimedial'737'_442
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_514 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'737'_442
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
                                MAlonzo.Code.Algebra.Structures.du_semimedial'691'_444
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_514 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'691'_444
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
         MAlonzo.Code.Algebra.Structures.C_constructor_522
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
                             MAlonzo.Code.Algebra.Structures.d_assoc_498
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_578 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_assoc_498
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
         MAlonzo.Code.Algebra.Structures.C_constructor_564
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
                  MAlonzo.Code.Algebra.Structures.d_idem_536
                  (coe MAlonzo.Code.Algebra.Bundles.d_isBand_640 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_536
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
         MAlonzo.Code.Algebra.Structures.C_constructor_608
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
                          MAlonzo.Code.Algebra.Structures.d_comm_578
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_578
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
         MAlonzo.Code.Algebra.Structures.C_constructor_706
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_702
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_702
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_704
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_868 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_704
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
         MAlonzo.Code.Algebra.Structures.C_constructor_758
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
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
         MAlonzo.Code.Algebra.Structures.C_constructor_820
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
                          MAlonzo.Code.Algebra.Structures.d_comm_776
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_776
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
         MAlonzo.Code.Algebra.Structures.C_constructor_950
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
                  MAlonzo.Code.Algebra.Structures.d_idem_896
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentCommutativeMonoid_1210
                     (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_896
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1004
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
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1000
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1000
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1002
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1002
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_976
                    (MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1428 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_976
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1066
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_1060
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_1060
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_1062
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1504
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_1062
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1164
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
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
                    (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1252
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
                          MAlonzo.Code.Algebra.Structures.d_comm_1186
                          (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_1186
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1630
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
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
                    (MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                       (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
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
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2236
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1740
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
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v1)))
                          v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388 (coe v0)))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
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
         MAlonzo.Code.Algebra.Structures.C_constructor_1862
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
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
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
         MAlonzo.Code.Algebra.Structures.C_constructor_2110
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
                  MAlonzo.Code.Algebra.Structures.d_'43''45'idem_2014
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2936 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'idem_2014
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
         MAlonzo.Code.Algebra.Structures.C_constructor_2250
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
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'737'_2242
                     (coe MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'737'_2242
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'691'_2244
                     (coe MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'691'_2244
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
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'737'_2246
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'737'_2246
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
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'691'_2248
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3128 (coe v0)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'691'_2248
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
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434
d_ringWithoutOne_4164 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_ringWithoutOne_4164 v4 v5
du_ringWithoutOne_4164 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3434
du_ringWithoutOne_4164 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3590
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3458 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3458 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3460 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3460 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3460 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3462 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Algebra.Bundles.d_'45'__3462 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3464 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3464 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2482
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710
            (coe
               du_abelianGroup_2346
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3570 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3570
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2388
                    (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2388
                         (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v1))
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
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2390
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2390
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2460
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2460
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2462
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2462
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3466 (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.nonAssociativeRing
d_nonAssociativeRing_4446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3596 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3596 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3596
d_nonAssociativeRing_4446 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_nonAssociativeRing_4446 v4 v5
du_nonAssociativeRing_4446 ::
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3596 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3596 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3596
du_nonAssociativeRing_4446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3748
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3622 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3622 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3624 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3624 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3624 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3626 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Algebra.Bundles.d_'45'__3626 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3628 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3628 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3630 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3630 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2614
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710
            (coe
               du_abelianGroup_2346
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3730 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3730
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2518
                    (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2518
                         (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632 (coe v1))
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_702
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2606
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_702
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2606
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
                           (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_704
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2606
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_704
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2606
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2596
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2596
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2598
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2598
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632
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
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2592
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632 (coe v0))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2592
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632 (coe v1))
                          v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2594
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632 (coe v0))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2594
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3632 (coe v1))
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
         MAlonzo.Code.Algebra.Structures.C_constructor_2358
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
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2284
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2284
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
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2286
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2286
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2346
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2346
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2346
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2346
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2330
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2330
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2332
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2332
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
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2334
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)) v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2334
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1)) v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2336
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v0)) v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2336
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324 (coe v1)) v3))))))
-- Algebra.Construct.DirectProduct.nearring
d_nearring_4982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3754 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3754 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3754
d_nearring_4982 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_nearring_4982 v4 v5
du_nearring_4982 ::
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3754 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3754 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3754
du_nearring_4982 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_3902
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3780 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3780 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3782 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3782 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3782 (coe v1)))
                 (coe v2) (coe v3))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d_'45'__3784 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d_'45'__3784 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3786 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3786 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3788 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3788 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2728
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3324
            (coe
               du_quasiring_4728
               (coe MAlonzo.Code.Algebra.Bundles.du_quasiring_3876 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_quasiring_3876 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'737'_2724
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3790 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'737'_2724
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3790 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'691'_2726
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3790 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'691'_2726
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3790 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_2648
                    (MAlonzo.Code.Algebra.Bundles.d_isNearring_3790 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_2648
                         (MAlonzo.Code.Algebra.Bundles.d_isNearring_3790 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.ring
d_ring_5244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908
d_ring_5244 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ring_5244 v4 v5
du_ring_5244 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908
du_ring_5244 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4120
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1704
         (coe du_A_5620 (coe v0) (coe v1)))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3936 v0
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
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3938 v0 v2)
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3938 v1 v3))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1706
         (coe du_A_5620 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3942 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Algebra.Bundles.d_1'35'_2386
               (coe du_Semi_5618 (coe v0) (coe v1)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_2876
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1710
            (coe du_A_5620 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_distrib_1564
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2388
                  (coe du_Semi_5618 (coe v0) (coe v1))))))
-- Algebra.Construct.DirectProduct._.Semi
d_Semi_5618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Semi_5618 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Semi_5618 v4 v5
du_Semi_5618 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_Semi_5618 v0 v1
  = coe
      du_semiring_2840
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_4060 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_4060 (coe v1))
-- Algebra.Construct.DirectProduct._.A
d_A_5620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
d_A_5620 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_A_5620 v4 v5
du_A_5620 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3908 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
du_A_5620 v0 v1
  = coe
      du_abelianGroup_2346
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_4056 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_4056 (coe v1))
-- Algebra.Construct.DirectProduct.commutativeRing
d_commutativeRing_5626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126
d_commutativeRing_5626 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeRing_5626 v4 v5
du_commutativeRing_5626 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126
du_commutativeRing_5626 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4352
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1704
         (coe
            du_A_5620 (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__4154 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'42'__2382
                 (coe
                    du_Semi_5618
                    (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0))
                    (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v1)))
                 v2 v3)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4156 v0 v2)
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4156 v1 v3))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1706
         (coe
            du_A_5620 (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_4160 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Algebra.Bundles.d_1'35'_2386
               (coe
                  du_Semi_5618
                  (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v1))))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3030
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isRing_3944
            (coe
               du_ring_5244
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2906
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4162 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2906
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4162 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.quasigroup
d_quasigroup_6040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358
d_quasigroup_6040 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_quasigroup_6040 v4 v5
du_quasigroup_6040 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358
du_quasigroup_6040 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4454
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3112
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_94
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_4436 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_4436 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_3058
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_3058
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_3060
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_3060
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v1))
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
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3104
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3104
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3106
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3106
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3108
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3108
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3110
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3110
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v1))))
                       v2)))))
-- Algebra.Construct.DirectProduct.loop
d_loop_6214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460
d_loop_6214 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_loop_6214 v4 v5
du_loop_6214 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460
du_loop_6214 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4564
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4484 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4484 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4486 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4486 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4488 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4488 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4490 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4490 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3192
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386
            (coe
               du_quasigroup_6040
               (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4552 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4552 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_3188
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4492 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_3188
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4492 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_3190
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4492 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_3190
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4492 (coe v1)))))))
-- Algebra.Construct.DirectProduct.leftBolLoop
d_leftBolLoop_6392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4570 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4570 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4570
d_leftBolLoop_6392 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_leftBolLoop_6392 v4 v5
du_leftBolLoop_6392 ::
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4570 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4570 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4570
du_leftBolLoop_6392 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4670
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4594 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4594 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4596 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4596 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4598 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4598 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4600 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4600 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3276
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4492
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4664 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4664 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_leftBol_3218
                             (coe MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_4602 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_leftBol_3218
                             (coe MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_4602 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.rightBolLoop
d_rightBolLoop_6564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4676 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4676 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4676
d_rightBolLoop_6564 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rightBolLoop_6564 v4 v5
du_rightBolLoop_6564 ::
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4676 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4676 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4676
du_rightBolLoop_6564 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4776
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4700 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4700 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4702 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4702 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4704 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4704 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4706 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4706 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3360
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4492
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4770 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4770 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3302
                             (coe MAlonzo.Code.Algebra.Bundles.d_isRightBolLoop_4708 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3302
                             (coe MAlonzo.Code.Algebra.Bundles.d_isRightBolLoop_4708 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.middleBolLoop
d_middleBolLoop_6736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4894 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4894 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4894
d_middleBolLoop_6736 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_middleBolLoop_6736 v4 v5
du_middleBolLoop_6736 ::
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4894 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4894 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4894
du_middleBolLoop_6736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4994
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4918 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4918 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4920 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4920 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4922 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4922 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4924 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4924 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3536
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4492
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4988 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4988 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_middleBol_3478
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMiddleBolLoop_4926 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_middleBol_3478
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isMiddleBolLoop_4926 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.moufangLoop
d_moufangLoop_6908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4782 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4782 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4782
d_moufangLoop_6908 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_moufangLoop_6908 v4 v5
du_moufangLoop_6908 ::
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4782 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4782 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4782
du_moufangLoop_6908 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4888
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
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4812 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4812 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_3452
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_4602
            (coe
               du_leftBolLoop_6392
               (coe MAlonzo.Code.Algebra.Bundles.du_leftBolLoop_4882 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_leftBolLoop_4882 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3388
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4814 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3388
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4814 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_identical_3390
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4814 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_identical_3390
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4814 (coe v1))))
                       v2)
                    v3))))
