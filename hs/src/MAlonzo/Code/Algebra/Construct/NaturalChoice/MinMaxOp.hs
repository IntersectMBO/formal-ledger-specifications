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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Construct.NaturalChoice.MinMaxOp._._≈_
d__'8776'__24 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__24 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._≲_
d__'8818'__28 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__28 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._⊓_
d__'8851'__98 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__98 ~v0 v1 ~v2 = du__'8851'__98 v1
du__'8851'__98 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__98 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
      (coe v0)
-- Algebra.Construct.NaturalChoice.MinMaxOp._._Absorbs_
d__Absorbs__114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__114 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOver_
d__DistributesOver__116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__116 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOverʳ_
d__DistributesOver'691'__118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__118 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOverˡ_
d__DistributesOver'737'__120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__120 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._.Absorptive
d_Absorptive_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_126 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_3310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_3310 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_mono'45''8804''45'distrib'45''8851'_3310 v3 v4
du_mono'45''8804''45'distrib'45''8851'_3310 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_3310 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_3466
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_3312 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8658'x'8851'z'8804'y_3312 v3 v4
du_x'8804'y'8658'x'8851'z'8804'y_3312 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_3312 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_3314 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8658'z'8851'x'8804'y_3314 v3 v4
du_x'8804'y'8658'z'8851'x'8804'y_3314 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_3314 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_3316 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8851'z'8658'x'8804'y_3316 v3 v4
du_x'8804'y'8851'z'8658'x'8804'y_3316 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_3316 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_3318 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8851'z'8658'x'8804'z_3318 v3 v4
du_x'8804'y'8851'z'8658'x'8804'z_3318 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_3318 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_3320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_3320 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8776'x'8658'x'8804'y_3320 v3 v4
du_x'8851'y'8776'x'8658'x'8804'y_3320 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_3320 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_3322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_3322 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8776'y'8658'y'8804'x_3322 v3 v4
du_x'8851'y'8776'y'8658'y'8804'x_3322 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_3322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤x
d_x'8851'y'8804'x_3324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_3324 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8804'x_3324 v3 v4
du_x'8851'y'8804'x_3324 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_3324 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤y
d_x'8851'y'8804'y_3326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_3326 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8804'y_3326 v3 v4
du_x'8851'y'8804'y_3326 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_3326 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-assoc
d_'8851''45'assoc_3328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_3328 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'assoc_3328 v3 v4
du_'8851''45'assoc_3328 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_3328 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_3296
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-band
d_'8851''45'band_3330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_3330 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'band_3330 v3 v4
du_'8851''45'band_3330 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
du_'8851''45'band_3330 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-comm
d_'8851''45'comm_3332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_3332 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'comm_3332 v3 v4
du_'8851''45'comm_3332 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_3332 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_3334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_3334 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'commutativeSemigroup_3334 v3 v4
du_'8851''45'commutativeSemigroup_3334 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_'8851''45'commutativeSemigroup_3334 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-cong
d_'8851''45'cong_3336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_3336 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong_3336 v3 v4
du_'8851''45'cong_3336 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_3336 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_3282
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congʳ
d_'8851''45'cong'691'_3338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_3338 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong'691'_3338 v3 v4
du_'8851''45'cong'691'_3338 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_3338 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_3272
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congˡ
d_'8851''45'cong'737'_3340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_3340 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong'737'_3340 v3 v4
du_'8851''45'cong'737'_3340 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_3340 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-glb
d_'8851''45'glb_3342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_3342 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'glb_3342 v3 v4
du_'8851''45'glb_3342 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_3342 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-idem
d_'8851''45'idem_3344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_3344 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'idem_3344 v3 v4
du_'8851''45'idem_3344 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_3344 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3336
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identity
d_'8851''45'identity_3346 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_3346 ~v0 v1 ~v2 v3 v4
  = du_'8851''45'identity_3346 v1 v3 v4
