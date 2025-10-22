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

module MAlonzo.Code.Algebra.Morphism.GroupMonomorphism where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Morphism.GroupMonomorphism._._⁻¹
d__'8315''185'_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny
d__'8315''185'_50 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7
  = du__'8315''185'_50 v4
du__'8315''185'_50 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  AgdaAny -> AgdaAny
du__'8315''185'_50 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 (coe v0)
-- Algebra.Morphism.GroupMonomorphism._._∙_
d__'8729'__52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__52 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du__'8729'__52 v4
du__'8729'__52 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__52 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 (coe v0)
-- Algebra.Morphism.GroupMonomorphism._._≈_
d__'8776'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__54 = erased
-- Algebra.Morphism.GroupMonomorphism._.ε
d_ε_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny
d_ε_64 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 = du_ε_64 v4
du_ε_64 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 -> AgdaAny
du_ε_64 v0 = coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)
-- Algebra.Morphism.GroupMonomorphism._._⁻¹
d__'8315''185'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny
d__'8315''185'_68 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
  = du__'8315''185'_68 v5
du__'8315''185'_68 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  AgdaAny -> AgdaAny
du__'8315''185'_68 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 (coe v0)
-- Algebra.Morphism.GroupMonomorphism._._≈_
d__'8776'__70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__70 = erased
-- Algebra.Morphism.GroupMonomorphism._._∙_
d__'8729'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__74 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'8729'__74 v5
du__'8729'__74 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__74 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 (coe v0)
-- Algebra.Morphism.GroupMonomorphism._.ε
d_ε_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  AgdaAny
d_ε_82 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_ε_82 v5
du_ε_82 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 -> AgdaAny
du_ε_82 v0 = coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)
-- Algebra.Morphism.GroupMonomorphism._.assoc
d_assoc_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_86 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_assoc_86 v4 v5 v6 v7
du_assoc_86 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_86 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_assoc_160
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.cancel
d_cancel_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_88 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_cancel_88 v4 v5 v6 v7
du_cancel_88 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_88 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel_236
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.cancelʳ
d_cancel'691'_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_90 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel'691'_90 v4 v5 v6 v7
du_cancel'691'_90 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_90 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel'691'_224
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.cancelˡ
d_cancel'737'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_92 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cancel'737'_92 v4 v5 v6 v7
du_cancel'737'_92 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_92 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cancel'737'_212
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.comm
d_comm_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_94 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_comm_94 v4 v5 v6 v7
du_comm_94 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_94 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_comm_170
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.cong
d_cong_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_96 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_cong_96 v4 v5 v6 v7
du_cong_96 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cong_96 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_cong_146
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.idem
d_idem_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_idem_98 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_idem_98 v4 v5 v6 v7
du_idem_98 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_idem_98 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_idem_178
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.identity
d_identity_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_100 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity_100 v4 v5 v6 v7
du_identity_100 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_100 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity_176
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.identityʳ
d_identity'691'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_identity'691'_102 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity'691'_102 v4 v5 v6 v7
du_identity'691'_102 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_identity'691'_102 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity'691'_170
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.identityˡ
d_identity'737'_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_identity'737'_104 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_identity'737'_104 v4 v5 v6 v7
du_identity'737'_104 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_identity'737'_104 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_identity'737'_164
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.isBand
d_isBand_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_526
d_isBand_106 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isBand_106 v4 v5 v6 v7
du_isBand_106 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_526
du_isBand_106 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isBand_302
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.isCommutativeMonoid
d_isCommutativeMonoid_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_108 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isCommutativeMonoid_108 v4 v5 v6 v7
du_isCommutativeMonoid_108 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_isCommutativeMonoid_108 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.isMagma
d_isMagma_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_110 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isMagma_110 v4 v5 v6 v7
du_isMagma_110 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_110 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_238
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.isMonoid
d_isMonoid_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_112 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isMonoid_112 v4 v5 v6 v7
du_isMonoid_112 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_112 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.isSelectiveMagma
d_isSelectiveMagma_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_450 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_450
d_isSelectiveMagma_114 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isSelectiveMagma_114 v4 v5 v6 v7
du_isSelectiveMagma_114 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_450 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_450
du_isSelectiveMagma_114 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSelectiveMagma_340
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.isSemigroup
d_isSemigroup_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_116 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isSemigroup_116 v4 v5 v6 v7
du_isSemigroup_116 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_116 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_268
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.sel
d_sel_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_118 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_sel_118 v4 v5 v6 v7
du_sel_118 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sel_118 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0) in
    coe
      (let v5
             = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
                    (coe v3) in
          coe
            (coe
               MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_sel_184
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96 (coe v5))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
                  (coe v6)))))
-- Algebra.Morphism.GroupMonomorphism._.zero
d_zero_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_120 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_zero_120 v4 v5 v6 v7
du_zero_120 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero_190
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.zeroʳ
d_zero'691'_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'691'_122 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_zero'691'_122 v4 v5 v6 v7
du_zero'691'_122 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'691'_122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero'691'_184
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.zeroˡ
d_zero'737'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_zero'737'_124 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_zero'737'_124 v4 v5 v6 v7
du_zero'737'_124 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_zero'737'_124 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_zero'737'_178
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
         (coe v3))
