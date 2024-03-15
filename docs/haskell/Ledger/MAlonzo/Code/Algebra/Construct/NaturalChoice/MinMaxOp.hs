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
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__24 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._≲_
d__'8818'__26 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__26 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._⊓_
d__'8851'__90 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__90 ~v0 v1 ~v2 = du__'8851'__90 v1
du__'8851'__90 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__90 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
      (coe v0)
-- Algebra.Construct.NaturalChoice.MinMaxOp._._Absorbs_
d__Absorbs__106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__106 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOver_
d__DistributesOver__108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__108 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOverʳ_
d__DistributesOver'691'__110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__110 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOverˡ_
d__DistributesOver'737'__112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__112 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._.Absorptive
d_Absorptive_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_118 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_2766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_2766 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_mono'45''8804''45'distrib'45''8851'_2766 v3 v4
du_mono'45''8804''45'distrib'45''8851'_2766 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_2766 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_2980
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_2768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_2768 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8658'x'8851'z'8804'y_2768 v3 v4
du_x'8804'y'8658'x'8851'z'8804'y_2768 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_2768 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_2770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_2770 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8658'z'8851'x'8804'y_2770 v3 v4
du_x'8804'y'8658'z'8851'x'8804'y_2770 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_2770 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_2772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_2772 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8851'z'8658'x'8804'y_2772 v3 v4
du_x'8804'y'8851'z'8658'x'8804'y_2772 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_2772 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_2774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_2774 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8851'z'8658'x'8804'z_2774 v3 v4
du_x'8804'y'8851'z'8658'x'8804'z_2774 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_2774 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_2776 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8776'x'8658'x'8804'y_2776 v3 v4
du_x'8851'y'8776'x'8658'x'8804'y_2776 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_2776 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_2778 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8776'y'8658'y'8804'x_2778 v3 v4
du_x'8851'y'8776'y'8658'y'8804'x_2778 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_2778 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤x
d_x'8851'y'8804'x_2780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_2780 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8804'x_2780 v3 v4
du_x'8851'y'8804'x_2780 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_2780 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤y
d_x'8851'y'8804'y_2782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_2782 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8804'y_2782 v3 v4
du_x'8851'y'8804'y_2782 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_2782 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-assoc
d_'8851''45'assoc_2784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_2784 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'assoc_2784 v3 v4
du_'8851''45'assoc_2784 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_2784 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2810
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-band
d_'8851''45'band_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_2786 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'band_2786 v3 v4
du_'8851''45'band_2786 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
du_'8851''45'band_2786 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-comm
d_'8851''45'comm_2788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_2788 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'comm_2788 v3 v4
du_'8851''45'comm_2788 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_2788 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_2790 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'commutativeSemigroup_2790 v3 v4
du_'8851''45'commutativeSemigroup_2790 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
du_'8851''45'commutativeSemigroup_2790 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-cong
d_'8851''45'cong_2792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_2792 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong_2792 v3 v4
du_'8851''45'cong_2792 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_2792 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congʳ
d_'8851''45'cong'691'_2794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_2794 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong'691'_2794 v3 v4
du_'8851''45'cong'691'_2794 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_2794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2786
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congˡ
d_'8851''45'cong'737'_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_2796 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong'737'_2796 v3 v4
du_'8851''45'cong'737'_2796 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_2796 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-glb
d_'8851''45'glb_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_2798 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'glb_2798 v3 v4
du_'8851''45'glb_2798 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_2798 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-idem
d_'8851''45'idem_2800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_2800 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'idem_2800 v3 v4
du_'8851''45'idem_2800 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_2800 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identity
d_'8851''45'identity_2802 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_2802 ~v0 v1 ~v2 v3 v4
  = du_'8851''45'identity_2802 v1 v3 v4