du_'8851''45'identity_3346 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_3346 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityʳ
d_'8851''45'identity'691'_3348 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_3348 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'identity'691'_3348 v1 v3 v4 v5
du_'8851''45'identity'691'_3348 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_3348 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityˡ
d_'8851''45'identity'737'_3350 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_3350 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'identity'737'_3350 v1 v3 v4 v5
du_'8851''45'identity'737'_3350 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_3350 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isBand
d_'8851''45'isBand_3352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_3352 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isBand_3352 v3 v4
du_'8851''45'isBand_3352 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8851''45'isBand_3352 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_3354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_3354 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isCommutativeSemigroup_3354 v3 v4
du_'8851''45'isCommutativeSemigroup_3354 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'8851''45'isCommutativeSemigroup_3354 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMagma
d_'8851''45'isMagma_3356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_3356 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isMagma_3356 v3 v4
du_'8851''45'isMagma_3356 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8851''45'isMagma_3356 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMonoid
d_'8851''45'isMonoid_3358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_3358 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isMonoid_3358 v3 v4
du_'8851''45'isMonoid_3358 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8851''45'isMonoid_3358 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_3360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_3360 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSelectiveMagma_3360 v3 v4
du_'8851''45'isSelectiveMagma_3360 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
du_'8851''45'isSelectiveMagma_3360 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemigroup
d_'8851''45'isSemigroup_3362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_3362 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSemigroup_3362 v3 v4
du_'8851''45'isSemigroup_3362 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8851''45'isSemigroup_3362 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-magma
d_'8851''45'magma_3364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_3364 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'magma_3364 v3 v4
du_'8851''45'magma_3364 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_'8851''45'magma_3364 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-mono-≤
d_'8851''45'mono'45''8804'_3366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_3366 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'45''8804'_3366 v3 v4
du_'8851''45'mono'45''8804'_3366 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_3366 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoid
d_'8851''45'monoid_3368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_3368 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'monoid_3368 v3 v4
du_'8851''45'monoid_3368 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'8851''45'monoid_3368 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_3370 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'691''45''8804'_3370 v3 v4
du_'8851''45'mono'691''45''8804'_3370 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_3370 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_3372 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'737''45''8804'_3372 v3 v4
du_'8851''45'mono'737''45''8804'_3372 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_3372 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-rawMagma
d_'8851''45'rawMagma_3374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8851''45'rawMagma_3374 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8851''45'rawMagma_3374 v4
du_'8851''45'rawMagma_3374 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'8851''45'rawMagma_3374 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3398
      (coe v0)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-sel
d_'8851''45'sel_3376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_3376 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'sel_3376 v3 v4
du_'8851''45'sel_3376 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_3376 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_3378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_3378 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'selectiveMagma_3378 v3 v4
du_'8851''45'selectiveMagma_3378 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
du_'8851''45'selectiveMagma_3378 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semigroup
d_'8851''45'semigroup_3380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_3380 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'semigroup_3380 v3 v4
du_'8851''45'semigroup_3380 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_'8851''45'semigroup_3380 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-triangulate
d_'8851''45'triangulate_3382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_3382 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'triangulate_3382 v3 v4
du_'8851''45'triangulate_3382 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_3382 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3644
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zero
d_'8851''45'zero_3384 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_3384 ~v0 v1 ~v2 v3 v4
  = du_'8851''45'zero_3384 v1 v3 v4
