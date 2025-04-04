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

module MAlonzo.Code.Relation.Binary.Properties.TotalOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Properties.TotalOrder._._∼ᵒ_
d__'8764''7506'__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> ()
d__'8764''7506'__26 = erased
-- Relation.Binary.Properties.TotalOrder._._≁_
d__'8769'__28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> ()
d__'8769'__28 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties._<_
d__'60'__150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> ()
d__'60'__150 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.asym
d_asym_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_154 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.irrefl
d_irrefl_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_156 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_'60''45'isStrictPartialOrder_158 ~v0 ~v1 ~v2 v3
  = du_'60''45'isStrictPartialOrder_158 v3
du_'60''45'isStrictPartialOrder_158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
du_'60''45'isStrictPartialOrder_158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_178
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-resp-≈
d_'60''45'resp'45''8776'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_160 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_160 v3
du_'60''45'resp'45''8776'_160 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_160 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
         (coe
            MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_178
            (coe v1)))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-respʳ-≈
d_'60''45'resp'691''45''8776'_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'691''45''8776'_162 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_162 v3
du_'60''45'resp'691''45''8776'_162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'691''45''8776'_162 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_180
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_392
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_766
               (coe v2))))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-respˡ-≈
d_'60''45'resp'737''45''8776'_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'737''45''8776'_164 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_164 v3
du_'60''45'resp'737''45''8776'_164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'737''45''8776'_164 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_180
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_394
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_766
               (coe v2))))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-strictPartialOrder
d_'60''45'strictPartialOrder_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
d_'60''45'strictPartialOrder_166 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictPartialOrder_166 v3
du_'60''45'strictPartialOrder_166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
du_'60''45'strictPartialOrder_166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_180
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.trans
d_trans_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_168 ~v0 ~v1 ~v2 v3 = du_trans_168 v3
du_trans_168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_168 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_370
         (coe
            MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_178
            (coe v1)))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<⇒≉
d_'60''8658''8777'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8777'_170 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<⇒≱
d_'60''8658''8817'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_172 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≤⇒≯
d_'8804''8658''8815'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_182 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''8743''8777''8658''60'_184 ~v0 ~v1 ~v2 ~v3
  = du_'8804''8743''8777''8658''60'_184
du_'8804''8743''8777''8658''60'_184 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8804''8743''8777''8658''60'_184 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8804''8743''8777''8658''60'_208
-- Relation.Binary.Properties.TotalOrder.PosetProperties.antisym
d_antisym_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_186 ~v0 ~v1 ~v2 v3 = du_antisym_186 v3
du_antisym_186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_186 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
              (MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                 (coe v1))
              v2 v3 v5 v4))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≥-isPartialOrder
d_'8805''45'isPartialOrder_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_'8805''45'isPartialOrder_188 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isPartialOrder_188 v3
du_'8805''45'isPartialOrder_188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
du_'8805''45'isPartialOrder_188 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_150
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.converse-isPreorder
d_converse'45'isPreorder_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_converse'45'isPreorder_190 ~v0 ~v1 ~v2 v3
  = du_converse'45'isPreorder_190 v3
du_converse'45'isPreorder_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_converse'45'isPreorder_190 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Preorder.du_converse'45'isPreorder_86
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v1)))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≥-poset
d_'8805''45'poset_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_'8805''45'poset_192 ~v0 ~v1 ~v2 v3 = du_'8805''45'poset_192 v3
du_'8805''45'poset_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
du_'8805''45'poset_192 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.converse-preorder
d_converse'45'preorder_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_converse'45'preorder_194 ~v0 ~v1 ~v2 v3
  = du_converse'45'preorder_194 v3
du_converse'45'preorder_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
du_converse'45'preorder_194 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Preorder.du_converse'45'preorder_88
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v1)))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.refl
d_refl_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny
d_refl_196 ~v0 ~v1 ~v2 v3 = du_refl_196 v3
du_refl_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny
du_refl_196 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_refl_98
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.reflexive
d_reflexive_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_198 ~v0 ~v1 ~v2 v3 = du_reflexive_198 v3
du_reflexive_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_198 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                  (coe v2)))))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.trans
d_trans_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_200 ~v0 ~v1 ~v2 v3 = du_trans_200 v3
du_trans_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_200 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                  (coe v2)))))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≰-respʳ-≈
d_'8816''45'resp'691''45''8776'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''45'resp'691''45''8776'_202 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≰-respˡ-≈
d_'8816''45'resp'737''45''8776'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''45'resp'737''45''8776'_204 = erased
-- Relation.Binary.Properties.TotalOrder.decTotalOrder
d_decTotalOrder_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_decTotalOrder_206 ~v0 ~v1 ~v2 v3 v4 = du_decTotalOrder_206 v3 v4
du_decTotalOrder_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
du_decTotalOrder_206 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_24961
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du_total'8743'dec'8658'dec_204
            (let v2
                   = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                        (coe v2)))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_total_478
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0)))
            (coe v1)))
-- Relation.Binary.Properties.TotalOrder.≥-isTotalOrder
d_'8805''45'isTotalOrder_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_'8805''45'isTotalOrder_210 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isTotalOrder_210 v3
du_'8805''45'isTotalOrder_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
du_'8805''45'isTotalOrder_210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_isTotalOrder_398
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))
-- Relation.Binary.Properties.TotalOrder.≥-totalOrder
d_'8805''45'totalOrder_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_'8805''45'totalOrder_212 ~v0 ~v1 ~v2 v3
  = du_'8805''45'totalOrder_212 v3
du_'8805''45'totalOrder_212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
du_'8805''45'totalOrder_212 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_18801
      (coe du_'8805''45'isTotalOrder_210 (coe v0))
-- Relation.Binary.Properties.TotalOrder._.total
d_total_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_216 ~v0 ~v1 ~v2 v3 = du_total_216 v3
du_total_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_216 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_total_478
      (coe du_'8805''45'isTotalOrder_210 (coe v0))
-- Relation.Binary.Properties.TotalOrder.≰⇒>
d_'8816''8658''62'_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8816''8658''62'_222 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8816''8658''62'_222 v3 v4 v5
du_'8816''8658''62'_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8816''8658''62'_222 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8816''8658''62'_76
      (let v3
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v3) in
          coe
            (let v5
                   = coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v4) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v5))))))
      (let v3
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                  (coe v3)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_478
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0)))
      (coe v1) (coe v2)
-- Relation.Binary.Properties.TotalOrder.≰⇒≥
d_'8816''8658''8805'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8816''8658''8805'_228 ~v0 ~v1 ~v2 v3 v4 v5 ~v6
  = du_'8816''8658''8805'_228 v3 v4 v5
du_'8816''8658''8805'_228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8816''8658''8805'_228 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_'8816''8658''62'_222 v0 v1 v2 erased)
