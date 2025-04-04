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
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_rawMagma_14 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawMagma_14 v4 v5
du_rawMagma_14 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_rawMagma_14 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMagma'46'constructor_487
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__58 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__58 (coe v1))))
-- Algebra.Construct.DirectProduct.rawMonoid
d_rawMonoid_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_48 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawMonoid_48 v4 v5
du_rawMonoid_48 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
du_rawMonoid_48 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMonoid'46'constructor_857
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90 (coe v1)))
-- Algebra.Construct.DirectProduct.rawGroup
d_rawGroup_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
d_rawGroup_86 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawGroup_86 v4 v5
du_rawGroup_86 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_102
du_rawGroup_86 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawGroup'46'constructor_1319
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__122 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__122 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_124 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_124 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_126 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_126 (coe v1))))
-- Algebra.Construct.DirectProduct.rawSemiring
d_rawSemiring_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_132 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawSemiring_132 v4 v5
du_rawSemiring_132 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_132 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawSemiring'46'constructor_2465
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__202 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__202 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__204 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__204 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_206 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_206 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_208 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_208 (coe v1)))
-- Algebra.Construct.DirectProduct.rawRingWithoutOne
d_rawRingWithoutOne_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
d_rawRingWithoutOne_194 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rawRingWithoutOne_194 v4 v5
du_rawRingWithoutOne_194 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRingWithoutOne_228
du_rawRingWithoutOne_194 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawRingWithoutOne'46'constructor_3217
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__250 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__250 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__252 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__252 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__254 (coe v0))
         (coe
            (\ v2 -> MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__254 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_256 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_256 (coe v1)))
-- Algebra.Construct.DirectProduct.rawRing
d_rawRing_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_256 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawRing_256 v4 v5
du_rawRing_256 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_256 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawRing'46'constructor_3989
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304 (coe v0))
         (coe
            (\ v2 -> MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308 (coe v1)))
-- Algebra.Construct.DirectProduct.rawQuasigroup
d_rawQuasigroup_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
d_rawQuasigroup_330 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rawQuasigroup_330 v4 v5
du_rawQuasigroup_330 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawQuasigroup_334
du_rawQuasigroup_330 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawQuasigroup'46'constructor_4863
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__354 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__354 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__356 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__356 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__358 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__358 (coe v1))))
-- Algebra.Construct.DirectProduct.rawLoop
d_rawLoop_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374
d_rawLoop_380 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_rawLoop_380 v4 v5
du_rawLoop_380 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawLoop_374
du_rawLoop_380 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawLoop'46'constructor_5597
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__396 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__396 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__398 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'92''92'__398 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__400 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.Raw.d__'47''47'__400 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_402 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_402 (coe v1)))
-- Algebra.Construct.DirectProduct.magma
d_magma_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_magma_438 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_magma_438 v4 v5
du_magma_438 ::
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_magma_438 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__90 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__90 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_92 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe MAlonzo.Code.Algebra.Bundles.d_isMagma_92 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                    (MAlonzo.Code.Algebra.Bundles.d_isMagma_92 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                         (MAlonzo.Code.Algebra.Bundles.d_isMagma_92 (coe v1))
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
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_242 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_242 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_242
d_idempotentMagma_516 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_idempotentMagma_516 v4 v5
du_idempotentMagma_516 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_242 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_242 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentMagma_242
du_idempotentMagma_516 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentMagma'46'constructor_4447
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__260 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__260 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsIdempotentMagma'46'constructor_4535
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_290 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_290 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_258
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentMagma_262 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_258
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentMagma_262 (coe v1))))))
-- Algebra.Construct.DirectProduct.alternativeMagma
d_alternativeMagma_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_300 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_300 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_300
d_alternativeMagma_604 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_alternativeMagma_604 v4 v5
du_alternativeMagma_604 ::
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_300 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_300 ->
  MAlonzo.Code.Algebra.Bundles.T_AlternativeMagma_300