du_'8851''45'zero_3384 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_3384 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroʳ
d_'8851''45'zero'691'_3386 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_3386 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'zero'691'_3386 v1 v3 v4 v5
du_'8851''45'zero'691'_3386 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_3386 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroˡ
d_'8851''45'zero'737'_3388 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_3388 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'zero'737'_3388 v1 v3 v4 v5
du_'8851''45'zero'737'_3388 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_3388 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_3392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_3392 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_mono'45''8804''45'distrib'45''8852'_3392 v3 v5
du_mono'45''8804''45'distrib'45''8852'_3392 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_3392 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_190
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤x
d_x'8851'y'8804'x_3394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_3394 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8804'x_3394 v3 v5
du_x'8851'y'8804'x_3394 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_3394 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_3396 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8658'x'8851'z'8804'y_3396 v3 v5
du_x'8804'y'8658'x'8851'z'8804'y_3396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_3396 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_3398 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8658'z'8851'x'8804'y_3398 v3 v5
du_x'8804'y'8658'z'8851'x'8804'y_3398 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_3398 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤y
d_x'8851'y'8804'y_3400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_3400 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8804'y_3400 v3 v5
du_x'8851'y'8804'y_3400 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_3400 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_3402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_3402 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8776'x'8658'x'8804'y_3402 v3 v5
du_x'8851'y'8776'x'8658'x'8804'y_3402 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_3402 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_3404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_3404 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8776'y'8658'y'8804'x_3404 v3 v5
du_x'8851'y'8776'y'8658'y'8804'x_3404 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_3404 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_3406 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8851'z'8658'x'8804'y_3406 v3 v5
du_x'8804'y'8851'z'8658'x'8804'y_3406 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_3406 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_3408 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8851'z'8658'x'8804'z_3408 v3 v5
du_x'8804'y'8851'z'8658'x'8804'z_3408 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_3408 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-assoc
d_'8851''45'assoc_3410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_3410 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'assoc_3410 v3 v5
du_'8851''45'assoc_3410 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_3410 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_3296
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-band
d_'8851''45'band_3412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_3412 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'band_3412 v3 v5
du_'8851''45'band_3412 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
du_'8851''45'band_3412 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-comm
d_'8851''45'comm_3414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_3414 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'comm_3414 v3 v5
du_'8851''45'comm_3414 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_3414 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_3416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_3416 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'commutativeSemigroup_3416 v3 v5
du_'8851''45'commutativeSemigroup_3416 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_'8851''45'commutativeSemigroup_3416 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-cong
d_'8851''45'cong_3418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_3418 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong_3418 v3 v5
du_'8851''45'cong_3418 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_3418 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_3282
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congʳ
d_'8851''45'cong'691'_3420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_3420 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong'691'_3420 v3 v5
du_'8851''45'cong'691'_3420 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_3420 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_3272
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congˡ
d_'8851''45'cong'737'_3422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_3422 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong'737'_3422 v3 v5
du_'8851''45'cong'737'_3422 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_3422 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-idem
d_'8851''45'idem_3424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_3424 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'idem_3424 v3 v5
du_'8851''45'idem_3424 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_3424 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3336
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identity
d_'8851''45'identity_3426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_3426 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8851''45'identity_3426 v5 v6 v7
du_'8851''45'identity_3426 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_3426 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityʳ
d_'8851''45'identity'691'_3428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_3428 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'identity'691'_3428 v5 v6 v7 v8
du_'8851''45'identity'691'_3428 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_3428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityˡ
d_'8851''45'identity'737'_3430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_3430 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'identity'737'_3430 v5 v6 v7 v8
du_'8851''45'identity'737'_3430 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_3430 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isBand
d_'8851''45'isBand_3432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_3432 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isBand_3432 v3 v5
du_'8851''45'isBand_3432 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8851''45'isBand_3432 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_3434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_3434 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isCommutativeSemigroup_3434 v3 v5
du_'8851''45'isCommutativeSemigroup_3434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'8851''45'isCommutativeSemigroup_3434 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMagma
d_'8851''45'isMagma_3436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_3436 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isMagma_3436 v3 v5
du_'8851''45'isMagma_3436 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8851''45'isMagma_3436 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMonoid
d_'8851''45'isMonoid_3438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_3438 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isMonoid_3438 v3 v5
du_'8851''45'isMonoid_3438 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8851''45'isMonoid_3438 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_3440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_3440 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSelectiveMagma_3440 v3 v5
du_'8851''45'isSelectiveMagma_3440 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
du_'8851''45'isSelectiveMagma_3440 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemigroup
d_'8851''45'isSemigroup_3442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_3442 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSemigroup_3442 v3 v5
du_'8851''45'isSemigroup_3442 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8851''45'isSemigroup_3442 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-glb
d_'8851''45'glb_3444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_3444 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'glb_3444 v3 v5
du_'8851''45'glb_3444 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_3444 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-magma
d_'8851''45'magma_3446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_3446 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'magma_3446 v3 v5
du_'8851''45'magma_3446 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_'8851''45'magma_3446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-mono-≤
d_'8851''45'mono'45''8804'_3448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_3448 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'45''8804'_3448 v3 v5
du_'8851''45'mono'45''8804'_3448 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_3448 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoid
d_'8851''45'monoid_3450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_3450 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'monoid_3450 v3 v5
du_'8851''45'monoid_3450 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'8851''45'monoid_3450 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_3452 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'691''45''8804'_3452 v3 v5
du_'8851''45'mono'691''45''8804'_3452 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_3452 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_3454 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'737''45''8804'_3454 v3 v5
du_'8851''45'mono'737''45''8804'_3454 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_3454 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-sel
d_'8851''45'sel_3456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_3456 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'sel_3456 v3 v5
du_'8851''45'sel_3456 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_3456 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_3458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_3458 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'selectiveMagma_3458 v3 v5
du_'8851''45'selectiveMagma_3458 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
du_'8851''45'selectiveMagma_3458 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semigroup
d_'8851''45'semigroup_3460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_3460 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'semigroup_3460 v3 v5
du_'8851''45'semigroup_3460 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_'8851''45'semigroup_3460 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-triangulate
d_'8851''45'triangulate_3462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_3462 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'triangulate_3462 v3 v5
du_'8851''45'triangulate_3462 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_3462 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3644
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zero
d_'8851''45'zero_3464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_3464 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8851''45'zero_3464 v5 v6 v7
du_'8851''45'zero_3464 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_3464 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroʳ
d_'8851''45'zero'691'_3466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_3466 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'zero'691'_3466 v5 v6 v7 v8
du_'8851''45'zero'691'_3466 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_3466 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroˡ
d_'8851''45'zero'737'_3468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_3468 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'zero'737'_3468 v5 v6 v7 v8
du_'8851''45'zero'737'_3468 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_3468 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_3470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'distrib'737''45''8852'_3470 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
                                        v8
  = du_'8851''45'distrib'737''45''8852'_3470 v3 v4 v5 v6 v7 v8
