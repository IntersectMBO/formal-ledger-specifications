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
d_totalPreorder_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_totalPreorder_54 ~v0 ~v1 ~v2 v3 = du_totalPreorder_54 v3
du_totalPreorder_54 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
du_totalPreorder_54 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858 (coe v0)
-- Algebra.Construct.NaturalChoice.Max.Min.x≤y⇒x⊓y≈x
d_x'8804'y'8658'x'8851'y'8776'x_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'y'8776'x_102 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'y'8776'x_102 v3
du_x'8804'y'8658'x'8851'y'8776'x_102 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'y'8776'x_102 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'x'8851'y'8776'x_120
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_898
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max.Min.x≤y⇒y⊓x≈x
d_x'8804'y'8658'y'8851'x'8776'x_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'y'8851'x'8776'x_106 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'y'8851'x'8776'x_106 v3
du_x'8804'y'8658'y'8851'x'8776'x_106 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'y'8851'x'8776'x_106 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'y'8851'x'8776'x_150
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_898
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max._⊔_
d__'8852'__184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8852'__184 ~v0 ~v1 ~v2 v3 = du__'8852'__184 v3
du__'8852'__184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8852'__184 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__94
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_898
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max.maxOperator
d_maxOperator_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_maxOperator_186 ~v0 ~v1 ~v2 v3 = du_maxOperator_186 v3
du_maxOperator_186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
du_maxOperator_186 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1659
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__94
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_898
            (coe v0)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'y'8851'x'8776'x_150
              (coe
                 MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_898
                 (coe v0))
              (coe v2) (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'x'8851'y'8776'x_120
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalOrder_898
            (coe v0)))
-- Algebra.Construct.NaturalChoice.Max._.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_190 ~v0 ~v1 ~v2 v3
  = du_mono'45''8804''45'distrib'45''8852'_190 v3
du_mono'45''8804''45'distrib'45''8852'_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_190 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_182
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858 (coe v0))
      (coe du_maxOperator_186 (coe v0))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≤x
d_x'8851'y'8804'x_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_192 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'x_192 v3
du_x'8851'y'8804'x_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_192 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_194 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'z'8804'y_194 v3
du_x'8804'y'8658'x'8851'z'8804'y_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_194 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_196 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'z'8851'x'8804'y_196 v3
du_x'8804'y'8658'z'8851'x'8804'y_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_196 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≤y
d_x'8851'y'8804'y_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_198 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'y_198 v3
du_x'8851'y'8804'y_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_198 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_200 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'x'8658'x'8804'y_200 v3
du_x'8851'y'8776'x'8658'x'8804'y_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_200 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_202 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'y'8658'y'8804'x_202 v3
du_x'8851'y'8776'y'8658'y'8804'x_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_202 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_204 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'y_204 v3
du_x'8804'y'8851'z'8658'x'8804'y_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_204 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_206 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'z_206 v3
du_x'8804'y'8851'z'8658'x'8804'z_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_206 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-assoc
d_'8851''45'assoc_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_208 ~v0 ~v1 ~v2 v3 = du_'8851''45'assoc_208 v3
du_'8851''45'assoc_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_208 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2810
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-band
d_'8851''45'band_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_210 ~v0 ~v1 ~v2 v3 = du_'8851''45'band_210 v3
du_'8851''45'band_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
du_'8851''45'band_210 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-comm
d_'8851''45'comm_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_212 ~v0 ~v1 ~v2 v3 = du_'8851''45'comm_212 v3
du_'8851''45'comm_212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_212 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_214 ~v0 ~v1 ~v2 v3
  = du_'8851''45'commutativeSemigroup_214 v3
du_'8851''45'commutativeSemigroup_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
du_'8851''45'commutativeSemigroup_214 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-cong
d_'8851''45'cong_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_216 ~v0 ~v1 ~v2 v3 = du_'8851''45'cong_216 v3
du_'8851''45'cong_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_216 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-congʳ
d_'8851''45'cong'691'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_218 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'691'_218 v3
du_'8851''45'cong'691'_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_218 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2786
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-congˡ
d_'8851''45'cong'737'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_220 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'737'_220 v3
du_'8851''45'cong'737'_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_220 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-idem
d_'8851''45'idem_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_222 ~v0 ~v1 ~v2 v3 = du_'8851''45'idem_222 v3
du_'8851''45'idem_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_222 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identity
d_'8851''45'identity_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_224 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity_224 v3
du_'8851''45'identity_224 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_224 v0
  = let v1 = coe du_maxOperator_186 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                      v1 v2 v4 (coe v3 v4)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                      v1 v4 v2 (coe v3 v4)))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identityʳ