du_'8851''45'identity_2802 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_2802 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityʳ
d_'8851''45'identity'691'_2804 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_2804 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'identity'691'_2804 v1 v3 v4 v5
du_'8851''45'identity'691'_2804 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_2804 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityˡ
d_'8851''45'identity'737'_2806 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_2806 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'identity'737'_2806 v1 v3 v4 v5
du_'8851''45'identity'737'_2806 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_2806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isBand
d_'8851''45'isBand_2808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_2808 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isBand_2808 v3 v4
du_'8851''45'isBand_2808 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8851''45'isBand_2808 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_2810 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isCommutativeSemigroup_2810 v3 v4
du_'8851''45'isCommutativeSemigroup_2810 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'8851''45'isCommutativeSemigroup_2810 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMagma
d_'8851''45'isMagma_2812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_2812 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isMagma_2812 v3 v4
du_'8851''45'isMagma_2812 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8851''45'isMagma_2812 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMonoid
d_'8851''45'isMonoid_2814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8851''45'isMonoid_2814 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isMonoid_2814 v3 v4
du_'8851''45'isMonoid_2814 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8851''45'isMonoid_2814 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_2908
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_2816 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSelectiveMagma_2816 v3 v4
du_'8851''45'isSelectiveMagma_2816 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_'8851''45'isSelectiveMagma_2816 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemigroup
d_'8851''45'isSemigroup_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_2818 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSemigroup_2818 v3 v4
du_'8851''45'isSemigroup_2818 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8851''45'isSemigroup_2818 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-magma
d_'8851''45'magma_2820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_2820 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'magma_2820 v3 v4
du_'8851''45'magma_2820 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
du_'8851''45'magma_2820 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-mono-≤
d_'8851''45'mono'45''8804'_2822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_2822 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'45''8804'_2822 v3 v4
du_'8851''45'mono'45''8804'_2822 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_2822 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoid
d_'8851''45'monoid_2824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'8851''45'monoid_2824 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'monoid_2824 v3 v4
du_'8851''45'monoid_2824 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_'8851''45'monoid_2824 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_2926
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_2826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_2826 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'691''45''8804'_2826 v3 v4
du_'8851''45'mono'691''45''8804'_2826 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_2826 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_2828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_2828 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'737''45''8804'_2828 v3 v4
du_'8851''45'mono'737''45''8804'_2828 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_2828 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-rawMagma
d_'8851''45'rawMagma_2830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'8851''45'rawMagma_2830 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8851''45'rawMagma_2830 v4
du_'8851''45'rawMagma_2830 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
du_'8851''45'rawMagma_2830 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_2912
      (coe v0)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-sel
d_'8851''45'sel_2832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2832 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'sel_2832 v3 v4
du_'8851''45'sel_2832 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_2832 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_2834 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'selectiveMagma_2834 v3 v4
du_'8851''45'selectiveMagma_2834 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
du_'8851''45'selectiveMagma_2834 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semigroup
d_'8851''45'semigroup_2836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_2836 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'semigroup_2836 v3 v4
du_'8851''45'semigroup_2836 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
du_'8851''45'semigroup_2836 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-triangulate
d_'8851''45'triangulate_2838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_2838 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'triangulate_2838 v3 v4
du_'8851''45'triangulate_2838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_2838 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3158
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zero
d_'8851''45'zero_2840 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_2840 ~v0 v1 ~v2 v3 v4
  = du_'8851''45'zero_2840 v1 v3 v4