du_'8851''45'distrib'737''45''8852'_3470 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'distrib'737''45''8852'_3470 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v4 v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v5))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v5))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v5)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                         v2
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3)
                            (\ v8 v9 -> v8) v4 v5)
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                            (\ v8 v9 -> v9)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3)
                            v4 v5)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
                            (coe v0) (coe v1) (coe v3) (coe v4) (coe v5) (coe v7))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe v0) (coe v1) (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v4 v5)
                      (coe v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                         v2 v4 v5 v7)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v5))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v5))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v5)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                         v2
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                            (\ v8 v9 -> v9)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3)
                            v5 v4)
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3)
                            (\ v8 v9 -> v8) v5 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
                            (coe v0) (coe v1) (coe v3) (coe v5) (coe v4) (coe v7))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe v0) (coe v1) (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v4 v5)
                      (coe v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                         v2 v4 v5 v7)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_3498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'distrib'691''45''8852'_3498 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'distrib'691''45''8852'_3498 v3 v4 v5
du_'8851''45'distrib'691''45''8852'_3498 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'distrib'691''45''8852'_3498 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr'691'_570
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_setoid_190
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_270 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_3282
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
         (coe v0) (coe v1))
      (coe
         du_'8851''45'distrib'737''45''8852'_3470 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_3500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_3500 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'distrib'45''8852'_3500 v3 v4 v5
du_'8851''45'distrib'45''8852'_3500 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'distrib'45''8852'_3500 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8851''45'distrib'737''45''8852'_3470 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8851''45'distrib'691''45''8852'_3498 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_3502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'distrib'737''45''8851'_3502 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
                                        v8
  = du_'8852''45'distrib'737''45''8851'_3502 v3 v4 v5 v6 v7 v8
du_'8852''45'distrib'737''45''8851'_3502 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'distrib'737''45''8851'_3502 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v4 v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v5))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v5))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3 v5)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                            (\ v8 v9 -> v9)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3)
                            v5 v4)
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3)
                            (\ v8 v9 -> v8) v5 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                               (coe v0))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                               (coe v2))
                            (coe v3) (coe v5) (coe v4) (coe v7))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                         (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                         (coe v2))
                      (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v4 v5)
                      (coe v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v4 v5 v7)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v5))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            v3 v5))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3 v5)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3)
                            (\ v8 v9 -> v8) v4 v5)
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                            (\ v8 v9 -> v9)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                               v3)
                            v4 v5)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                               (coe v0))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                               (coe v2))
                            (coe v3) (coe v4) (coe v5) (coe v7))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                         (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                         (coe v2))
                      (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v4 v5)
                      (coe v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 v4 v5 v7)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_3530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'distrib'691''45''8851'_3530 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45'distrib'691''45''8851'_3530 v3 v4 v5
du_'8852''45'distrib'691''45''8851'_3530 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'distrib'691''45''8851'_3530 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr'691'_570
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_setoid_190
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_270 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_3282
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe v2)))
      (coe
         du_'8852''45'distrib'737''45''8851'_3502 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_3532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_3532 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45'distrib'45''8851'_3532 v3 v4 v5
du_'8852''45'distrib'45''8851'_3532 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''45'distrib'45''8851'_3532 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8852''45'distrib'737''45''8851'_3502 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8852''45'distrib'691''45''8851'_3530 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_3534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'absorbs'45''8852'_3534 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'absorbs'45''8852'_3534 v3 v4 v5 v6 v7
du_'8851''45'absorbs'45''8852'_3534 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'absorbs'45''8852'_3534 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v3 v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v4))
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v4)
                   v3
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      v3 v3
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe v3))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v3 v4 v6))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe v0) (coe v1) (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4)
                      (coe v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                         v2 v3 v4 v6)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v4))
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v3)
                   v3
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v3)
                      v3 v3
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe v3))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3336
                         (coe v0) (coe v1) (coe v3)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe v0) (coe v1) (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4)
                      (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                         v2 v3 v4 v6)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_3556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'absorbs'45''8851'_3556 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8852''45'absorbs'45''8851'_3556 v3 v4 v5 v6 v7