d_'8851''45'identity'691'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_226 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity'691'_226 v3
du_'8851''45'identity'691'_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_226 v0
  = let v1 = coe du_maxOperator_186 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
              v1 v4 v2 (coe v3 v4)))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identityˡ
d_'8851''45'identity'737'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_228 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity'737'_228 v3
du_'8851''45'identity'737'_228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_228 v0
  = let v1 = coe du_maxOperator_186 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
              v1 v2 v4 (coe v3 v4)))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isBand
d_'8851''45'isBand_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_230 ~v0 ~v1 ~v2 v3 = du_'8851''45'isBand_230 v3
du_'8851''45'isBand_230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8851''45'isBand_230 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_232 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isCommutativeSemigroup_232 v3
du_'8851''45'isCommutativeSemigroup_232 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'8851''45'isCommutativeSemigroup_232 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isMagma
d_'8851''45'isMagma_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_234 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMagma_234 v3
du_'8851''45'isMagma_234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8851''45'isMagma_234 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isMonoid
d_'8851''45'isMonoid_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8851''45'isMonoid_236 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMonoid_236 v3
du_'8851''45'isMonoid_236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8851''45'isMonoid_236 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_2908
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_238 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSelectiveMagma_238 v3
du_'8851''45'isSelectiveMagma_238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_'8851''45'isSelectiveMagma_238 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSemigroup
d_'8851''45'isSemigroup_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_240 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSemigroup_240 v3
du_'8851''45'isSemigroup_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8851''45'isSemigroup_240 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-glb
d_'8851''45'glb_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_242 ~v0 ~v1 ~v2 v3 = du_'8851''45'glb_242 v3
du_'8851''45'glb_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_242 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-magma
d_'8851''45'magma_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_244 ~v0 ~v1 ~v2 v3 = du_'8851''45'magma_244 v3
du_'8851''45'magma_244 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
du_'8851''45'magma_244 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-mono-≤
d_'8851''45'mono'45''8804'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_246 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'45''8804'_246 v3
du_'8851''45'mono'45''8804'_246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_246 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoid
d_'8851''45'monoid_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'8851''45'monoid_248 ~v0 ~v1 ~v2 v3 = du_'8851''45'monoid_248 v3
du_'8851''45'monoid_248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_'8851''45'monoid_248 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_2926
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_250 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'691''45''8804'_250 v3
du_'8851''45'mono'691''45''8804'_250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_250 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_252 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'737''45''8804'_252 v3
du_'8851''45'mono'737''45''8804'_252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_252 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-sel
d_'8851''45'sel_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_254 ~v0 ~v1 ~v2 v3 = du_'8851''45'sel_254 v3
du_'8851''45'sel_254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_254 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_256 ~v0 ~v1 ~v2 v3
  = du_'8851''45'selectiveMagma_256 v3
du_'8851''45'selectiveMagma_256 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
du_'8851''45'selectiveMagma_256 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-semigroup
d_'8851''45'semigroup_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_258 ~v0 ~v1 ~v2 v3
  = du_'8851''45'semigroup_258 v3
du_'8851''45'semigroup_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
du_'8851''45'semigroup_258 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-triangulate
d_'8851''45'triangulate_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_260 ~v0 ~v1 ~v2 v3
  = du_'8851''45'triangulate_260 v3
du_'8851''45'triangulate_260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_260 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_858
              (coe v0) in
    coe
      (let v2 = coe du_maxOperator_186 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3158
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v2))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zero
d_'8851''45'zero_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_262 ~v0 ~v1 ~v2 v3 = du_'8851''45'zero_262 v3
du_'8851''45'zero_262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_262 v0
  = let v1 = coe du_maxOperator_186 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                      v1 v2 v4 (coe v3 v4)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                      v1 v4 v2 (coe v3 v4)))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zeroʳ
d_'8851''45'zero'691'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_264 ~v0 ~v1 ~v2 v3
  = du_'8851''45'zero'691'_264 v3
du_'8851''45'zero'691'_264 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_264 v0
  = let v1 = coe du_maxOperator_186 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
              v1 v4 v2 (coe v3 v4)))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zeroˡ
d_'8851''45'zero'737'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_266 ~v0 ~v1 ~v2 v3
  = du_'8851''45'zero'737'_266 v3
du_'8851''45'zero'737'_266 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_266 v0
  = let v1 = coe du_maxOperator_186 (coe v0) in
    coe
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
              v1 v2 v4 (coe v3 v4)))
