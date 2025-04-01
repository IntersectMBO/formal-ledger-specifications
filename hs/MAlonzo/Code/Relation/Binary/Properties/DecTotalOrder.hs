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

module MAlonzo.Code.Relation.Binary.Properties.DecTotalOrder where

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
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Properties.TotalOrder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Properties.DecTotalOrder._._∼ᵒ_
d__'8764''7506'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> ()
d__'8764''7506'__30 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties._<_
d__'60'__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> ()
d__'60'__166 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.asym
d_asym_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_168 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.irrefl
d_irrefl_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_170 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_'60''45'isStrictPartialOrder_172 ~v0 ~v1 ~v2 v3
  = du_'60''45'isStrictPartialOrder_172 v3
du_'60''45'isStrictPartialOrder_172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
du_'60''45'isStrictPartialOrder_172 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_178
         (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1)))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-resp-≈
d_'60''45'resp'45''8776'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_174 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_174 v3
du_'60''45'resp'45''8776'_174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_174 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
            (coe
               MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_178
               (coe v2))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-respʳ-≈
d_'60''45'resp'691''45''8776'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'691''45''8776'_176 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_176 v3
du_'60''45'resp'691''45''8776'_176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'691''45''8776'_176 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_180
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_392
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_766
                  (coe v3)))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-respˡ-≈
d_'60''45'resp'737''45''8776'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'737''45''8776'_178 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_178 v3
du_'60''45'resp'737''45''8776'_178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'737''45''8776'_178 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_180
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_394
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_766
                  (coe v3)))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-strictPartialOrder
d_'60''45'strictPartialOrder_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
d_'60''45'strictPartialOrder_180 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictPartialOrder_180 v3
du_'60''45'strictPartialOrder_180 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_744
du_'60''45'strictPartialOrder_180 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_180
         (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1)))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.trans
d_trans_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_182 ~v0 ~v1 ~v2 v3 = du_trans_182 v3
du_trans_182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_182 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_370
            (coe
               MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_178
               (coe v2))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<⇒≉
d_'60''8658''8777'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8777'_184 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<⇒≱
d_'60''8658''8817'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_186 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≤⇒≯
d_'8804''8658''8815'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_190 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''8743''8777''8658''60'_192 ~v0 ~v1 ~v2 ~v3
  = du_'8804''8743''8777''8658''60'_192
du_'8804''8743''8777''8658''60'_192 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8804''8743''8777''8658''60'_192 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8804''8743''8777''8658''60'_208
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.antisym
d_antisym_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_194 ~v0 ~v1 ~v2 v3 = du_antisym_194 v3
du_antisym_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_194 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (coe
            (\ v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                    (coe v2))
                 v3 v4 v6 v5)))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-isPartialOrder
d_'8805''45'isPartialOrder_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_'8805''45'isPartialOrder_196 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isPartialOrder_196 v3
du_'8805''45'isPartialOrder_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
du_'8805''45'isPartialOrder_196 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_150
         (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1)))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.converse-isPreorder
d_converse'45'isPreorder_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_converse'45'isPreorder_198 ~v0 ~v1 ~v2 v3
  = du_converse'45'isPreorder_198 v3
du_converse'45'isPreorder_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_converse'45'isPreorder_198 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Properties.Preorder.du_converse'45'isPreorder_86
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v2))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-isTotalOrder
d_'8805''45'isTotalOrder_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_'8805''45'isTotalOrder_200 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isTotalOrder_200 v3
du_'8805''45'isTotalOrder_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
du_'8805''45'isTotalOrder_200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8805''45'isTotalOrder_210
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-poset
d_'8805''45'poset_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_'8805''45'poset_202 ~v0 ~v1 ~v2 v3 = du_'8805''45'poset_202 v3
du_'8805''45'poset_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
du_'8805''45'poset_202 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
         (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1)))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.converse-preorder
d_converse'45'preorder_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_converse'45'preorder_204 ~v0 ~v1 ~v2 v3
  = du_converse'45'preorder_204 v3
du_converse'45'preorder_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
du_converse'45'preorder_204 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Properties.Preorder.du_converse'45'preorder_88
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v2))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.refl
d_refl_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny
d_refl_206 ~v0 ~v1 ~v2 v3 = du_refl_206 v3
du_refl_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny
du_refl_206 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v4))))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.reflexive
d_reflexive_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_208 ~v0 ~v1 ~v2 v3 = du_reflexive_208 v3
du_reflexive_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_208 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                     (coe v3))))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.total
d_total_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_210 ~v0 ~v1 ~v2 v3 = du_total_210 v3
du_total_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_210 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_478
         (coe
            MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8805''45'isTotalOrder_210
            (coe v1)))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-totalOrder