du_'8851''45'zero_2840 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_2840 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroʳ
d_'8851''45'zero'691'_2842 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_2842 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'zero'691'_2842 v1 v3 v4 v5
du_'8851''45'zero'691'_2842 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_2842 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroˡ
d_'8851''45'zero'737'_2844 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_2844 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'zero'737'_2844 v1 v3 v4 v5
du_'8851''45'zero'737'_2844 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_2844 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_2848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_2848 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_mono'45''8804''45'distrib'45''8852'_2848 v3 v5
du_mono'45''8804''45'distrib'45''8852'_2848 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_2848 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_182
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤x
d_x'8851'y'8804'x_2850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_2850 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8804'x_2850 v3 v5
du_x'8851'y'8804'x_2850 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_2850 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_2852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_2852 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8658'x'8851'z'8804'y_2852 v3 v5
du_x'8804'y'8658'x'8851'z'8804'y_2852 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_2852 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_2854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_2854 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8658'z'8851'x'8804'y_2854 v3 v5
du_x'8804'y'8658'z'8851'x'8804'y_2854 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_2854 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤y
d_x'8851'y'8804'y_2856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_2856 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8804'y_2856 v3 v5
du_x'8851'y'8804'y_2856 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_2856 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_2858 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8776'x'8658'x'8804'y_2858 v3 v5
du_x'8851'y'8776'x'8658'x'8804'y_2858 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_2858 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_2860 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8776'y'8658'y'8804'x_2860 v3 v5
du_x'8851'y'8776'y'8658'y'8804'x_2860 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_2860 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_2862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_2862 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8851'z'8658'x'8804'y_2862 v3 v5
du_x'8804'y'8851'z'8658'x'8804'y_2862 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_2862 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_2864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_2864 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8851'z'8658'x'8804'z_2864 v3 v5
du_x'8804'y'8851'z'8658'x'8804'z_2864 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_2864 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-assoc
d_'8851''45'assoc_2866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_2866 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'assoc_2866 v3 v5
du_'8851''45'assoc_2866 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_2866 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2810
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-band
d_'8851''45'band_2868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_2868 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'band_2868 v3 v5
du_'8851''45'band_2868 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
du_'8851''45'band_2868 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-comm
d_'8851''45'comm_2870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_2870 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'comm_2870 v3 v5
du_'8851''45'comm_2870 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_2870 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_2872 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'commutativeSemigroup_2872 v3 v5
du_'8851''45'commutativeSemigroup_2872 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
du_'8851''45'commutativeSemigroup_2872 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-cong
d_'8851''45'cong_2874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_2874 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong_2874 v3 v5
du_'8851''45'cong_2874 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_2874 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congʳ
d_'8851''45'cong'691'_2876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_2876 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong'691'_2876 v3 v5
du_'8851''45'cong'691'_2876 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_2876 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_2786
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congˡ
d_'8851''45'cong'737'_2878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_2878 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong'737'_2878 v3 v5
du_'8851''45'cong'737'_2878 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_2878 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-idem
d_'8851''45'idem_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_2880 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'idem_2880 v3 v5
du_'8851''45'idem_2880 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_2880 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identity
d_'8851''45'identity_2882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_2882 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8851''45'identity_2882 v5 v6 v7
du_'8851''45'identity_2882 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_2882 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityʳ
d_'8851''45'identity'691'_2884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_2884 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'identity'691'_2884 v5 v6 v7 v8
du_'8851''45'identity'691'_2884 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_2884 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityˡ
d_'8851''45'identity'737'_2886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_2886 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'identity'737'_2886 v5 v6 v7 v8
du_'8851''45'identity'737'_2886 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_2886 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isBand
d_'8851''45'isBand_2888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_2888 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isBand_2888 v3 v5
du_'8851''45'isBand_2888 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8851''45'isBand_2888 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_2890 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isCommutativeSemigroup_2890 v3 v5
du_'8851''45'isCommutativeSemigroup_2890 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'8851''45'isCommutativeSemigroup_2890 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMagma
d_'8851''45'isMagma_2892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_2892 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isMagma_2892 v3 v5
du_'8851''45'isMagma_2892 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8851''45'isMagma_2892 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMonoid
d_'8851''45'isMonoid_2894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8851''45'isMonoid_2894 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isMonoid_2894 v3 v5
du_'8851''45'isMonoid_2894 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8851''45'isMonoid_2894 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_2908
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_2896 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSelectiveMagma_2896 v3 v5
du_'8851''45'isSelectiveMagma_2896 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_'8851''45'isSelectiveMagma_2896 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemigroup
d_'8851''45'isSemigroup_2898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_2898 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSemigroup_2898 v3 v5
du_'8851''45'isSemigroup_2898 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8851''45'isSemigroup_2898 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-glb
d_'8851''45'glb_2900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_2900 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'glb_2900 v3 v5
du_'8851''45'glb_2900 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_2900 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-magma
d_'8851''45'magma_2902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_2902 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'magma_2902 v3 v5
du_'8851''45'magma_2902 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
du_'8851''45'magma_2902 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-mono-≤
d_'8851''45'mono'45''8804'_2904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_2904 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'45''8804'_2904 v3 v5
du_'8851''45'mono'45''8804'_2904 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_2904 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoid
d_'8851''45'monoid_2906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'8851''45'monoid_2906 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'monoid_2906 v3 v5
du_'8851''45'monoid_2906 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_'8851''45'monoid_2906 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_2926
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_2908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_2908 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'691''45''8804'_2908 v3 v5
du_'8851''45'mono'691''45''8804'_2908 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_2908 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_2910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_2910 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'737''45''8804'_2910 v3 v5
du_'8851''45'mono'737''45''8804'_2910 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_2910 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-sel
d_'8851''45'sel_2912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2912 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'sel_2912 v3 v5
du_'8851''45'sel_2912 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_2912 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_2914 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'selectiveMagma_2914 v3 v5
du_'8851''45'selectiveMagma_2914 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
du_'8851''45'selectiveMagma_2914 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semigroup
d_'8851''45'semigroup_2916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_2916 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'semigroup_2916 v3 v5
du_'8851''45'semigroup_2916 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
du_'8851''45'semigroup_2916 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-triangulate
d_'8851''45'triangulate_2918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_2918 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'triangulate_2918 v3 v5
du_'8851''45'triangulate_2918 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_2918 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3158
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zero
d_'8851''45'zero_2920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_2920 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8851''45'zero_2920 v5 v6 v7
du_'8851''45'zero_2920 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_2920 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroʳ
d_'8851''45'zero'691'_2922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_2922 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'zero'691'_2922 v5 v6 v7 v8
du_'8851''45'zero'691'_2922 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_2922 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroˡ
d_'8851''45'zero'737'_2924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_2924 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'zero'737'_2924 v5 v6 v7 v8
du_'8851''45'zero'737'_2924 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_2924 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_2926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'distrib'737''45''8852'_2926 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
                                        v8
  = du_'8851''45'distrib'737''45''8852'_2926 v3 v4 v5 v6 v7 v8
