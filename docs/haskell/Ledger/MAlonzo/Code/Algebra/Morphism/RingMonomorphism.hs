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

module MAlonzo.Code.Algebra.Morphism.RingMonomorphism where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.GroupMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Morphism.RingMonomorphism._._*_
d__'42'__66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__66 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du__'42'__66 v4
du__'42'__66 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__66 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 (coe v0)
-- Algebra.Morphism.RingMonomorphism._._+_
d__'43'__68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__68 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du__'43'__68 v4
du__'43'__68 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__68 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 (coe v0)
-- Algebra.Morphism.RingMonomorphism._._≈_
d__'8776'__70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__70 = erased
-- Algebra.Morphism.RingMonomorphism._.-_
d_'45'__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny
d_'45'__84 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du_'45'__84 v4
du_'45'__84 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny
du_'45'__84 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 (coe v0)
-- Algebra.Morphism.RingMonomorphism._.0#
d_0'35'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny
d_0'35'_86 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du_0'35'_86 v4
du_0'35'_86 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 -> AgdaAny
du_0'35'_86 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)
-- Algebra.Morphism.RingMonomorphism._.1#
d_1'35'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny
d_1'35'_88 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du_1'35'_88 v4
du_1'35'_88 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 -> AgdaAny
du_1'35'_88 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_274 (coe v0)
-- Algebra.Morphism.RingMonomorphism._._≈_
d__'8776'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__98 = erased
-- Algebra.Morphism.RingMonomorphism._._+_
d__'43'__102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__102 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'43'__102 v5
du__'43'__102 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__102 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 (coe v0)
-- Algebra.Morphism.RingMonomorphism._._*_
d__'42'__104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'42'__104 v5
du__'42'__104 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__104 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 (coe v0)
-- Algebra.Morphism.RingMonomorphism._.0#
d_0'35'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny
d_0'35'_116 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_0'35'_116 v5
du_0'35'_116 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 -> AgdaAny
du_0'35'_116 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)
-- Algebra.Morphism.RingMonomorphism._.1#
d_1'35'_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny
d_1'35'_118 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_1'35'_118 v5
du_1'35'_118 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 -> AgdaAny
du_1'35'_118 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_274 (coe v0)
-- Algebra.Morphism.RingMonomorphism._.-_
d_'45'__126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  AgdaAny -> AgdaAny
d_'45'__126 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_'45'__126 v5
du_'45'__126 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  AgdaAny -> AgdaAny
du_'45'__126 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 (coe v0)
-- Algebra.Morphism.RingMonomorphism._.assoc
d_assoc_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_130 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_assoc_130 v4 v5 v6 v7
du_assoc_130 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_130 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_assoc_156
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.cancel
d_cancel_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_132 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel_132 v4 v5 v6 v7
du_cancel_132 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_132 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel_232
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.cancelʳ
d_cancel'691'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_134 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel'691'_134 v4 v5 v6 v7
du_cancel'691'_134 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_134 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel'691'_220
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.cancelˡ
d_cancel'737'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_136 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel'737'_136 v4 v5 v6 v7
du_cancel'737'_136 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_136 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel'737'_208
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.comm
d_comm_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_138 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_comm_138 v4 v5 v6 v7
du_comm_138 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_138 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_comm_166
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.cong
d_cong_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_140 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_cong_140 v4 v5 v6 v7
du_cong_140 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cong_140 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cong_142
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.idem
d_idem_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_idem_142 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_idem_142 v4 v5 v6 v7
du_idem_142 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_idem_142 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_idem_174
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.identity
d_identity_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_144 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity_144 v4 v5 v6 v7
du_identity_144 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_144 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity_176
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.identityʳ
d_identity'691'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_identity'691'_146 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity'691'_146 v4 v5 v6 v7
du_identity'691'_146 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_identity'691'_146 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity'691'_170
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.identityˡ
d_identity'737'_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_identity'737'_148 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity'737'_148 v4 v5 v6 v7
du_identity'737'_148 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_identity'737'_148 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity'737'_164
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.isBand
d_isBand_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_150 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isBand_150 v4 v5 v6 v7
du_isBand_150 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_150 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isBand_298
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.isCommutativeMonoid
d_isCommutativeMonoid_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_152 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isCommutativeMonoid_152 v4 v5 v6 v7
du_isCommutativeMonoid_152 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_152 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.isMagma
d_isMagma_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_154 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isMagma_154 v4 v5 v6 v7
du_isMagma_154 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_154 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.isMonoid
d_isMonoid_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_156 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isMonoid_156 v4 v5 v6 v7
du_isMonoid_156 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_isMonoid_156 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.isSelectiveMagma
d_isSelectiveMagma_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_isSelectiveMagma_158 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isSelectiveMagma_158 v4 v5 v6 v7
du_isSelectiveMagma_158 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_isSelectiveMagma_158 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSelectiveMagma_336
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.isSemigroup
d_isSemigroup_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_160 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isSemigroup_160 v4 v5 v6 v7
du_isSemigroup_160 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_160 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.sel
d_sel_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_162 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_sel_162 v4 v5 v6 v7
du_sel_162 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sel_162 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (let v7
                   = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
             coe
               (let v8
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                coe
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                             (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_sel_180
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                           (coe v9))))))))
-- Algebra.Morphism.RingMonomorphism._.zero
d_zero_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_164 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_zero_164 v4 v5 v6 v7
du_zero_164 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_164 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero_190
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.zeroʳ
d_zero'691'_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'691'_166 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_zero'691'_166 v4 v5 v6 v7
du_zero'691'_166 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'691'_166 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero'691'_184
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.zeroˡ
d_zero'737'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'737'_168 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_zero'737'_168 v4 v5 v6 v7
du_zero'737'_168 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'737'_168 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                    (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero'737'_178
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.inverse
d_inverse_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_170 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_inverse_170 v4 v5 v6 v7
du_inverse_170 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.inverseʳ
d_inverse'691'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_inverse'691'_172 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_inverse'691'_172 v4 v5 v6 v7
du_inverse'691'_172 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_inverse'691'_172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse'691'_200
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.inverseˡ
d_inverse'737'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_inverse'737'_174 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_inverse'737'_174 v4 v5 v6 v7
du_inverse'737'_174 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_inverse'737'_174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse'737'_194
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.isAbelianGroup
d_isAbelianGroup_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_isAbelianGroup_176 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isAbelianGroup_176 v4 v5 v6 v7
du_isAbelianGroup_176 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
du_isAbelianGroup_176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.isGroup
d_isGroup_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_178 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isGroup_178 v4 v5 v6 v7
du_isGroup_178 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_isGroup_178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.⁻¹-cong
d_'8315''185''45'cong_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_180 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8315''185''45'cong_180 v4 v5 v6 v7
du_'8315''185''45'cong_180 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_180 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_'8315''185''45'cong_212
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.⁻¹-distrib-∙
d_'8315''185''45'distrib'45''8729'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'distrib'45''8729'_182 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8315''185''45'distrib'45''8729'_182 v4 v5 v6 v7
du_'8315''185''45'distrib'45''8729'_182 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'distrib'45''8729'_182 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_'8315''185''45'distrib'45''8729'_342
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
            (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.assoc
d_assoc_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_186 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_assoc_186 v4 v5 v6 v7
du_assoc_186 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_186 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_assoc_156
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.cancel
d_cancel_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_188 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel_188 v4 v5 v6 v7
du_cancel_188 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_188 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel_232
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.cancelʳ
d_cancel'691'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_190 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel'691'_190 v4 v5 v6 v7
du_cancel'691'_190 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_190 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel'691'_220
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.cancelˡ
d_cancel'737'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_192 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel'737'_192 v4 v5 v6 v7
du_cancel'737'_192 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_192 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel'737'_208
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.comm
d_comm_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_194 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_comm_194 v4 v5 v6 v7
du_comm_194 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_194 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_comm_166
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.cong
d_cong_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_196 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_cong_196 v4 v5 v6 v7
du_cong_196 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cong_196 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cong_142
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.idem
d_idem_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_idem_198 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_idem_198 v4 v5 v6 v7
du_idem_198 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_idem_198 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_idem_174
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.identity
d_identity_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_200 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity_200 v4 v5 v6 v7
du_identity_200 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_200 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity_176
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.identityʳ
d_identity'691'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_identity'691'_202 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity'691'_202 v4 v5 v6 v7
du_identity'691'_202 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_identity'691'_202 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity'691'_170
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.identityˡ
d_identity'737'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_identity'737'_204 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity'737'_204 v4 v5 v6 v7
du_identity'737'_204 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_identity'737'_204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity'737'_164
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.isBand
d_isBand_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_206 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isBand_206 v4 v5 v6 v7
du_isBand_206 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_206 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isBand_298
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.isCommutativeMonoid
d_isCommutativeMonoid_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_208 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isCommutativeMonoid_208 v4 v5 v6 v7
du_isCommutativeMonoid_208 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.isMagma
d_isMagma_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_210 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isMagma_210 v4 v5 v6 v7
du_isMagma_210 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_210 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.isMonoid
d_isMonoid_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_212 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isMonoid_212 v4 v5 v6 v7
du_isMonoid_212 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_isMonoid_212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.isSelectiveMagma
d_isSelectiveMagma_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_isSelectiveMagma_214 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isSelectiveMagma_214 v4 v5 v6 v7
du_isSelectiveMagma_214 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_isSelectiveMagma_214 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSelectiveMagma_336
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.isSemigroup
d_isSemigroup_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_216 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isSemigroup_216 v4 v5 v6 v7
du_isSemigroup_216 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_216 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.sel
d_sel_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_218 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_sel_218 v4 v5 v6 v7
du_sel_218 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sel_218 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_sel_180
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                  (coe v6)))))
-- Algebra.Morphism.RingMonomorphism._.zero
d_zero_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_220 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_zero_220 v4 v5 v6 v7
du_zero_220 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_220 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero_190
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.zeroʳ
d_zero'691'_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'691'_222 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_zero'691'_222 v4 v5 v6 v7
du_zero'691'_222 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'691'_222 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero'691'_184
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.zeroˡ
d_zero'737'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'737'_224 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_zero'737'_224 v4 v5 v6 v7
du_zero'737'_224 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'737'_224 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero'737'_178
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe v3))
-- Algebra.Morphism.RingMonomorphism._.distribˡ
d_distrib'737'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_346 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
                   v13
  = du_distrib'737'_346 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_distrib'737'_346 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_346 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2066 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v10 v11 v12 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v12)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9)))
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9)))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9)))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1 (coe v2 v8)
                     (coe v2 v9)))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1 (coe v2 v8)
                        (coe v2 v9)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                        (coe v2 v8))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                        (coe v2 v9)))
                  (coe
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                           (coe v2 v8))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                           (coe v2 v9)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                        (coe
                           v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8))
                        (coe
                           v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8))
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                        (let v10
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe v5)) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v10))
                              (coe
                                 v2
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))))
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_homo_70
                           (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                       (coe
                                          MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                          (coe v3))))))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v9)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                        (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                              (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4))))
                        (coe
                           v2
                           (let v10
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                         (coe v0)) in
                            coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v10 v7 v8)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                           (coe v2 v8))
                        (coe
                           v2
                           (let v10
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                         (coe v0)) in
                            coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v10 v7 v9)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                           (coe v2 v9))
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                           (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3))))
                           v7 v8)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                           (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3))))
                           v7 v9)))
                  (coe v6 (coe v2 v7) (coe v2 v8) (coe v2 v9)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v5 (coe v2 v7)
                  (coe v2 v7)
                  (coe
                     v2
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                         (coe v0)))) in
                      coe
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__26 v10 v8 v9)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1 (coe v2 v8)
                     (coe v2 v9))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                     (coe v2 v7))
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_homo_70
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3))))))
                     v8 v9)))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                        (coe v3))))
               v7 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9))))