du_alternativeMagma_604 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AlternativeMagma'46'constructor_5501
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__318 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__318 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsAlternativeMagma'46'constructor_5319
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_352 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_352 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_alternative'737'_318
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_320 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'737'_318
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_320 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_alternative'691'_320
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_320 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_alternative'691'_320
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isAlternativeMagma_320 (coe v1))))
                       v2)))))
-- Algebra.Construct.DirectProduct.flexibleMagma
d_flexibleMagma_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_362 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_362 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_362
d_flexibleMagma_706 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_flexibleMagma_706 v4 v5
du_flexibleMagma_706 ::
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_362 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_362 ->
  MAlonzo.Code.Algebra.Bundles.T_FlexibleMagma_362
du_flexibleMagma_706 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_FlexibleMagma'46'constructor_6603
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__380 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__380 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsFlexibleMagma'46'constructor_6681
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_410 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_410 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_flex_334
                          (coe MAlonzo.Code.Algebra.Bundles.d_isFlexibleMagma_382 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_flex_334
                          (coe MAlonzo.Code.Algebra.Bundles.d_isFlexibleMagma_382 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.medialMagma
d_medialMagma_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_420 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_420 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_420
d_medialMagma_796 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_medialMagma_796 v4 v5
du_medialMagma_796 ::
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_420 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_420 ->
  MAlonzo.Code.Algebra.Bundles.T_MedialMagma_420
du_medialMagma_796 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_MedialMagma'46'constructor_7661
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__438 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__438 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMedialMagma'46'constructor_7467
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_468 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_468 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.d_medial_370
                                (coe MAlonzo.Code.Algebra.Bundles.d_isMedialMagma_440 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_medial_370
                                (coe MAlonzo.Code.Algebra.Bundles.d_isMedialMagma_440 (coe v1))))
                          v2)
                       v3)
                    v4))))
-- Algebra.Construct.DirectProduct.semimedialMagma
d_semimedialMagma_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_478 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_478 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_478
d_semimedialMagma_890 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_semimedialMagma_890 v4 v5
du_semimedialMagma_890 ::
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_478 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_478 ->
  MAlonzo.Code.Algebra.Bundles.T_SemimedialMagma_478
du_semimedialMagma_890 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_SemimedialMagma'46'constructor_8727
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__496 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__496 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemimedialMagma'46'constructor_8257
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_530 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_530 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_semimedial'737'_430
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_498 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'737'_430
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_498 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_semimedial'691'_432
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_498 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_semimedial'691'_432
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemimedialMagma_498 (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.semigroup
d_semigroup_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_996 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_semigroup_996 v4 v5
du_semigroup_996 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_996 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__558 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__558 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_588 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_588 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_assoc_482
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_560 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_assoc_482
                             (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_560 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.band
d_band_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
d_band_1092 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_band_1092 v4 v5
du_band_1092 ::
  MAlonzo.Code.Algebra.Bundles.T_Band_600 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
du_band_1092 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_10925
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__618 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__618 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_11205
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemigroup_560
            (coe
               du_semigroup_996
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_652 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_652 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_518
                  (coe MAlonzo.Code.Algebra.Bundles.d_isBand_620 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_518
                  (coe MAlonzo.Code.Algebra.Bundles.d_isBand_620 (coe v1))))))