du_'8851''45'distrib'737''45''8852'_2926 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'distrib'737''45''8852'_2926 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v4 v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v8)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v5))
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v4 v5))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3 v5)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v5))
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v10)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v5)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v5))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v5))
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                           v1 v3 v4)
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                           v1 v3 v5))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                                  v2
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3)
                                     (\ v11 v12 -> v11) v4 v5)
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v11 v12 -> v12)
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3)
                                     v4 v5)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
                                     (coe v0) (coe v1) (coe v3) (coe v4) (coe v5) (coe v7)))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe v0) (coe v1) (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v4 v5)
                            (coe v5)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                               v2 v4 v5 v7)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v8)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v5))
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v4 v5))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v5))
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v10)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v4)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v5))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v5))
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                           v1 v3 v4)
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                           v1 v3 v5))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                                  v2
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v11 v12 -> v12)
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3)
                                     v5 v4)
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3)
                                     (\ v11 v12 -> v11) v5 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
                                     (coe v0) (coe v1) (coe v3) (coe v5) (coe v4) (coe v7)))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe v0) (coe v1) (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v4 v5)
                            (coe v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                               v2 v4 v5 v7)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_2954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'distrib'691''45''8852'_2954 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'distrib'691''45''8852'_2954 v3 v4 v5
du_'8851''45'distrib'691''45''8852'_2954 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'distrib'691''45''8852'_2954 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_504
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
         (coe v0) (coe v1))
      (coe
         du_'8851''45'distrib'737''45''8852'_2926 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_2956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_2956 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'distrib'45''8852'_2956 v3 v4 v5
du_'8851''45'distrib'45''8852'_2956 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'distrib'45''8852'_2956 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8851''45'distrib'737''45''8852'_2926 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8851''45'distrib'691''45''8852'_2954 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_2958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'distrib'737''45''8851'_2958 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
                                        v8
  = du_'8852''45'distrib'737''45''8851'_2958 v3 v4 v5 v6 v7 v8
du_'8852''45'distrib'737''45''8851'_2958 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'distrib'737''45''8851'_2958 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v4 v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v8)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v3 v5))
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v4 v5))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v5))
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v10)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 v3 v4)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v5))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v5))
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                           v2 v3 v4)
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                           v2 v3 v5))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                  v1
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v11 v12 -> v12)
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2 v3)
                                     v5 v4)
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2 v3)
                                     (\ v11 v12 -> v11) v5 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                                        (coe v0))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                                        (coe v2))
                                     (coe v3) (coe v5) (coe v4) (coe v7)))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                               (coe v0))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                               (coe v2))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v4 v5)
                            (coe v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                               v1 v4 v5 v7)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v8)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v4 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v3 v5))
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v4 v5))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3 v5)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v5))
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v10)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 v3 v5)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v5))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                     v2 v3 v5))
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                           v2 v3 v4)
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                           v2 v3 v5))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                  v1
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2 v3)
                                     (\ v11 v12 -> v11) v4 v5)
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v11 v12 -> v12)
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2 v3)
                                     v4 v5)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                                        (coe v0))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                                        (coe v2))
                                     (coe v3) (coe v4) (coe v5) (coe v7)))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                               (coe v0))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                               (coe v2))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v4 v5)
                            (coe v5)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                               v1 v4 v5 v7)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_2986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'distrib'691''45''8851'_2986 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45'distrib'691''45''8851'_2986 v3 v4 v5