-- Algebra.Morphism.GroupMonomorphism._.inverseˡ
d_inverse'737'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_inverse'737'_194 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_inverse'737'_194 v4 v5 v6 v7 v8 v9 v10
du_inverse'737'_194 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_inverse'737'_194 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_708 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6) v6)
      (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
               v6))
         (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                  v6))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
               (coe v2 v6))
            (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                  (coe v2 v6))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                  (coe v2 v6))
               (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                     (coe v2 v6))
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v1))
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4)))
                     (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v1))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                        (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0))))
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                              (coe v3)))))
                  (coe v5 (coe v2 v6)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 v4
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                  (coe v2 v6) (coe v2 v6)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                        (coe v3))
                     v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))
                     (coe v2 v6))))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                        (coe v3))))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
               v6)))
-- Algebra.Morphism.GroupMonomorphism._.inverseʳ
d_inverse'691'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_inverse'691'_200 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_inverse'691'_200 v4 v5 v6 v7 v8 v9 v10
du_inverse'691'_200 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_inverse'691'_200 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_708 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
      (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)))
         (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
               (coe
                  v2
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)))
            (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
                  (coe
                     v2
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                     (coe v2 v6)))
               (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                        (coe v2 v6)))
                  (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v1))
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4)))
                     (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v1))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                        (coe v2 (MAlonzo.Code.Algebra.Bundles.Raw.d_ε_130 (coe v0))))
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_ε'45'homo_390
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                              (coe v3)))))
                  (coe v5 (coe v2 v6)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 v4 (coe v2 v6)
                  (coe v2 v6)
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))
                     (coe v2 v6))
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                        (coe v3))
                     v6)))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                     (coe
                        MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                        (coe v3))))
               v6
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))))
-- Algebra.Morphism.GroupMonomorphism._.inverse
d_inverse_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_206 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_inverse_206 v4 v5 v6 v7 v8 v9
du_inverse_206 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_206 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_inverse'737'_194 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v6))
             (coe
                du_inverse'691'_200 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v7))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.GroupMonomorphism._.⁻¹-cong
d_'8315''185''45'cong_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_212 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
                          v12
  = du_'8315''185''45'cong_212 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_'8315''185''45'cong_212 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_212 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_708 v3
      (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
      (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v9 v10 v11 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
         (coe
            v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
         (coe
            v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
            (coe
               v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
            (coe
               v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v7))
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v7))
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v4))))
                     (coe
                        v2
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                        (coe v3))
                     v7))
               (coe
                  v5 (coe v2 v6) (coe v2 v7)
                  (coe
                     MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                              (coe
                                 MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                                 (coe v3)))))
                     v6 v7 v8)))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                  (coe v3))
               v6)))
-- Algebra.Morphism.GroupMonomorphism._.⁻¹-distrib-∙
d_'8315''185''45'distrib'45''8729'_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'distrib'45''8729'_342 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                       v8 v9 v10 v11
  = du_'8315''185''45'distrib'45''8729'_342 v4 v5 v6 v7 v8 v9 v10 v11
du_'8315''185''45'distrib'45''8729'_342 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'distrib'45''8729'_342 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_708 v3
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6 v7))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
         (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v8 v9 v10 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v10)
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6 v7)))
         (coe
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6 v7)))
            (coe
               MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6 v7)))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6 v7)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
                     (coe v2 v7)))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
                                       (coe v4))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
                        (coe v2 v7)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                        (coe v2 v7)))
                  (coe
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                        (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
                                          (coe v4))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                           (coe v2 v7)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                        (coe
                           v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                        (coe
                           v2
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
                                             (coe v4))))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                           (coe
                              v2
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                        (coe
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
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
                                                (coe v4))))))))
                           (coe
                              v2
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                                 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                                          (coe v4))))))
                           (coe
                              v2
                              (let v8
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__60 v8
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                              (coe
                                 v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                              (coe
                                 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                                       (coe v3))))
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6)
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_496
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                           (coe
                              v2
                              (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1
                              (coe v2 v7)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                           (MAlonzo.Code.Algebra.Structures.d_isMagma_496
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4)))))
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v6))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v6))
                           (coe
                              v2 (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v0 v7))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.Raw.d__'8315''185'_132 v1 (coe v2 v7))
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                                 (coe v3))
                              v6)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
                              (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                                 (coe v3))
                              v7))))
                  (coe v5 (coe v2 v6) (coe v2 v7)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
                  (MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))
                  (coe
                     v2
                     (let v8
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
                                (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0)) in
                      coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__60 v8 v6 v7)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v1 (coe v2 v6)
                     (coe v2 v7))
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.d_homo_204
                     (MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
                        (coe
                           MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_678
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                              (coe v3))))
                     v6 v7)))
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_'8315''185''45'homo_680
               (MAlonzo.Code.Algebra.Morphism.Structures.d_isGroupHomomorphism_706
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__128 v0 v6 v7))))
-- Algebra.Morphism.GroupMonomorphism.isGroup
d_isGroup_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
d_isGroup_350 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_isGroup_350 v4 v5 v6 v7 v8
du_isGroup_350 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
du_isGroup_350 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1164
      (coe
         MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1))
         (coe v2)
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
            (coe v3))
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4)))
      (coe
         du_inverse_206 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))
         (coe MAlonzo.Code.Algebra.Structures.d_inverse_1090 (coe v4)))
      (coe
         du_'8315''185''45'cong_212 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
            (coe v4)))
-- Algebra.Morphism.GroupMonomorphism.isAbelianGroup
d_isAbelianGroup_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172
d_isAbelianGroup_418 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_isAbelianGroup_418 v4 v5 v6 v7 v8
du_isAbelianGroup_418 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172
du_isAbelianGroup_418 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1252
      (coe
         du_isGroup_350 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_comm_170
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
            (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_96
            (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_134 (coe v1)))
         (coe v2)
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_726
               (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4)))))
         (coe MAlonzo.Code.Algebra.Structures.d_comm_1186 (coe v4)))