-- Algebra.Construct.DirectProduct.commutativeSemigroup
d_commutativeSemigroup_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_commutativeSemigroup_1196 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeSemigroup_1196 v4 v5
du_commutativeSemigroup_1196 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
du_commutativeSemigroup_1196 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__684 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__684 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemigroup_560
            (coe
               du_semigroup_996
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_720 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_720 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_558
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_686
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_558
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_686
                             (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.unitalMagma
d_unitalMagma_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_818 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_818 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_818
d_unitalMagma_1310 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_unitalMagma_1310 v4 v5
du_unitalMagma_1310 ::
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_818 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_818 ->
  MAlonzo.Code.Algebra.Bundles.T_UnitalMagma_818
du_unitalMagma_1310 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_UnitalMagma'46'constructor_14971
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__838 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__838 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_840 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_840 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsUnitalMagma'46'constructor_14317
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_874 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_874 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_678
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_842 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_678
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_842 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_680
                     (coe MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_842 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_680
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isUnitalMagma_842 (coe v1)))))))
-- Algebra.Construct.DirectProduct.monoid
d_monoid_1416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1416 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_monoid_1416 v4 v5
du_monoid_1416 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_1416 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__906 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__906 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_908 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_908 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemigroup_560
            (coe
               du_semigroup_996
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_948 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_948 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_910 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_910 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_910 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_910 (coe v1)))))))
-- Algebra.Construct.DirectProduct.commutativeMonoid
d_commutativeMonoid_1546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_commutativeMonoid_1546 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeMonoid_1546 v4 v5
du_commutativeMonoid_1546 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_commutativeMonoid_1546 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17975
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'8729'__986 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_988 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_988 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMonoid_910
            (coe
               du_monoid_1416
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_748
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_748
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.idempotentCommutativeMonoid
d_idempotentCommutativeMonoid_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152
d_idempotentCommutativeMonoid_1704 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_idempotentCommutativeMonoid_1704 v4 v5
du_idempotentCommutativeMonoid_1704 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_1152
du_idempotentCommutativeMonoid_1704 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_21543
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1172 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1172 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1174 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1174 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_20685
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
            (coe
               du_commutativeMonoid_1546
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_1232 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_1232 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_864
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentCommutativeMonoid_1176
                     (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_864
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentCommutativeMonoid_1176
                     (coe v1))))))
-- Algebra.Construct.DirectProduct.invertibleMagma
d_invertibleMagma_1896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1364 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1364 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1364
d_invertibleMagma_1896 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_invertibleMagma_1896 v4 v5
du_invertibleMagma_1896 ::
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1364 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1364 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleMagma_1364
du_invertibleMagma_1896 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_InvertibleMagma'46'constructor_24171
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1386 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1386 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1388 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1388 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1390 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1390 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsInvertibleMagma'46'constructor_22695
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_1426 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_1426 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_966
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_966
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_968
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_968
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_942
                    (MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_942
                         (MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.invertibleUnitalMagma
d_invertibleUnitalMagma_2010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1438 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1438 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1438
d_invertibleUnitalMagma_2010 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_invertibleUnitalMagma_2010 v4 v5
du_invertibleUnitalMagma_2010 ::
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1438 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1438 ->
  MAlonzo.Code.Algebra.Bundles.T_InvertibleUnitalMagma_1438
du_invertibleUnitalMagma_2010 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_InvertibleUnitalMagma'46'constructor_25663
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1460 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1460 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1462 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1462 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1464 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1464 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsInvertibleUnitalMagma'46'constructor_24571
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isInvertibleMagma_1392
            (coe
               du_invertibleMagma_1896
               (coe MAlonzo.Code.Algebra.Bundles.du_invertibleMagma_1510 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_invertibleMagma_1510 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_1024
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1466
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_1024
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1466
                        (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_1026
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1466
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_1026
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isInvertibleUnitalMagma_1466
                        (coe v1)))))))