du_'8852''45'absorbs'45''8851'_3556 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'absorbs'45''8851'_3556 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v3 v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v4))
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v3)
                   v3
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v3)
                      v3 v3
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe v3))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3336
                         (coe
                            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                            (coe v0))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                            (coe v2))
                         (coe v3)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                         (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                         (coe v2))
                      (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v3 v4 v6)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v4))
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v3 v4)
                   v3
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v3 v4)
                      v3 v3
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe v3))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                         v2 v3 v4 v6))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                         (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                         (coe v2))
                      (coe v3)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      (coe v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 v3 v4 v6)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_3578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_3578 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'absorptive_3578 v3 v4 v5
du_'8852''45''8851''45'absorptive_3578 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''45''8851''45'absorptive_3578 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8852''45'absorbs'45''8851'_3556 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8851''45'absorbs'45''8852'_3534 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_3580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_3580 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'absorptive_3580 v3 v4 v5
du_'8851''45''8852''45'absorptive_3580 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45''8852''45'absorptive_3580 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8851''45'absorbs'45''8852'_3534 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8852''45'absorbs'45''8851'_3556 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp._≥_
d__'8805'__3582 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> ()
d__'8805'__3582 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_3590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_antimono'45''8804''45'distrib'45''8851'_3590 ~v0 ~v1 ~v2 v3 v4 v5
                                               v6 v7 v8 v9 v10
  = du_antimono'45''8804''45'distrib'45''8851'_3590
      v3 v4 v5 v6 v7 v8 v9 v10
du_antimono'45''8804''45'distrib'45''8851'_3590 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_antimono'45''8804''45'distrib'45''8851'_3590 v0 v1 v2 v3 v4 v5
                                                v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v6 v7 in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v6 v7))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v6 v7))
                   (coe v3 v6)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe v3 v6)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            (coe v3 v6) (coe v3 v7)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                         v2 (coe v3 v6) (coe v3 v7) (coe v5 v6 v7 v9)))
                   (coe
                      v4
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v6 v7)
                      v6
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v6 v7 v9)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v6 v7))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v6 v7))
                   (coe v3 v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe v3 v7)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                            (coe v3 v6) (coe v3 v7)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                         v2 (coe v3 v6) (coe v3 v7) (coe v5 v7 v6 v9)))
                   (coe
                      v4
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v6 v7)
                      v7
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 v6 v7 v9)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_3636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_antimono'45''8804''45'distrib'45''8852'_3636 ~v0 ~v1 ~v2 v3 v4 v5
                                               v6 v7 v8 v9 v10
  = du_antimono'45''8804''45'distrib'45''8852'_3636
      v3 v4 v5 v6 v7 v8 v9 v10
du_antimono'45''8804''45'distrib'45''8852'_3636 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_antimono'45''8804''45'distrib'45''8852'_3636 v0 v1 v2 v3 v4 v5
                                                v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v6 v7 in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v6 v7))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v6 v7))
                   (coe v3 v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe v3 v7)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe v3 v6) (coe v3 v7)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 (coe v3 v6) (coe v3 v7) (coe v5 v6 v7 v9)))
                   (coe
                      v4
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v6 v7)
                      v7
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
                         v2 v6 v7 v9)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                      v6 v7))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v6 v7))
                   (coe v3 v6)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe v3 v6)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v3 v6) (coe v3 v7))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe v3 v6) (coe v3 v7)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 (coe v3 v6) (coe v3 v7) (coe v5 v7 v6 v9)))
                   (coe
                      v4
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                         v6 v7)
                      v6
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
                         v2 v6 v7 v9)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_3680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x'8852'y_3680 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8804'x'8852'y_3680 v3 v4 v5 v6 v7
du_x'8851'y'8804'x'8852'y_3680 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x'8852'y_3680 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
               (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v4)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
         v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                  (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v3 v4)
         v3
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
            v3 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                     (coe v0))))
            v3
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
               v3 v4)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
               v3 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__154 v2
                  v3 v4))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                  (coe v2))
               (coe v3) (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe v0) (coe v1) (coe v3) (coe v4)))