-- Algebra.Morphism.RingMonomorphism._.distribʳ
d_distrib'691'_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_356 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
                   v13
  = du_distrib'691'_356 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_distrib'691'_356 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_356 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2066 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9) v7)
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v10 v11 v12 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v12)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9) v7))
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9) v7))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9))
               (coe v2 v7))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9))
                  (coe v2 v7))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1 (coe v2 v8)
                     (coe v2 v9))
                  (coe v2 v7))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1 (coe v2 v8)
                        (coe v2 v9))
                     (coe v2 v7))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v8)
                        (coe v2 v7))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v9)
                        (coe v2 v7)))
                  (coe
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v8)
                           (coe v2 v7))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v9)
                           (coe v2 v7)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                        (coe
                           v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7))
                        (coe
                           v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7))
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                        (let v10
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe v5)) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v10))
                              (coe
                                 v2
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))))
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_homo_70
                           (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                       (coe
                                          MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                          (coe v3))))))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v8 v7)
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v9 v7)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                        (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                              (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4))))
                        (coe
                           v2
                           (let v10
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                         (coe v0)) in
                            coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v10 v8 v7)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v8)
                           (coe v2 v7))
                        (coe
                           v2
                           (let v10
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                         (coe v0)) in
                            coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v10 v9 v7)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v9)
                           (coe v2 v7))
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                           (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3))))
                           v8 v7)
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                           (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3))))
                           v9 v7)))
                  (coe v6 (coe v2 v7) (coe v2 v8) (coe v2 v9)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v5
                  (coe
                     v2
                     (let v10
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                         (coe v0)))) in
                      coe
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__26 v10 v8 v9)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v1 (coe v2 v8)
                     (coe v2 v9))
                  (coe v2 v7) (coe v2 v7)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_homo_70
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3))))))
                     v8 v9)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                     (coe v2 v7))))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                        (coe v3))))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__266 v0 v8 v9) v7)))