-- Algebra.Construct.DirectProduct.group
d_group_2148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524
d_group_2148 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_group_2148 v4 v5
du_group_2148 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1524
du_group_2148 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Group'46'constructor_27347
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1546 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1546 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1548 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1548 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1550 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1550 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_26963
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMonoid_910
            (coe
               du_monoid_1416
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1616 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1616 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1106
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1106
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1054
                    (MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1054
                         (MAlonzo.Code.Algebra.Bundles.d_isGroup_1552 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.abelianGroup
d_abelianGroup_2346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640
d_abelianGroup_2346 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_abelianGroup_2346 v4 v5
du_abelianGroup_2346 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640
du_abelianGroup_2346 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_29899
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1662 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1662 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1664 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1664 (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1666 (coe v0))
         (coe
            (\ v2 ->
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1666 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_32441
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isGroup_1552
            (coe
               du_group_2148
               (coe MAlonzo.Code.Algebra.Bundles.du_group_1736 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_group_1736 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_1146
                          (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1668 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_comm_1146
                          (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1668 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154
d_semiringWithoutAnnihilatingZero_2568 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_semiringWithoutAnnihilatingZero_2568 v4 v5
du_semiringWithoutAnnihilatingZero_2568 ::
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154
du_semiringWithoutAnnihilatingZero_2568 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_SemiringWithoutAnnihilatingZero'46'constructor_39441
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2178 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__2178 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__2180 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__2180 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2182 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2182 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_2184 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_2184 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
            (coe
               du_commutativeMonoid_1546
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
                    (MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                       (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
                         (MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
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
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                                (coe v1))))
                       v2)
                    v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (let v2
                         = MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                           (coe v2))))
                  (let v2
                         = MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                             (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                           (coe v2))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (let v2
                         = MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                           (coe v2))))
                  (let v2
                         = MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                             (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                           (coe v2)))))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
                                   (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.semiring
d_semiring_2840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_2840 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_semiring_2840 v4 v5
du_semiring_2840 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_2840 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_42213
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2178
         (coe du_U_3126 (coe v0) (coe v1)))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2180
         (coe du_U_3126 (coe v0) (coe v1)))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2182
         (coe du_U_3126 (coe v0) (coe v1)))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2184
         (coe du_U_3126 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemiringWithoutAnnihilatingZero_2186
            (coe du_U_3126 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (let v4
                              = MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336 (coe v0) in
                        coe
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                                (coe v4))
                             v2))
                       (let v4
                              = MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336 (coe v1) in
                        coe
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                                (coe v4))
                             v3)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (let v4
                              = MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336 (coe v0) in
                        coe
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                                (coe v4))
                             v2))
                       (let v4
                              = MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336 (coe v1) in
                        coe
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                                (coe v4))
                             v3)))))))
-- Algebra.Construct.DirectProduct._.U
d_U_3126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154
d_U_3126 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_U_3126 v4 v5
du_U_3126 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304 ->
  MAlonzo.Code.Algebra.Bundles.T_SemiringWithoutAnnihilatingZero_2154
du_U_3126 v0 v1
  = coe
      du_semiringWithoutAnnihilatingZero_2568
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
         (coe v1))
-- Algebra.Construct.DirectProduct.commutativeSemiring
d_commutativeSemiring_3136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_3136 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeSemiring_3136 v4 v5
du_commutativeSemiring_3136 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_3136 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2178
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2180
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2182
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2184
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336
            (coe
               du_semiring_2840
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2502
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2502
                             (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.idempotentSemiring
d_idempotentSemiring_3466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2846 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2846 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2846
d_idempotentSemiring_3466 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_idempotentSemiring_3466 v4 v5
du_idempotentSemiring_3466 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2846 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2846 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentSemiring_2846
du_idempotentSemiring_3466 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentSemiring'46'constructor_51463
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2178
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2180
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2182
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v1))))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2184
         (coe
            du_U_3126
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsIdempotentSemiring'46'constructor_61611
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336
            (coe
               du_semiring_2840
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2976 (coe v1))))
         (coe
            MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'idem_1958
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2878 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'idem_1958
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2878
                     (coe v1))))))
-- Algebra.Construct.DirectProduct.kleeneAlgebra
d_kleeneAlgebra_3794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032
d_kleeneAlgebra_3794 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_kleeneAlgebra_3794 v4 v5
du_kleeneAlgebra_3794 ::
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032 ->
  MAlonzo.Code.Algebra.Bundles.T_KleeneAlgebra_3032