d_'8805''45'totalOrder_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_'8805''45'totalOrder_212 ~v0 ~v1 ~v2 v3
  = du_'8805''45'totalOrder_212 v3
du_'8805''45'totalOrder_212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
du_'8805''45'totalOrder_212 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8805''45'totalOrder_212
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.trans
d_trans_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_214 ~v0 ~v1 ~v2 v3 = du_trans_214 v3
du_trans_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_214 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_152
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_84
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                     (coe v3))))))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰-respʳ-≈
d_'8816''45'resp'691''45''8776'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''45'resp'691''45''8776'_216 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰-respˡ-≈
d_'8816''45'resp'737''45''8776'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''45'resp'737''45''8776'_218 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰⇒>
d_'8816''8658''62'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8816''8658''62'_220 ~v0 ~v1 ~v2 v3 = du_'8816''8658''62'_220 v3
du_'8816''8658''62'_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8816''8658''62'_220 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8816''8658''62'_222
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰⇒≥
d_'8816''8658''8805'_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8816''8658''8805'_222 ~v0 ~v1 ~v2 v3
  = du_'8816''8658''8805'_222 v3
du_'8816''8658''8805'_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_'8816''8658''8805'_222 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8816''8658''8805'_228
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0))
      v1 v2
-- Relation.Binary.Properties.DecTotalOrder.≥-isDecTotalOrder
d_'8805''45'isDecTotalOrder_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_'8805''45'isDecTotalOrder_224 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isDecTotalOrder_224 v3
du_'8805''45'isDecTotalOrder_224 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
du_'8805''45'isDecTotalOrder_224 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_isDecTotalOrder_450
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1098
         (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.≥-decTotalOrder
d_'8805''45'decTotalOrder_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_'8805''45'decTotalOrder_226 ~v0 ~v1 ~v2 v3
  = du_'8805''45'decTotalOrder_226 v3
du_'8805''45'decTotalOrder_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
du_'8805''45'decTotalOrder_226 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      (coe du_'8805''45'isDecTotalOrder_224 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder._._≤?_
d__'8804''63'__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__230 ~v0 ~v1 ~v2 v3 = du__'8804''63'__230 v3
du__'8804''63'__230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__230 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__538
      (coe du_'8805''45'isDecTotalOrder_224 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_'60''45'isStrictTotalOrder_232 ~v0 ~v1 ~v2 v3
  = du_'60''45'isStrictTotalOrder_232 v3
du_'60''45'isStrictTotalOrder_232 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
du_'60''45'isStrictTotalOrder_232 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'isStrictTotalOrder'8322'_604
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1098
         (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.<-strictTotalOrder
d_'60''45'strictTotalOrder_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
d_'60''45'strictTotalOrder_234 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictTotalOrder_234 v3
du_'60''45'strictTotalOrder_234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1256
du_'60''45'strictTotalOrder_234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_24345
      (coe du_'60''45'isStrictTotalOrder_232 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder._._≁_
d__'8769'__238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> ()
d__'8769'__238 = erased
-- Relation.Binary.Properties.DecTotalOrder._.compare
d_compare_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_240 ~v0 ~v1 ~v2 v3 = du_compare_240 v3
du_compare_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_compare_240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_compare_610
      (coe du_'60''45'isStrictTotalOrder_232 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.≮⇒≥
d_'8814''8658''8805'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8814''8658''8805'_246 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8814''8658''8805'_246 v3 v4 v5
du_'8814''8658''8805'_246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_'8814''8658''8805'_246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8814''8658''8805'_126
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_decPoset_1214 (coe v0) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_decPreorder_702 (coe v4) in
          coe
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_decSetoid_442 (coe v5) in
             coe
               (let v7
                      = coe
                          MAlonzo.Code.Relation.Binary.Bundles.du_setoid_110 (coe v6) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (coe v7)))))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8799'__536
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1098
            (coe v0)))
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1160 (coe v0) in
       coe
         (let v5
                = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                     (coe v5))))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_478
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_534
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1098
               (coe v0))))
      (coe v1) (coe v2)
