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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.Max where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Min
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd

-- Algebra.Construct.NaturalChoice.Max._.totalPreorder
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
-- Algebra.Construct.NaturalChoice.Max.Min.x≤y⇒x⊓y≈x
d_x'8804'y'8658'x'8851'y'8776'x_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'y'8776'x_110 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'y'8776'x_110 v3
du_x'8804'y'8658'x'8851'y'8776'x_110 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'y'8776'x_110 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'x'8851'y'8776'x_128
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_928
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max.Min.x≤y⇒y⊓x≈x
d_x'8804'y'8658'y'8851'x'8776'x_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'y'8851'x'8776'x_114 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'y'8851'x'8776'x_114 v3
du_x'8804'y'8658'y'8851'x'8776'x_114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'y'8851'x'8776'x_114 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'y'8851'x'8776'x_158
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_928
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max._⊔_
d__'8852'__192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8852'__192 ~v0 ~v1 ~v2 v3 = du__'8852'__192 v3
du__'8852'__192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8852'__192 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__102
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_928
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max.maxOperator
d_maxOperator_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136
d_maxOperator_194 ~v0 ~v1 ~v2 v3 = du_maxOperator_194 v3
du_maxOperator_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136
du_maxOperator_194 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1701
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__102
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_928
            (coe v0)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'y'8851'x'8776'x_158
              (coe
                 MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_928
                 (coe v0))
              (coe v2) (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'x'8851'y'8776'x_128
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_928
            (coe v0)))
-- Algebra.Construct.NaturalChoice.Max._.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_198 ~v0 ~v1 ~v2 v3
  = du_mono'45''8804''45'distrib'45''8852'_198 v3
du_mono'45''8804''45'distrib'45''8852'_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_198 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_190
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
         (coe v0))
      (coe du_maxOperator_194 (coe v0))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≤x
d_x'8851'y'8804'x_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_200 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'x_200 v3
du_x'8851'y'8804'x_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_200 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2838
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_202 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'z'8804'y_202 v3
du_x'8804'y'8658'x'8851'z'8804'y_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_202 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3190
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_204 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'z'8851'x'8804'y_204 v3
du_x'8804'y'8658'z'8851'x'8804'y_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_204 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3202
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≤y
d_x'8851'y'8804'y_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_206 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'y_206 v3
du_x'8851'y'8804'y_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_206 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2864
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_208 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'x'8658'x'8804'y_208 v3
du_x'8851'y'8776'x'8658'x'8804'y_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_208 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_210 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'y'8658'y'8804'x_210 v3
du_x'8851'y'8776'y'8658'y'8804'x_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_210 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_212 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'y_212 v3
du_x'8804'y'8851'z'8658'x'8804'y_212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_212 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3214
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_214 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'z_214 v3
du_x'8804'y'8851'z'8658'x'8804'z_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_214 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3228
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-assoc
d_'8851''45'assoc_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_216 ~v0 ~v1 ~v2 v3 = du_'8851''45'assoc_216 v3
du_'8851''45'assoc_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_216 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-band
d_'8851''45'band_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_218 ~v0 ~v1 ~v2 v3 = du_'8851''45'band_218 v3
du_'8851''45'band_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
du_'8851''45'band_218 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3082
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-comm
d_'8851''45'comm_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_220 ~v0 ~v1 ~v2 v3 = du_'8851''45'comm_220 v3
du_'8851''45'comm_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_220 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_222 ~v0 ~v1 ~v2 v3
  = du_'8851''45'commutativeSemigroup_222 v3
du_'8851''45'commutativeSemigroup_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
du_'8851''45'commutativeSemigroup_222 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3084
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-cong
d_'8851''45'cong_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_224 ~v0 ~v1 ~v2 v3 = du_'8851''45'cong_224 v3
du_'8851''45'cong_224 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_224 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2960
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-congʳ
d_'8851''45'cong'691'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_226 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'691'_226 v3
du_'8851''45'cong'691'_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_226 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2950
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-congˡ
d_'8851''45'cong'737'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_228 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'737'_228 v3
du_'8851''45'cong'737'_228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_228 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2912
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-idem
d_'8851''45'idem_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_230 ~v0 ~v1 ~v2 v3 = du_'8851''45'idem_230 v3
du_'8851''45'idem_230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_230 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3014
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identity
d_'8851''45'identity_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_232 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity_232 v3
du_'8851''45'identity_232 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_232 v0
  = let v1 = coe du_maxOperator_194 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_158
                      v1 v2 v4 (coe v3 v4)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_164
                      v1 v4 v2 (coe v3 v4)))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identityʳ