du_kleeneAlgebra_3794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_KleeneAlgebra'46'constructor_54655
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2178
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180
                  (coe v1)))))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2180
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180
                  (coe v1)))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'8902'_3062 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'8902'_3062 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2182
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180
                  (coe v1)))))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2184
         (coe
            du_U_3126
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiring_2976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180
                  (coe v1)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsKleeneAlgebra'46'constructor_65475
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isIdempotentSemiring_2878
            (coe
               du_idempotentSemiring_3466
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_idempotentSemiring_3180 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'737'_2184
                     (coe MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'737'_2184
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'691'_2186
                     (coe MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_starExpansive'691'_2186
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068 (coe v1))))))
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
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'737'_2188
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068 (coe v0)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'737'_2188
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068
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
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'691'_2190
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068 (coe v0)))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_starDestructive'691'_2190
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isKleeneAlgebra_3068
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
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370
d_ringWithoutOne_4164 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_ringWithoutOne_4164 v4 v5
du_ringWithoutOne_4164 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3370
du_ringWithoutOne_4164 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RingWithoutOne'46'constructor_60523
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3394 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3394 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3396 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3396 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3396 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3398 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Algebra.Bundles.d_'45'__3398 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3400 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3400 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsRingWithoutOne'46'constructor_77455
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1668
            (coe
               du_abelianGroup_2346
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3506 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3506
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2326
                    (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2326
                         (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v1))
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
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2328
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2328
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2398
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2398
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2400
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2400
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3402 (coe v1))))
                          v2)
                       v3)))))
-- Algebra.Construct.DirectProduct.nonAssociativeRing
d_nonAssociativeRing_4446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3530 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3530 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3530
d_nonAssociativeRing_4446 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_nonAssociativeRing_4446 v4 v5
du_nonAssociativeRing_4446 ::
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3530 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3530 ->
  MAlonzo.Code.Algebra.Bundles.T_NonAssociativeRing_3530
du_nonAssociativeRing_4446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_NonAssociativeRing'46'constructor_63703
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3556 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3556 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3558 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3558 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3558 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3560 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Algebra.Bundles.d_'45'__3560 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3562 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3562 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3564 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3564 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsNonAssociativeRing'46'constructor_85097
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1668
            (coe
               du_abelianGroup_2346
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3664 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3664
                  (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2454
                    (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2454
                         (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566 (coe v1))
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
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_678
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_678
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
                           (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_680
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_680
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isUnitalMagma_2542
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2532
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2532
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2534
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2534
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566
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
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2528
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566 (coe v0))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2528
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566 (coe v1))
                          v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2530
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566 (coe v0))
                          v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2530
                          (MAlonzo.Code.Algebra.Bundles.d_isNonAssociativeRing_3566 (coe v1))
                          v3))))))
-- Algebra.Construct.DirectProduct.quasiring
d_quasiring_4728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3230 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3230 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3230
d_quasiring_4728 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_quasiring_4728 v4 v5
du_quasiring_4728 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3230 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3230 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasiring_3230
du_quasiring_4728 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Quasiring'46'constructor_57885
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3254 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3254 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3256 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3256 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3256 (coe v1)))
                 (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3258 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3258 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3260 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3260 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsQuasiring'46'constructor_71593
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMonoid_910
            (coe
               du_monoid_1416
               (coe MAlonzo.Code.Algebra.Bundles.du_'43''45'monoid_3338 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'monoid_3338 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2224
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2224
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1))
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
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2226
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2226
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1))))
                       v2)
                    v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1))))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2286
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1)))))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2270
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'737'_2270
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1))))
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
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2272
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_distrib'691'_2272
                                (coe MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1))))
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
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2274
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0)) v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'737'_2274
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1)) v3))))
            (coe
               MAlonzo.Code.Data.Product.Base.du_uncurry_244
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2276
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v0)) v2)
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_zero'691'_2276
                          (MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262 (coe v1)) v3))))))
-- Algebra.Construct.DirectProduct.nearring
d_nearring_4982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3686 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3686 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3686
d_nearring_4982 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_nearring_4982 v4 v5
du_nearring_4982 ::
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3686 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3686 ->
  MAlonzo.Code.Algebra.Bundles.T_Nearring_3686
