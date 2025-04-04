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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.Min where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Construct.NaturalChoice.Min._.totalPreorder
d_totalPreorder_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232
d_totalPreorder_60 ~v0 ~v1 ~v2 v3 = du_totalPreorder_60 v3
du_totalPreorder_60 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232
du_totalPreorder_60 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068 (coe v0)
-- Algebra.Construct.NaturalChoice.Min._⊓_
d__'8851'__102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__102 ~v0 ~v1 ~v2 v3 v4 v5 = du__'8851'__102 v3 v4 v5
du__'8851'__102 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__102 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_478
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))
              v1 v2 in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4 -> coe v1
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4 -> coe v2
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.Min.x≤y⇒x⊓y≈x
d_x'8804'y'8658'x'8851'y'8776'x_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'y'8776'x_128 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8804'y'8658'x'8851'y'8776'x_128 v3 v4 v5 v6
du_x'8804'y'8658'x'8851'y'8776'x_128 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'y'8776'x_128 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_478
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))
              v1 v2 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> let v6
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
              coe
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v6) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v7)))
                      v1))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
                (MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0)))
                v2 v1 v5 v3
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.Min.x≤y⇒y⊓x≈x
d_x'8804'y'8658'y'8851'x'8776'x_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'y'8851'x'8776'x_158 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8804'y'8658'y'8851'x'8776'x_158 v3 v4 v5 v6
du_x'8804'y'8658'y'8851'x'8776'x_158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'y'8851'x'8776'x_158 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_478
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))
              v2 v1 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
                (MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0)))
                v2 v1 v5 v3
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> let v6
                    = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
              coe
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v6) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v7)))
                      v1))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.Min.minOperator
d_minOperator_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
d_minOperator_184 ~v0 ~v1 ~v2 v3 = du_minOperator_184 v3
du_minOperator_184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
du_minOperator_184 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1157
      (coe du__'8851'__102 (coe v0))
      (coe du_x'8804'y'8658'x'8851'y'8776'x_128 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              du_x'8804'y'8658'y'8851'x'8776'x_158 (coe v0) (coe v2) (coe v1)))
-- Algebra.Construct.NaturalChoice.Min._.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_188 ~v0 ~v1 ~v2 v3
  = du_mono'45''8804''45'distrib'45''8851'_188 v3
du_mono'45''8804''45'distrib'45''8851'_188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_188 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_3144
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_190 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'z'8804'y_190 v3
du_x'8804'y'8658'x'8851'z'8804'y_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_190 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_192 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'z'8851'x'8804'y_192 v3
du_x'8804'y'8658'z'8851'x'8804'y_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_192 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_194 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'y_194 v3
du_x'8804'y'8851'z'8658'x'8804'y_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_194 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_196 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'z_196 v3
du_x'8804'y'8851'z'8658'x'8804'z_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_196 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_198 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'x'8658'x'8804'y_198 v3
du_x'8851'y'8776'x'8658'x'8804'y_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_198 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_200 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'y'8658'y'8804'x_200 v3
du_x'8851'y'8776'y'8658'y'8804'x_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_200 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x⊓y≤x
d_x'8851'y'8804'x_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_202 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'x_202 v3
du_x'8851'y'8804'x_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_202 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.x⊓y≤y
d_x'8851'y'8804'y_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_204 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'y_204 v3
du_x'8851'y'8804'y_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_204 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-assoc
d_'8851''45'assoc_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_206 ~v0 ~v1 ~v2 v3 = du_'8851''45'assoc_206 v3
du_'8851''45'assoc_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_206 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-band
d_'8851''45'band_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_208 ~v0 ~v1 ~v2 v3 = du_'8851''45'band_208 v3
du_'8851''45'band_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
du_'8851''45'band_208 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3082
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-comm
d_'8851''45'comm_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_210 ~v0 ~v1 ~v2 v3 = du_'8851''45'comm_210 v3
du_'8851''45'comm_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_210 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_212 ~v0 ~v1 ~v2 v3
  = du_'8851''45'commutativeSemigroup_212 v3