d_'8851''45'identity'691'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_234 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity'691'_234 v3
du_'8851''45'identity'691'_234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_234 v0
  = let v1 = coe du_maxOperator_194 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_164
              v1 v4 v2 (coe v3 v4)))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identityˡ
d_'8851''45'identity'737'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_236 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity'737'_236 v3
du_'8851''45'identity'737'_236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_236 v0
  = let v1 = coe du_maxOperator_194 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_158
              v1 v2 v4 (coe v3 v4)))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isBand
d_'8851''45'isBand_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_238 ~v0 ~v1 ~v2 v3 = du_'8851''45'isBand_238 v3
du_'8851''45'isBand_238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_'8851''45'isBand_238 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3064
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_240 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isCommutativeSemigroup_240 v3
du_'8851''45'isCommutativeSemigroup_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'8851''45'isCommutativeSemigroup_240 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3066
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isMagma
d_'8851''45'isMagma_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_242 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMagma_242 v3
du_'8851''45'isMagma_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8851''45'isMagma_242 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3060
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isMonoid
d_'8851''45'isMonoid_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_244 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMonoid_244 v3
du_'8851''45'isMonoid_244 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8851''45'isMonoid_244 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3072
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_246 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSelectiveMagma_246 v3
du_'8851''45'isSelectiveMagma_246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
du_'8851''45'isSelectiveMagma_246 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSemigroup
d_'8851''45'isSemigroup_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_248 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSemigroup_248 v3
du_'8851''45'isSemigroup_248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8851''45'isSemigroup_248 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3062
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-glb
d_'8851''45'glb_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_250 ~v0 ~v1 ~v2 v3 = du_'8851''45'glb_250 v3
du_'8851''45'glb_250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_250 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3308
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-magma
d_'8851''45'magma_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_252 ~v0 ~v1 ~v2 v3 = du_'8851''45'magma_252 v3
du_'8851''45'magma_252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_'8851''45'magma_252 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3078
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-mono-≤
d_'8851''45'mono'45''8804'_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_254 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'45''8804'_254 v3
du_'8851''45'mono'45''8804'_254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_254 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3236
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoid
d_'8851''45'monoid_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_256 ~v0 ~v1 ~v2 v3 = du_'8851''45'monoid_256 v3
du_'8851''45'monoid_256 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'8851''45'monoid_256 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3090
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_258 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'691''45''8804'_258 v3
du_'8851''45'mono'691''45''8804'_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_258 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3296
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_260 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'737''45''8804'_260 v3
du_'8851''45'mono'737''45''8804'_260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_260 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3286
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-sel
d_'8851''45'sel_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_262 ~v0 ~v1 ~v2 v3 = du_'8851''45'sel_262 v3
du_'8851''45'sel_262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_262 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_264 ~v0 ~v1 ~v2 v3
  = du_'8851''45'selectiveMagma_264 v3
du_'8851''45'selectiveMagma_264 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
du_'8851''45'selectiveMagma_264 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3086
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-semigroup
d_'8851''45'semigroup_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_266 ~v0 ~v1 ~v2 v3
  = du_'8851''45'semigroup_266 v3
du_'8851''45'semigroup_266 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_'8851''45'semigroup_266 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3080
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-triangulate
d_'8851''45'triangulate_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_268 ~v0 ~v1 ~v2 v3
  = du_'8851''45'triangulate_268 v3
du_'8851''45'triangulate_268 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_268 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_194 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3322
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zero
d_'8851''45'zero_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_270 ~v0 ~v1 ~v2 v3 = du_'8851''45'zero_270 v3
du_'8851''45'zero_270 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_270 v0
  = let v1 = coe du_maxOperator_194 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_164
                      v1 v2 v4 (coe v3 v4)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_158
                      v1 v4 v2 (coe v3 v4)))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zeroʳ
d_'8851''45'zero'691'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_272 ~v0 ~v1 ~v2 v3
  = du_'8851''45'zero'691'_272 v3
du_'8851''45'zero'691'_272 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_272 v0
  = let v1 = coe du_maxOperator_194 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_158
              v1 v4 v2 (coe v3 v4)))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zeroˡ
d_'8851''45'zero'737'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_274 ~v0 ~v1 ~v2 v3
  = du_'8851''45'zero'737'_274 v3
du_'8851''45'zero'737'_274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_274 v0
  = let v1 = coe du_maxOperator_194 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_164
              v1 v2 v4 (coe v3 v4)))