du_'8852''45'distrib'691''45''8851'_2986 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'distrib'691''45''8851'_2986 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_504
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2796
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2722
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
            (coe v2)))
      (coe
         du_'8852''45'distrib'737''45''8851'_2958 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_2988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_2988 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45'distrib'45''8851'_2988 v3 v4 v5
du_'8852''45'distrib'45''8851'_2988 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''45'distrib'45''8851'_2988 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8852''45'distrib'737''45''8851'_2958 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8852''45'distrib'691''45''8851'_2986 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_2990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'absorbs'45''8852'_2990 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'absorbs'45''8852'_2990 v3 v4 v5 v6 v7
du_'8851''45'absorbs'45''8852'_2990 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'absorbs'45''8852'_2990 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v3 v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v3 v4))
                   (coe v3)
                   (let v8
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v8))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v4))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3 v4)
                         v3
                         (let v9
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v4)
                               v3 v3
                               (let v10
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v10))
                                     (coe v3)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                  v1 v3 v4 v6)))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe v0) (coe v1) (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v4)
                            (coe v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                               v2 v3 v4 v6)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v3 v4))
                   (coe v3)
                   (let v8
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v8))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v4))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3 v3)
                         v3
                         (let v9
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v3)
                               v3 v3
                               (let v10
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v10))
                                     (coe v3)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
                                  (coe v0) (coe v1) (coe v3))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe v0) (coe v1) (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v3 v4)
                            (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                               v2 v3 v4 v6)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_3012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'absorbs'45''8851'_3012 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8852''45'absorbs'45''8851'_3012 v3 v4 v5 v6 v7
du_'8852''45'absorbs'45''8851'_3012 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'absorbs'45''8851'_3012 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v3 v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v4))
                   (coe v3)
                   (let v8
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v8))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3 v3)
                         v3
                         (let v9
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 v3 v3)
                               v3 v3
                               (let v10
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v10))
                                     (coe v3)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_2850
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                                     (coe v0))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                                     (coe v2))
                                  (coe v3))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                               (coe v0))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                               (coe v2))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4)
                            (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                               v1 v3 v4 v6)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v4))
                   (coe v3)
                   (let v8
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v8))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            v3 v4)
                         v3
                         (let v9
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 v3 v4)
                               v3 v3
                               (let v10
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v10))
                                     (coe v3)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                                  v2 v3 v4 v6)))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_2748
                            (coe
                               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                               (coe v0))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                               (coe v2))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4)
                            (coe v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                               v1 v3 v4 v6)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_3034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_3034 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'absorptive_3034 v3 v4 v5
du_'8852''45''8851''45'absorptive_3034 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''45''8851''45'absorptive_3034 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8852''45'absorbs'45''8851'_3012 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8851''45'absorbs'45''8852'_2990 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_3036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_3036 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'absorptive_3036 v3 v4 v5
du_'8851''45''8852''45'absorptive_3036 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45''8852''45'absorptive_3036 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8851''45'absorbs'45''8852'_2990 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8852''45'absorbs'45''8851'_3012 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp._≥_
d__'8805'__3038 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805'__3038 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_3046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_antimono'45''8804''45'distrib'45''8851'_3046 ~v0 ~v1 ~v2 v3 v4 v5
                                               v6 v7 v8 v9 v10
  = du_antimono'45''8804''45'distrib'45''8851'_3046
      v3 v4 v5 v6 v7 v8 v9 v10