du_'8851''45'commutativeSemigroup_212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
du_'8851''45'commutativeSemigroup_212 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3084
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-cong
d_'8851''45'cong_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_214 ~v0 ~v1 ~v2 v3 = du_'8851''45'cong_214 v3
du_'8851''45'cong_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_214 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2960
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-congʳ
d_'8851''45'cong'691'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_216 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'691'_216 v3
du_'8851''45'cong'691'_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_216 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2950
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-congˡ
d_'8851''45'cong'737'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_218 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'737'_218 v3
du_'8851''45'cong'737'_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_218 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2912
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-glb
d_'8851''45'glb_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_220 ~v0 ~v1 ~v2 v3 = du_'8851''45'glb_220 v3
du_'8851''45'glb_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_220 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-idem
d_'8851''45'idem_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_222 ~v0 ~v1 ~v2 v3 = du_'8851''45'idem_222 v3
du_'8851''45'idem_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_222 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3014
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-identity
d_'8851''45'identity_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_224 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'identity_224 v3 v4 v5
du_'8851''45'identity_224 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_224 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              du_x'8804'y'8658'y'8851'x'8776'x_158 (coe v0) (coe v3) (coe v1)
              (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              du_x'8804'y'8658'x'8851'y'8776'x_128 (coe v0) (coe v3) (coe v1)
              (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.Min._.⊓-identityʳ
d_'8851''45'identity'691'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_226 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'identity'691'_226 v3 v4 v5 v6
du_'8851''45'identity'691'_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_226 v0 v1 v2 v3
  = coe
      du_x'8804'y'8658'x'8851'y'8776'x_128 (coe v0) (coe v3) (coe v1)
      (coe v2 v3)
-- Algebra.Construct.NaturalChoice.Min._.⊓-identityˡ
d_'8851''45'identity'737'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_228 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'identity'737'_228 v3 v4 v5 v6
du_'8851''45'identity'737'_228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_228 v0 v1 v2 v3
  = coe
      du_x'8804'y'8658'y'8851'x'8776'x_158 (coe v0) (coe v3) (coe v1)
      (coe v2 v3)
-- Algebra.Construct.NaturalChoice.Min._.⊓-isBand
d_'8851''45'isBand_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_230 ~v0 ~v1 ~v2 v3 = du_'8851''45'isBand_230 v3
du_'8851''45'isBand_230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_'8851''45'isBand_230 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3064
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_232 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isCommutativeSemigroup_232 v3
du_'8851''45'isCommutativeSemigroup_232 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'8851''45'isCommutativeSemigroup_232 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3066
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-isMagma
d_'8851''45'isMagma_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_234 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMagma_234 v3
du_'8851''45'isMagma_234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8851''45'isMagma_234 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3060
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-isMonoid
d_'8851''45'isMonoid_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_236 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMonoid_236 v3
du_'8851''45'isMonoid_236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8851''45'isMonoid_236 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3072
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_238 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSelectiveMagma_238 v3
du_'8851''45'isSelectiveMagma_238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
du_'8851''45'isSelectiveMagma_238 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-isSemigroup
d_'8851''45'isSemigroup_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_240 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSemigroup_240 v3
du_'8851''45'isSemigroup_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8851''45'isSemigroup_240 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-magma
d_'8851''45'magma_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_242 ~v0 ~v1 ~v2 v3 = du_'8851''45'magma_242 v3
du_'8851''45'magma_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_'8851''45'magma_242 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3078
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-mono-≤
d_'8851''45'mono'45''8804'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_244 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'45''8804'_244 v3
du_'8851''45'mono'45''8804'_244 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_244 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-monoid
d_'8851''45'monoid_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_246 ~v0 ~v1 ~v2 v3 = du_'8851''45'monoid_246 v3
du_'8851''45'monoid_246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'8851''45'monoid_246 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3090
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_248 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'691''45''8804'_248 v3
du_'8851''45'mono'691''45''8804'_248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_248 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3296
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_250 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'737''45''8804'_250 v3
du_'8851''45'mono'737''45''8804'_250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_250 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3286
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-rawMagma
d_'8851''45'rawMagma_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'8851''45'rawMagma_252 ~v0 ~v1 ~v2 v3
  = du_'8851''45'rawMagma_252 v3
du_'8851''45'rawMagma_252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'8851''45'rawMagma_252 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3076
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-sel
d_'8851''45'sel_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_254 ~v0 ~v1 ~v2 v3 = du_'8851''45'sel_254 v3
du_'8851''45'sel_254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_254 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_256 ~v0 ~v1 ~v2 v3
  = du_'8851''45'selectiveMagma_256 v3
du_'8851''45'selectiveMagma_256 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
du_'8851''45'selectiveMagma_256 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3086
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-semigroup
d_'8851''45'semigroup_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_258 ~v0 ~v1 ~v2 v3
  = du_'8851''45'semigroup_258 v3
du_'8851''45'semigroup_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_'8851''45'semigroup_258 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3080
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-triangulate
d_'8851''45'triangulate_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_260 ~v0 ~v1 ~v2 v3
  = du_'8851''45'triangulate_260 v3
du_'8851''45'triangulate_260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_260 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3322
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_minOperator_184 (coe v0))
-- Algebra.Construct.NaturalChoice.Min._.⊓-zero
d_'8851''45'zero_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_262 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'zero_262 v3 v4 v5
du_'8851''45'zero_262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_262 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              du_x'8804'y'8658'x'8851'y'8776'x_128 (coe v0) (coe v1) (coe v3)
              (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              du_x'8804'y'8658'y'8851'x'8776'x_158 (coe v0) (coe v1) (coe v3)
              (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.Min._.⊓-zeroʳ
d_'8851''45'zero'691'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_264 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'zero'691'_264 v3 v4 v5 v6
du_'8851''45'zero'691'_264 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_264 v0 v1 v2 v3
  = coe
      du_x'8804'y'8658'y'8851'x'8776'x_158 (coe v0) (coe v1) (coe v3)
      (coe v2 v3)
-- Algebra.Construct.NaturalChoice.Min._.⊓-zeroˡ
d_'8851''45'zero'737'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_266 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'zero'737'_266 v3 v4 v5 v6
du_'8851''45'zero'737'_266 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_266 v0 v1 v2 v3
  = coe
      du_x'8804'y'8658'x'8851'y'8776'x_128 (coe v0) (coe v1) (coe v3)
      (coe v2 v3)