du_nearring_4982 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Nearring'46'constructor_66707
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'43'__3712 (coe v0))
         (coe
            (\ v2 v3 -> MAlonzo.Code.Algebra.Bundles.d__'43'__3712 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3714 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3714 (coe v0))
                 (coe
                    (\ v4 v5 -> MAlonzo.Code.Algebra.Bundles.d__'42'__3714 (coe v1)))
                 (coe v2) (coe v3))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d_'45'__3716 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
           (coe
              MAlonzo.Code.Algebra.Bundles.d_'45'__3716 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3718 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3718 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3720 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3720 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsNearring'46'constructor_92259
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isQuasiring_3262
            (coe
               du_quasiring_4728
               (coe MAlonzo.Code.Algebra.Bundles.du_quasiring_3808 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_quasiring_3808 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'737'_2658
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3722 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'737'_2658
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3722 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'691'_2660
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3722 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'43''45'inverse'691'_2660
                     (coe MAlonzo.Code.Algebra.Bundles.d_isNearring_3722 (coe v1))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_2582
                    (MAlonzo.Code.Algebra.Bundles.d_isNearring_3722 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_2582
                         (MAlonzo.Code.Algebra.Bundles.d_isNearring_3722 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
-- Algebra.Construct.DirectProduct.ring
d_ring_5244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838
d_ring_5244 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ring_5244 v4 v5
du_ring_5244 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838
du_ring_5244 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_69425
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1662
         (coe du_A_5620 (coe v0) (coe v1)))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__3866 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'42'__2330
                 (coe du_Semi_5618 (coe v0) (coe v1)) v2 v3)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3868 v0 v2)
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3868 v1 v3))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1664
         (coe du_A_5620 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3872 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Algebra.Bundles.d_1'35'_2334
               (coe du_Semi_5618 (coe v0) (coe v1)))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_96683
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1668
            (coe du_A_5620 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336
                  (coe du_Semi_5618 (coe v0) (coe v1)))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_distrib_1516
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isSemiring_2336
                  (coe du_Semi_5618 (coe v0) (coe v1))))))
-- Algebra.Construct.DirectProduct._.Semi
d_Semi_5618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Semi_5618 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_Semi_5618 v4 v5
du_Semi_5618 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_Semi_5618 v0 v1
  = coe
      du_semiring_2840
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3990 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_3990 (coe v1))
-- Algebra.Construct.DirectProduct._.A
d_A_5620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640
d_A_5620 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_A_5620 v4 v5
du_A_5620 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3838 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1640
du_A_5620 v0 v1
  = coe
      du_abelianGroup_2346
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3986 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3986 (coe v1))
-- Algebra.Construct.DirectProduct.commutativeRing
d_commutativeRing_5626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
d_commutativeRing_5626 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_commutativeRing_5626 v4 v5
du_commutativeRing_5626 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
du_commutativeRing_5626 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_73489
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1662
         (coe
            du_A_5620 (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v1))))
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              MAlonzo.Code.Algebra.Bundles.d__'42'__4082 v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'42'__2330
                 (coe
                    du_Semi_5618
                    (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0))
                    (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v1)))
                 v2 v3)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4084 v0 v2)
                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4084 v1 v3))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1664
         (coe
            du_A_5620 (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_4088 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Algebra.Bundles.d_1'35'_2334
               (coe
                  du_Semi_5618
                  (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v1))))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_102595
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isRing_3874
            (coe
               du_ring_5244
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v1))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                 (coe
                    MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2836
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4090 (coe v0)))
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2836
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4090 (coe v1))))
                    v2))))
-- Algebra.Construct.DirectProduct.quasigroup
d_quasigroup_6040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284
d_quasigroup_6040 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_quasigroup_6040 v4 v5
du_quasigroup_6040 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4284
du_quasigroup_6040 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Quasigroup'46'constructor_77213
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4306 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4306 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4308 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4308 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4310 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4310 (coe v1))))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsQuasigroup'46'constructor_107707
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isMagma_92
            (coe
               du_magma_438
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_4362 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_magma_4362 (coe v1))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_2986
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_2986
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v1))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            (\ v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_zip_198
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_2988
                    (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe
                    (\ v6 v7 ->
                       coe
                         MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_2988
                         (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v1))
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
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3032
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3032
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3034
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3034
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3036
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3036
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3038
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3038
                             (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312 (coe v1))))
                       v2)))))