-- Algebra.Morphism.RingMonomorphism._.distrib
d_distrib_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_366 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_distrib_366 v4 v5 v6 v7 v8 v9 v10
du_distrib_366 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_366 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_distrib'737'_346 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         du_distrib'691'_356 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- Algebra.Morphism.RingMonomorphism._.zeroˡ
d_zero'737'_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'737'_370 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9 v10 v11
  = du_zero'737'_370 v4 v5 v6 v7 v9 v10 v11
du_zero'737'_370 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'737'_370 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2066 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
         (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)) v6)
      (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
               (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)) v6))
         (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)) v6))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
               (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
               (coe v2 v6))
            (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                  (coe v2 v6))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                  (coe v2 v6))
               (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                     (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                     (coe v2 v6))
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4)))
                     (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v7))
                           (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))))
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_244
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3)))))))
                  (coe v5 (coe v2 v6)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v4
                  (coe
                     v2
                     (let v7
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                      (coe v0))) in
                      coe (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_58 (coe v7))))
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1)) (coe v2 v6)
                  (coe v2 v6)
                  (MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_244
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                 (coe v3))))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                     (coe v2 v6))))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                        (coe v3))))
               (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)) v6)))
-- Algebra.Morphism.RingMonomorphism._.zeroʳ
d_zero'691'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'691'_376 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9 v10 v11
  = du_zero'691'_376 v4 v5 v6 v7 v9 v10 v11