du_antimono'45''8804''45'distrib'45''8851'_3046 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_antimono'45''8804''45'distrib'45''8851'_3046 v0 v1 v2 v3 v4 v5
                                                v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v6 v7 in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v10)
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v6 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      (coe v3 v6) (coe v3 v7))
                   (let v11
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v11))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v6 v7))
                         (coe v3 v6)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            (coe v3 v6) (coe v3 v7))
                         (let v12
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v12))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v12)))
                               (coe v3 v6)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 (coe v3 v6) (coe v3 v7))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 (coe v3 v6) (coe v3 v7))
                               (let v13
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v13))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2 (coe v3 v6) (coe v3 v7))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                                  v2 (coe v3 v6) (coe v3 v7) (coe v5 v6 v7 v9))))
                         (coe
                            v4
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v6 v7)
                            v6
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                               v1 v6 v7 v9)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v10)
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v6 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                      (coe v3 v6) (coe v3 v7))
                   (let v11
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v11))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v6 v7))
                         (coe v3 v7)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                            (coe v3 v6) (coe v3 v7))
                         (let v12
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v12))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v12)))
                               (coe v3 v7)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 (coe v3 v6) (coe v3 v7))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                  v2 (coe v3 v6) (coe v3 v7))
                               (let v13
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v13))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144
                                        v2 (coe v3 v6) (coe v3 v7))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                                  v2 (coe v3 v6) (coe v3 v7) (coe v5 v7 v6 v9))))
                         (coe
                            v4
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v6 v7)
                            v7
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                               v1 v6 v7 v9)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_3092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_antimono'45''8804''45'distrib'45''8852'_3092 ~v0 ~v1 ~v2 v3 v4 v5
                                               v6 v7 v8 v9 v10
  = du_antimono'45''8804''45'distrib'45''8852'_3092
      v3 v4 v5 v6 v7 v8 v9 v10
du_antimono'45''8804''45'distrib'45''8852'_3092 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_antimono'45''8804''45'distrib'45''8852'_3092 v0 v1 v2 v3 v4 v5
                                                v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v6 v7 in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v10)
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v6 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      (coe v3 v6) (coe v3 v7))
                   (let v11
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v11))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v6 v7))
                         (coe v3 v7)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            (coe v3 v6) (coe v3 v7))
                         (let v12
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v12))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v12)))
                               (coe v3 v7)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v3 v6) (coe v3 v7))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v3 v6) (coe v3 v7))
                               (let v13
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v13))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 (coe v3 v6) (coe v3 v7))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                  v1 (coe v3 v6) (coe v3 v7) (coe v5 v6 v7 v9))))
                         (coe
                            v4
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v6 v7)
                            v7
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                               v2 v6 v7 v9)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v10)
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                         v6 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      (coe v3 v6) (coe v3 v7))
                   (let v11
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v11))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v6 v7))
                         (coe v3 v6)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            (coe v3 v6) (coe v3 v7))
                         (let v12
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v12))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v12)))
                               (coe v3 v6)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v3 v6) (coe v3 v7))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v3 v6) (coe v3 v7))
                               (let v13
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v13))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 (coe v3 v6) (coe v3 v7))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                  v1 (coe v3 v6) (coe v3 v7) (coe v5 v7 v6 v9))))
                         (coe
                            v4
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                               v6 v7)
                            v6
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                               v2 v6 v7 v9)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinMaxOp.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_3136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x'8852'y_3136 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8804'x'8852'y_3136 v3 v4 v5 v6 v7
du_x'8851'y'8804'x'8852'y_3136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x'8852'y_3136 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
            (coe v5))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            v3 v4)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
            v3 v4)
         (let v6
                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                  (coe v6))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  v3 v4)
               v3
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                  v3 v4)
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                        (coe v7))
                     v3
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                        v3 v4)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                        v3 v4)
                     (let v8
                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                              (coe v8))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__144 v2
                              v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
                        (coe
                           MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                           (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                           (coe v2))
                        (coe v3) (coe v4))))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
                  (coe v0) (coe v1) (coe v3) (coe v4)))))