-- Algebra.Construct.DirectProduct.loop
d_loop_6214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384
d_loop_6214 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_loop_6214 v4 v5
du_loop_6214 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384
du_loop_6214 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Loop'46'constructor_79203
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsLoop'46'constructor_112935
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4312
            (coe
               du_quasigroup_6040
               (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4476 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4476 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_3114
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_3114
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v1)))))
            (coe
               MAlonzo.Code.Data.Product.Base.du__'60''42''62'__368
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_3116
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_3116
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v1)))))))
-- Algebra.Construct.DirectProduct.leftBolLoop
d_leftBolLoop_6392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4492 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4492 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4492
d_leftBolLoop_6392 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_leftBolLoop_6392 v4 v5
du_leftBolLoop_6392 ::
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4492 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4492 ->
  MAlonzo.Code.Algebra.Bundles.T_LeftBolLoop_4492
du_leftBolLoop_6392 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_LeftBolLoop'46'constructor_81467
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4516 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4516 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4518 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4518 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4520 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4520 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4522 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4522 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsLeftBolLoop'46'constructor_115933
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4416
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4586 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_leftBol_3142
                             (coe MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_4524 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_leftBol_3142
                             (coe MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_4524 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.rightBolLoop
d_rightBolLoop_6564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4596 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4596 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4596
d_rightBolLoop_6564 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_rightBolLoop_6564 v4 v5
du_rightBolLoop_6564 ::
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4596 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4596 ->
  MAlonzo.Code.Algebra.Bundles.T_RightBolLoop_4596
du_rightBolLoop_6564 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RightBolLoop'46'constructor_83665
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4620 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4620 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4622 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4622 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4624 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4624 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4626 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4626 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsRightBolLoop'46'constructor_118411
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4416
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4690 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4690 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3224
                             (coe MAlonzo.Code.Algebra.Bundles.d_isRightBolLoop_4628 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3224
                             (coe MAlonzo.Code.Algebra.Bundles.d_isRightBolLoop_4628 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.middleBolLoop
d_middleBolLoop_6736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4810 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4810 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4810
d_middleBolLoop_6736 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_middleBolLoop_6736 v4 v5
du_middleBolLoop_6736 ::
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4810 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4810 ->
  MAlonzo.Code.Algebra.Bundles.T_MiddleBolLoop_4810
du_middleBolLoop_6736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_MiddleBolLoop'46'constructor_88151
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4834 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4834 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4836 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4836 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4838 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4838 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4840 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4840 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMiddleBolLoop'46'constructor_123623
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLoop_4416
            (coe
               du_loop_6214
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4904 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_loop_4904 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_middleBol_3396
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMiddleBolLoop_4842 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_middleBol_3396
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isMiddleBolLoop_4842 (coe v1))))
                       v2)
                    v3))))
-- Algebra.Construct.DirectProduct.moufangLoop
d_moufangLoop_6908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4700 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4700 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4700
d_moufangLoop_6908 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_moufangLoop_6908 v4 v5
du_moufangLoop_6908 ::
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4700 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4700 ->
  MAlonzo.Code.Algebra.Bundles.T_MoufangLoop_4700
du_moufangLoop_6908 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_MoufangLoop'46'constructor_85863
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4724 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4724 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4726 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4726 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_zip_198
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4728 (coe v0))
         (coe
            (\ v2 v3 ->
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4728 (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4730 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4730 (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMoufangLoop'46'constructor_120913
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLeftBolLoop_4524
            (coe
               du_leftBolLoop_6392
               (coe MAlonzo.Code.Algebra.Bundles.du_leftBolLoop_4800 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.du_leftBolLoop_4800 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3308
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4732 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_rightBol_3308
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4732 (coe v1))))
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
                             MAlonzo.Code.Algebra.Structures.d_identical_3310
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4732 (coe v0)))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_identical_3310
                             (coe MAlonzo.Code.Algebra.Bundles.d_isMoufangLoop_4732 (coe v1))))
                       v2)
                    v3))))