du_zero'691'_376 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'691'_376 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2066 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v6
         (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v6
               (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))))
         (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v6
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v6)
               (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))))
            (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v6)
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v6)
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1)))
               (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v6)
                     (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1)))
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4)))
                     (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v7))
                           (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))))
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_244
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                    (coe v3)))))))
                  (coe v5 (coe v2 v6)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v4 (coe v2 v6)
                  (coe v2 v6)
                  (coe
                     v2
                     (let v7
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                      (coe v0))) in
                      coe (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_58 (coe v7))))
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                     (coe v2 v6))
                  (MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_244
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_'43''45'isMonoidHomomorphism_808
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                 (coe v3))))))))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                        (coe v3))))
               v6 (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_272 (coe v0)))))
-- Algebra.Morphism.RingMonomorphism._.zero
d_zero_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_382 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9 v10
  = du_zero_382 v4 v5 v6 v7 v9 v10
du_zero_382 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_382 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_370 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
      (coe
         du_zero'691'_376 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
-- Algebra.Morphism.RingMonomorphism._.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_neg'45'distrib'737''45''42'_394 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
                                  v10 v11 v12
  = du_neg'45'distrib'737''45''42'_394 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_neg'45'distrib'737''45''42'_394 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_neg'45'distrib'737''45''42'_394 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2066 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v9 v10 v11 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                     (coe v2 v8)))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                        (coe v2 v8)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v7))
                     (coe v2 v8))
                  (coe
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v7))
                        (coe v2 v8))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                        (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7))
                        (coe v2 v8))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                           (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7))
                           (coe v2 v8))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))
                        (let v9
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe v5)) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v9))
                              (coe
                                 v2
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8))))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                           (coe
                              v2
                              (let v9
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v9
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1
                              (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7))
                              (coe v2 v8))
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                       (coe v3))))
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7) v8)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v5
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v7))
                        (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7))
                        (coe v2 v8) (coe v2 v8)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                           (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v7))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v7))
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2026
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                 (coe v3))
                              v7))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                           (coe v2 v8))))
                  (coe v6 (coe v2 v7) (coe v2 v8)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910 v4
                  (coe
                     v2
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
                      coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v9 v7 v8)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                     (coe v2 v8))
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                              (coe v3))))
                     v7 v8)))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2026
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8))))
-- Algebra.Morphism.RingMonomorphism._.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_neg'45'distrib'691''45''42'_410 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
                                  v10 v11 v12
  = du_neg'45'distrib'691''45''42'_410 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_neg'45'distrib'691''45''42'_410 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_neg'45'distrib'691''45''42'_410 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_2066 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v9 v10 v11 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                     (coe v2 v8)))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                        (coe v2 v8)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v8)))
                  (coe
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v8)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                        (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                           (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                        (let v9
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe v5)) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v9))
                              (coe
                                 v2
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                           (coe
                              v2
                              (let v9
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v9 v7
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                              (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8)))
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                       (coe v3))))
                              v7 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v5 (coe v2 v7)
                        (coe v2 v7)
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v8))
                        (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                           (coe v2 v7))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                           (coe v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v0 v8))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__270 v1 (coe v2 v8))
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2026
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                                 (coe v3))
                              v8))))
                  (coe v6 (coe v2 v7) (coe v2 v8)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910 v4
                  (coe
                     v2
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
                      coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__130 v9 v7 v8)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v1 (coe v2 v7)
                     (coe v2 v8))
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_'42''45'homo_810
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isNearSemiringHomomorphism_1174
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isSemiringHomomorphism_2024
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                              (coe v3))))
                     v7 v8)))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'45''8255'homo_2026
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isRingHomomorphism_2064
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__268 v0 v7 v8))))
-- Algebra.Morphism.RingMonomorphism.isRing
d_isRing_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_418 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_isRing_418 v4 v5 v6 v7 v8
du_isRing_418 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
du_isRing_418 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_87335
      (coe
         MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
               (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
               (coe v1)))
         (coe v2)
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cong_142
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1))))
         (coe v2)
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
               (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582 (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_assoc_156
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1))))
         (coe v2)
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
               (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582 (coe v4))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2508 (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity_176
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
            (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
            (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
         v2
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582 (coe v4))
         (MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510 (coe v4)))
      (coe
         du_distrib_366 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582 (coe v4))
         (coe MAlonzo.Code.Algebra.Structures.d_distrib_2512 (coe v4)))
      (coe
         du_zero_382 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582 (coe v4))
         (coe MAlonzo.Code.Algebra.Structures.d_zero_2514 (coe v4)))
-- Algebra.Morphism.RingMonomorphism.isCommutativeRing
d_isCommutativeRing_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_isCommutativeRing_534 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_isCommutativeRing_534 v4 v5 v6 v7 v8
du_isCommutativeRing_534 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_242 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
du_isCommutativeRing_534 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_94301
      (coe
         du_isRing_418 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_comm_166
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1))))
         (coe v2)
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
               (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v4)))
         (coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2644 (coe v4)))
