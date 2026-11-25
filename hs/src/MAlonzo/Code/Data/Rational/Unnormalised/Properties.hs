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

module MAlonzo.Code.Data.Rational.Unnormalised.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Apartness.Bundles
import qualified MAlonzo.Code.Algebra.Apartness.Structures
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Properties.CommutativeSemigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Base
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Rational.Unnormalised.Properties._.[uv∙w]x≈u[vw∙x]
d_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_10 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_10 = erased
-- Data.Rational.Unnormalised.Properties._.[uv∙w]x≈u[v∙wx]
d_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_12 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_12 = erased
-- Data.Rational.Unnormalised.Properties._.[u∙vw]x≈u[v∙wx]
d_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_14 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_14 = erased
-- Data.Rational.Unnormalised.Properties._.[u∙vw]x≈uv∙wx
d_'91'u'8729'vw'93'x'8776'uv'8729'wx_16 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'u'8729'vw'93'x'8776'uv'8729'wx_16 = erased
-- Data.Rational.Unnormalised.Properties._.alternative
d_alternative_18 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alternative_18
  = let v0
          = MAlonzo.Code.Data.Integer.Properties.d_'42''45'commutativeSemigroup_5950 in
    coe
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Structures.d_assoc_500
                 (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                       (coe v0)))
                 v1 v1 v2))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_498
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                             (coe v0)))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v2))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_assoc_500
                    (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                          (coe v0)))
                    v1 v2 v2))))
-- Data.Rational.Unnormalised.Properties._.alternativeʳ
d_alternative'691'_20 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_20 = erased
-- Data.Rational.Unnormalised.Properties._.alternativeˡ
d_alternative'737'_22 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_22 = erased
-- Data.Rational.Unnormalised.Properties._.flexible
d_flexible_24 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flexible_24 = erased
-- Data.Rational.Unnormalised.Properties._.interchange
d_interchange_26 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_interchange_26 = erased
-- Data.Rational.Unnormalised.Properties._.medial
d_medial_28 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_28 = erased
-- Data.Rational.Unnormalised.Properties._.middleSemimedial
d_middleSemimedial_30 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleSemimedial_30 = erased
-- Data.Rational.Unnormalised.Properties._.semimedial
d_semimedial_32 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semimedial_32
  = coe
      MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_semimedial_610
      (coe
         MAlonzo.Code.Data.Integer.Properties.d_'42''45'commutativeSemigroup_5950)
-- Data.Rational.Unnormalised.Properties._.semimedialʳ
d_semimedial'691'_34 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_34 = erased
-- Data.Rational.Unnormalised.Properties._.semimedialˡ
d_semimedial'737'_36 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_36 = erased
-- Data.Rational.Unnormalised.Properties._.uv∙wx≈u[vw∙x]
d_uv'8729'wx'8776'u'91'vw'8729'x'93'_38 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8729'wx'8776'u'91'vw'8729'x'93'_38 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈wx⇒u∙vy≈w∙xy
d_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_40 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_40 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈wx⇒yu∙vz≈yw∙xz
d_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_42 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_42 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈wx⇒yu∙v≈yw∙x
d_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_44 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_44 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒[xu∙v]y≈x∙wy
d_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_46 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_46 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒[xy∙u]v≈x∙yw
d_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_48 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_48 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒[x∙yu]v≈x∙yw
d_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_50 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_50 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒u[vx∙y]≈w∙xy
d_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_52 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_52 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒u∙vx≈wx
d_uv'8776'w'8658'u'8729'vx'8776'wx_54 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'u'8729'vx'8776'wx_54 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒x[uv∙y]≈x∙wy
d_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_56 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_56 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒xu∙vy≈x∙wy
d_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_58 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_58 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒xu∙v≈xw
d_uv'8776'w'8658'xu'8729'v'8776'xw_60 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'xu'8729'v'8776'xw_60 = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒xy≈z⇒u[vx∙y]≈wz
d_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_62 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_62
  = erased
-- Data.Rational.Unnormalised.Properties._.uv≈w⇒x∙wy≈x∙[u∙vy]
d_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_64 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_64
  = erased
-- Data.Rational.Unnormalised.Properties._.xy∙xx≈x∙yxx
d_xy'8729'xx'8776'x'8729'yxx_66 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'xx'8776'x'8729'yxx_66 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈xz∙y
d_xy'8729'z'8776'xz'8729'y_68 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'xz'8729'y_68 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈x∙zy
d_xy'8729'z'8776'x'8729'zy_70 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'x'8729'zy_70 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈yx∙z
d_xy'8729'z'8776'yx'8729'z_72 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'yx'8729'z_72 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈yz∙x
d_xy'8729'z'8776'yz'8729'x_74 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'yz'8729'x_74 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈y∙xz
d_xy'8729'z'8776'y'8729'xz_76 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'y'8729'xz_76 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈y∙zx
d_xy'8729'z'8776'y'8729'zx_78 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'y'8729'zx_78 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈zx∙y
d_xy'8729'z'8776'zx'8729'y_80 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'zx'8729'y_80 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈zy∙x
d_xy'8729'z'8776'zy'8729'x_82 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'zy'8729'x_82 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈z∙xy
d_xy'8729'z'8776'z'8729'xy_84 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'z'8729'xy_84 = erased
-- Data.Rational.Unnormalised.Properties._.xy∙z≈z∙yx
d_xy'8729'z'8776'z'8729'yx_86 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'z'8729'yx_86 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈xy∙z
d_x'8729'yz'8776'xy'8729'z_88 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'xy'8729'z_88 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈xz∙y
d_x'8729'yz'8776'xz'8729'y_90 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'xz'8729'y_90 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈x∙zy
d_x'8729'yz'8776'x'8729'zy_92 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'x'8729'zy_92 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈yx∙z
d_x'8729'yz'8776'yx'8729'z_94 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'yx'8729'z_94 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈yz∙x
d_x'8729'yz'8776'yz'8729'x_96 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'yz'8729'x_96 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈y∙xz
d_x'8729'yz'8776'y'8729'xz_98 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'y'8729'xz_98 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈y∙zx
d_x'8729'yz'8776'y'8729'zx_100 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'y'8729'zx_100 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈zx∙y
d_x'8729'yz'8776'zx'8729'y_102 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'zx'8729'y_102 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈zy∙x
d_x'8729'yz'8776'zy'8729'x_104 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'zy'8729'x_104 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈z∙xy
d_x'8729'yz'8776'z'8729'xy_106 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'z'8729'xy_106 = erased
-- Data.Rational.Unnormalised.Properties._.x∙yz≈z∙yx
d_x'8729'yz'8776'z'8729'yx_108 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'z'8729'yx_108 = erased
-- Data.Rational.Unnormalised.Properties.↥↧≡⇒≡
d_'8613''8615''8801''8658''8801'_120 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''8615''8801''8658''8801'_120 = erased
-- Data.Rational.Unnormalised.Properties./-cong
d_'47''45'cong_134 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong_134 = erased
-- Data.Rational.Unnormalised.Properties.↥[n/d]≡n
d_'8613''91'n'47'd'93''8801'n_142 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''91'n'47'd'93''8801'n_142 = erased
-- Data.Rational.Unnormalised.Properties.↧[n/d]≡d
d_'8615''91'n'47'd'93''8801'd_154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''91'n'47'd'93''8801'd_154 = erased
-- Data.Rational.Unnormalised.Properties.drop-*≡*
d_drop'45''42''8801''42'_164 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''42''8801''42'_164 = erased
-- Data.Rational.Unnormalised.Properties.≃-refl
d_'8771''45'refl_168 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'refl_168 ~v0 = du_'8771''45'refl_168
du_'8771''45'refl_168 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'refl_168
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.≃-reflexive
d_'8771''45'reflexive_170 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'reflexive_170 ~v0 ~v1 ~v2 = du_'8771''45'reflexive_170
du_'8771''45'reflexive_170 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'reflexive_170
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.≃-sym
d_'8771''45'sym_172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'sym_172 ~v0 ~v1 v2 = du_'8771''45'sym_172 v2
du_'8771''45'sym_172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'sym_172 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.≃-trans
d_'8771''45'trans_176 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8771''45'trans_176 ~v0 ~v1 ~v2 v3 v4
  = du_'8771''45'trans_176 v3 v4
du_'8771''45'trans_176 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8771''45'trans_176 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties._≃?_
d__'8771''63'__196 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8771''63'__196 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      erased
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8799'__3036
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.0≄1
d_0'8772'1_202 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_0'8772'1_202 = erased
-- Data.Rational.Unnormalised.Properties.≃-≄-irreflexive
d_'8771''45''8772''45'irreflexive_204 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8771''45''8772''45'irreflexive_204 = erased
-- Data.Rational.Unnormalised.Properties.≄-symmetric
d_'8772''45'symmetric_210 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8772''45'symmetric_210 = erased
-- Data.Rational.Unnormalised.Properties.≄-cotransitive
d_'8772''45'cotransitive_216 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8772''45'cotransitive_216 v0 v1 ~v2 v3
  = du_'8772''45'cotransitive_216 v0 v1 v3
du_'8772''45'cotransitive_216 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8772''45'cotransitive_216 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (\ v3 ->
                 coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
              erased
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'8799'__3036
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                       (coe v0))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                       (coe v2)))
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                       (coe v2))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                       (coe v0)))) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
                 erased
                 (coe
                    MAlonzo.Code.Data.Integer.Properties.d__'8799'__3036
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                          (coe v2))
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                          (coe v1)))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                          (coe v1))
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                          (coe v2)))) in
       coe
         (case coe v3 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
              -> if coe v5
                   then coe
                          seq (coe v6)
                          (case coe v4 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                               -> if coe v7
                                    then coe
                                           seq (coe v8)
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
                                    else coe
                                           seq (coe v8)
                                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   else coe
                          seq (coe v6) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Unnormalised.Properties.≃-isEquivalence
d_'8771''45'isEquivalence_262 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8771''45'isEquivalence_262
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_46
      (\ v0 -> coe du_'8771''45'refl_168)
      (\ v0 v1 v2 -> coe du_'8771''45'sym_172 v2)
      (\ v0 v1 v2 v3 v4 -> coe du_'8771''45'trans_176 v3 v4)
-- Data.Rational.Unnormalised.Properties.≃-isDecEquivalence
d_'8771''45'isDecEquivalence_264 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
d_'8771''45'isDecEquivalence_264
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_70
      (coe d_'8771''45'isEquivalence_262) (coe d__'8771''63'__196)
-- Data.Rational.Unnormalised.Properties.≄-isApartnessRelation
d_'8772''45'isApartnessRelation_266 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750
d_'8772''45'isApartnessRelation_266
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_772 erased
      (\ v0 v1 v2 v3 -> coe du_'8772''45'cotransitive_216 v0 v1 v3)
-- Data.Rational.Unnormalised.Properties.≄-tight
d_'8772''45'tight_268 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8772''45'tight_268 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_decidable'45'stable_198
              (coe d__'8771''63'__196 (coe v0) (coe v1))))
      (coe (\ v2 v3 -> coe v3 v2))
-- Data.Rational.Unnormalised.Properties.≃-setoid
d_'8771''45'setoid_284 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8771''45'setoid_284
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      d_'8771''45'isEquivalence_262
-- Data.Rational.Unnormalised.Properties.≃-decSetoid
d_'8771''45'decSetoid_286 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_'8771''45'decSetoid_286
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_134
      d_'8771''45'isDecEquivalence_264
-- Data.Rational.Unnormalised.Properties.≃-Reasoning._IsRelatedTo_
d__IsRelatedTo__290 a0 a1 = ()
-- Data.Rational.Unnormalised.Properties.≃-Reasoning._∎
d__'8718'_292 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_292
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                    (coe v0)) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.begin_
d_begin__294 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_begin__294
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.start
d_start_298 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_start_298 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈
d_step'45''8776'_300 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_300
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈-⟨
d_step'45''8776''45''10216'_302 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_302
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈-⟩
d_step'45''8776''45''10217'_304 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_304
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≈˘
d_step'45''8776''728'_306 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_306
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡
d_step'45''8801'_308 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_308
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_310 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_310 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_310 v2
du_step'45''8801''45''8739'_310 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_310 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_312 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_312
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_314 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_314
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.step-≡˘
d_step'45''8801''728'_316 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_316
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.stop
d_stop_318 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_318
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.∼-go
d_'8764''45'go_320 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_320
  = let v0 = d_'8771''45'setoid_284 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
-- Data.Rational.Unnormalised.Properties.≃-Reasoning.≡-go
d_'8801''45'go_322 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_322 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_322 v4
du_'8801''45'go_322 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_322 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.↥p≡0⇒p≃0
d_'8613'p'8801'0'8658'p'8771'0_330 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8613'p'8801'0'8658'p'8771'0_330 ~v0 ~v1
  = du_'8613'p'8801'0'8658'p'8771'0_330
du_'8613'p'8801'0'8658'p'8771'0_330 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8613'p'8801'0'8658'p'8771'0_330
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.p≃0⇒↥p≡0
d_p'8771'0'8658''8613'p'8801'0_340 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8771'0'8658''8613'p'8801'0_340 = erased
-- Data.Rational.Unnormalised.Properties.↥p≡↥q≡0⇒p≃q
d_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_354 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_354 ~v0 ~v1 ~v2 ~v3
  = du_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_354
du_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_354 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8613'p'8801''8613'q'8801'0'8658'p'8771'q_354
  = coe
      du_'8771''45'trans_176 (coe du_'8613'p'8801'0'8658'p'8771'0_330)
      (coe
         du_'8771''45'sym_172 (coe du_'8613'p'8801'0'8658'p'8771'0_330))
-- Data.Rational.Unnormalised.Properties.0≃?-weak
d_0'8771''63''45'weak_366 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  Maybe MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_0'8771''63''45'weak_366 v0
  = let v1
          = MAlonzo.Code.Data.Integer.Properties.d__'8799'__3036
              (coe
                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                 (coe v0))
              (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                          (coe
                             du_'8771''45'sym_172 (coe du_'8613'p'8801'0'8658'p'8771'0_330)))
                else coe
                       seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.neg-involutive-≡
d_neg'45'involutive'45''8801'_380 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'involutive'45''8801'_380 = erased
-- Data.Rational.Unnormalised.Properties.neg-involutive
d_neg'45'involutive_388 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'involutive_388 ~v0 = du_neg'45'involutive_388
du_neg'45'involutive_388 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_neg'45'involutive_388 = coe du_'8771''45'refl_168
-- Data.Rational.Unnormalised.Properties.-‿cong
d_'45''8255'cong_396 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'45''8255'cong_396 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)))
-- Data.Rational.Unnormalised.Properties.neg-mono-<
d_neg'45'mono'45''60'_418 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'45'mono'45''60'_418 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                 (\ v10 v11 v12 v13 v14 -> v14)
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v0))))
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                       (\ v10 v11 v12 v13 v14 ->
                                          coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                            v13 v14)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                       (\ v10 v11 v12 v13 v14 ->
                                          coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                            v13 v14))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                (coe v1))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                             (coe
                                                MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v1)))))
                                       erased)
                                    (MAlonzo.Code.Data.Integer.Properties.d_neg'45'mono'45''60'_3660
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0)))
                                       (coe v9)))
                                 erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg-cancel-<
d_neg'45'cancel'45''60'_434 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'45'cancel'45''60'_434 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v3)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                 (\ v10 v11 v12 v13 v14 -> v14)
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0)))))
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe v3)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                    (\ v10 v11 v12 v13 v14 -> v14)
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0)))))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                       (coe v3)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                          (\ v10 v11 v12 v13 v14 ->
                                             coe
                                               MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                               v13 v14)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                          (\ v10 v11 v12 v13 v14 ->
                                             coe
                                               MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                               v13 v14))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0))))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v3))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                          (\ v10 v11 v12 v13 v14 -> v14)
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1))))
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1)))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                         (coe v1)))))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1))))
                                             erased)
                                          erased)
                                       (MAlonzo.Code.Data.Integer.Properties.d_neg'45'mono'45''60'_3660
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v1))))
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v0))))
                                          (coe v9)))
                                    erased)
                                 erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.drop-*≤*
d_drop'45''42''8804''42'_446 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_drop'45''42''8804''42'_446 ~v0 ~v1 v2
  = du_drop'45''42''8804''42'_446 v2
du_drop'45''42''8804''42'_446 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_drop'45''42''8804''42'_446 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.≤-reflexive
d_'8804''45'reflexive_450 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'reflexive_450 v0 v1 v2
  = coe
      seq (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
         (coe
            MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_3066
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe v1)))))
-- Data.Rational.Unnormalised.Properties.≤-refl
d_'8804''45'refl_454 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'refl_454 v0
  = coe
      d_'8804''45'reflexive_450 (coe v0) (coe v0)
      (coe du_'8771''45'refl_168)
-- Data.Rational.Unnormalised.Properties.≤-reflexive-≡
d_'8804''45'reflexive'45''8801'_456 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'reflexive'45''8801'_456 v0 ~v1 ~v2
  = du_'8804''45'reflexive'45''8801'_456 v0
du_'8804''45'reflexive'45''8801'_456 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8804''45'reflexive'45''8801'_456 v0
  = coe d_'8804''45'refl_454 (coe v0)
-- Data.Rational.Unnormalised.Properties.≤-trans
d_'8804''45'trans_458 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'trans_458 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''8804''45'pos_6314
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v2)))
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v2))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                             (coe
                                MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                             (\ v11 v12 v13 ->
                                coe
                                  MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                                  v13))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v2)))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v1)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe v2))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v0)))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v1)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                             (\ v11 v12 v13 v14 v15 -> v15)
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v2)))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v1)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v1))))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v0)))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                (\ v11 v12 v13 v14 v15 -> v15)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v1))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v2))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                   (\ v11 v12 v13 v14 v15 -> v15)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v2)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                         (\ v11 v12 v13 v14 v15 ->
                                            coe
                                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                              v14 v15))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                         (\ v11 v12 v13 v14 v15 -> v15)
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                            (\ v11 v12 v13 v14 v15 -> v15)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v2))))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                                  (\ v11 v12 v13 v14 v15 ->
                                                     coe
                                                       MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                                       v14 v15))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                                  (\ v11 v12 v13 v14 v15 -> v15)
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2)))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                     (\ v11 v12 v13 v14 v15 -> v15)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                              (coe v2)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                           (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                              (coe v1))))
                                                     erased)
                                                  erased)
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_6412
                                                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v2)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  v10))
                                            erased)
                                         erased)
                                      (coe
                                         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_6370
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe v7)))
                                   erased)
                                erased)
                             erased)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.≤-antisym
d_'8804''45'antisym_492 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8804''45'antisym_492 ~v0 ~v1 v2 v3
  = du_'8804''45'antisym_492 v2 v3
du_'8804''45'antisym_492 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8804''45'antisym_492 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.≤-total
d_'8804''45'total_498 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_498 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
           (coe
              MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
              v2))
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
           (coe
              MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
              v2))
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_3098
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.≤-respˡ-≃
d_'8804''45'resp'737''45''8771'_504 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'resp'737''45''8771'_504 v0 v1 v2 v3
  = coe
      d_'8804''45'trans_458 (coe v2) (coe v1) (coe v0)
      (coe
         d_'8804''45'reflexive_450 (coe v2) (coe v1)
         (coe du_'8771''45'sym_172 (coe v3)))
-- Data.Rational.Unnormalised.Properties.≤-respʳ-≃
d_'8804''45'resp'691''45''8771'_508 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'resp'691''45''8771'_508 v0 v1 v2 v3 v4
  = coe
      d_'8804''45'trans_458 (coe v0) (coe v1) (coe v2) (coe v4)
      (coe d_'8804''45'reflexive_450 (coe v1) (coe v2) (coe v3))
-- Data.Rational.Unnormalised.Properties.≤-resp₂-≃
d_'8804''45'resp'8322''45''8771'_514 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''45'resp'8322''45''8771'_514
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'8804''45'resp'691''45''8771'_508)
      (coe d_'8804''45'resp'737''45''8771'_504)
-- Data.Rational.Unnormalised.Properties._≤?_
d__'8804''63'__516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__516 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44)
      (coe du_drop'45''42''8804''42'_446)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__3116
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties._≥?_
d__'8805''63'__522 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__522 v0 v1 = coe d__'8804''63'__516 (coe v1) (coe v0)
-- Data.Rational.Unnormalised.Properties.≤-irrelevant
d_'8804''45'irrelevant_524 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_524 = erased
-- Data.Rational.Unnormalised.Properties.≤-isPreorder
d_'8804''45'isPreorder_530 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_530
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe d_'8771''45'isEquivalence_262) (coe d_'8804''45'reflexive_450)
      (coe d_'8804''45'trans_458)
-- Data.Rational.Unnormalised.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_532 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_132
d_'8804''45'isTotalPreorder_532
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_178
      (coe d_'8804''45'isPreorder_530) (coe d_'8804''45'total_498)
-- Data.Rational.Unnormalised.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_534 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_534
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe d_'8804''45'isPreorder_530)
      (\ v0 v1 v2 v3 -> coe du_'8804''45'antisym_492 v2 v3)
-- Data.Rational.Unnormalised.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_536 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_536
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe d_'8804''45'isPartialOrder_534) (coe d_'8804''45'total_498)
-- Data.Rational.Unnormalised.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_538 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'8804''45'isDecTotalOrder_538
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe d_'8804''45'isTotalOrder_536) (coe d__'8771''63'__196)
      (coe d__'8804''63'__516)
-- Data.Rational.Unnormalised.Properties.≤-preorder
d_'8804''45'preorder_540 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8804''45'preorder_540
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      d_'8804''45'isPreorder_530
-- Data.Rational.Unnormalised.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_542 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240
d_'8804''45'totalPreorder_542
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_334
      d_'8804''45'isTotalPreorder_532
-- Data.Rational.Unnormalised.Properties.≤-poset
d_'8804''45'poset_544 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8804''45'poset_544
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      d_'8804''45'isPartialOrder_534
-- Data.Rational.Unnormalised.Properties.≤-totalOrder
d_'8804''45'totalOrder_546 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'8804''45'totalOrder_546
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      d_'8804''45'isTotalOrder_536
-- Data.Rational.Unnormalised.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_548 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'8804''45'decTotalOrder_548
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      d_'8804''45'isDecTotalOrder_538
-- Data.Rational.Unnormalised.Properties.≤-isPreorder-≡
d_'8804''45'isPreorder'45''8801'_550 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder'45''8801'_550
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive'45''8801'_456 v0)
      (coe d_'8804''45'trans_458)
-- Data.Rational.Unnormalised.Properties.≤-isTotalPreorder-≡
d_'8804''45'isTotalPreorder'45''8801'_552 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_132
d_'8804''45'isTotalPreorder'45''8801'_552
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_178
      (coe d_'8804''45'isPreorder'45''8801'_550)
      (coe d_'8804''45'total_498)
-- Data.Rational.Unnormalised.Properties.≤-preorder-≡
d_'8804''45'preorder'45''8801'_554 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8804''45'preorder'45''8801'_554
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      d_'8804''45'isPreorder'45''8801'_550
-- Data.Rational.Unnormalised.Properties.≤-totalPreorder-≡
d_'8804''45'totalPreorder'45''8801'_556 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240
d_'8804''45'totalPreorder'45''8801'_556
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_334
      d_'8804''45'isTotalPreorder'45''8801'_552
-- Data.Rational.Unnormalised.Properties.mono⇒cong
d_mono'8658'cong_560 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'8658'cong_560 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'8658'cong_278
      (\ v1 v2 v3 -> coe du_'8771''45'sym_172 v3)
      (coe d_'8804''45'reflexive_450)
      (\ v1 v2 v3 v4 -> coe du_'8804''45'antisym_492 v3 v4) (coe v0)
-- Data.Rational.Unnormalised.Properties.antimono⇒cong
d_antimono'8658'cong_564 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'8658'cong_564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_antimono'8658'cong_292
      (\ v1 v2 v3 -> coe du_'8771''45'sym_172 v3)
      (coe d_'8804''45'reflexive_450)
      (\ v1 v2 v3 v4 -> coe du_'8804''45'antisym_492 v3 v4) (coe v0)
-- Data.Rational.Unnormalised.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_566 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  AgdaAny ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''7495''8658''8804'_566 v0 v1 ~v2
  = du_'8804''7495''8658''8804'_566 v0 v1
du_'8804''7495''8658''8804'_566 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8804''7495''8658''8804'_566 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''7495''8658''8804'_3164
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'9667'__26
            (coe
               MAlonzo.Code.Data.Sign.Base.d__'42'__14
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1))))
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1)))))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'9667'__26
            (coe
               MAlonzo.Code.Data.Sign.Base.d__'42'__14
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))))
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))))))
-- Data.Rational.Unnormalised.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_568 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  AgdaAny
d_'8804''8658''8804''7495'_568 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_568 v2
du_'8804''8658''8804''7495'_568 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  AgdaAny
du_'8804''8658''8804''7495'_568 v0
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'8804''8658''8804''7495'_3172
      (coe du_drop'45''42''8804''42'_446 (coe v0))
-- Data.Rational.Unnormalised.Properties.drop-*<*
d_drop'45''42''60''42'_570 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_drop'45''42''60''42'_570 ~v0 ~v1 v2
  = du_drop'45''42''60''42'_570 v2
du_drop'45''42''60''42'_570 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_drop'45''42''60''42'_570 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.<ᵇ⇒<
d_'60''7495''8658''60'_574 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''7495''8658''60'_574 v0 v1 ~v2
  = du_'60''7495''8658''60'_574 v0 v1
du_'60''7495''8658''60'_574 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'60''7495''8658''60'_574 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'60''7495''8658''60'_3178
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'9667'__26
            (coe
               MAlonzo.Code.Data.Sign.Base.d__'42'__14
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1))))
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1)))))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'9667'__26
            (coe
               MAlonzo.Code.Data.Sign.Base.d__'42'__14
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_sign_24
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))))
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))))))
-- Data.Rational.Unnormalised.Properties.<⇒<ᵇ
d_'60''8658''60''7495'_576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 -> AgdaAny
d_'60''8658''60''7495'_576 ~v0 ~v1 v2
  = du_'60''8658''60''7495'_576 v2
du_'60''8658''60''7495'_576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 -> AgdaAny
du_'60''8658''60''7495'_576 v0
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'60''8658''60''7495'_3186
      (coe du_drop'45''42''60''42'_570 (coe v0))
-- Data.Rational.Unnormalised.Properties.<⇒≤
d_'60''8658''8804'_578 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'60''8658''8804'_578 ~v0 ~v1 v2 = du_'60''8658''8804'_578 v2
du_'60''8658''8804'_578 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'60''8658''8804'_578 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v3
        -> coe
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
             (coe
                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.<⇒≢
d_'60''8658''8802'_582 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_582 = erased
-- Data.Rational.Unnormalised.Properties.<⇒≱
d_'60''8658''8817'_586 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_586 = erased
-- Data.Rational.Unnormalised.Properties.≰⇒>
d_'8816''8658''62'_590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8816''8658''62'_590 v0 v1 ~v2 = du_'8816''8658''62'_590 v0 v1
du_'8816''8658''62'_590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'8816''8658''62'_590 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8816''8658''62'_3232
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.≮⇒≥
d_'8814''8658''8805'_594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8814''8658''8805'_594 v0 v1 ~v2
  = du_'8814''8658''8805'_594 v0 v1
du_'8814''8658''8805'_594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8814''8658''8805'_594 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8814''8658''8805'_3258
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties.≰⇒≥
d_'8816''8658''8805'_598 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8816''8658''8805'_598 v0 v1 ~v2
  = du_'8816''8658''8805'_598 v0 v1
du_'8816''8658''8805'_598 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8816''8658''8805'_598 v0 v1
  = coe
      du_'60''8658''8804'_578
      (coe du_'8816''8658''62'_590 (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties.<-irrefl-≡
d_'60''45'irrefl'45''8801'_600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl'45''8801'_600 = erased
-- Data.Rational.Unnormalised.Properties.<-irrefl
d_'60''45'irrefl_604 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_604 = erased
-- Data.Rational.Unnormalised.Properties.<-asym
d_'60''45'asym_610 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_610 = erased
-- Data.Rational.Unnormalised.Properties.<-dense
d_'60''45'dense_614 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'dense_614 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe du_m_626 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe d_p'60'm_628 (coe v0) (coe v1) (coe v5))
                (coe d_m'60'q_630 (coe v0) (coe v1) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.m
d_m_626 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_m_626 v0 v1 ~v2 = du_m_626 v0 v1
du_m_626 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
du_m_626 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'43'__302
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
            (coe v0))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Nat.Base.d_pred_196
         (coe
            addInt
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
               (coe v1))))
-- Data.Rational.Unnormalised.Properties._.p<m
d_p'60'm_628 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_p'60'm_628 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe du_m_626 (coe v0) (coe v1))))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe du_m_626 (coe v0) (coe v1)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1))))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1))))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe du_m_626 (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (\ v3 v4 v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344 v6 v7)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                  (\ v3 v4 v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                       v6 v7))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1))))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0))))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe du_m_626 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0))))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__302
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe du_m_626 (coe v0) (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe du_m_626 (coe v0) (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0))))
                  erased)
               (MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'691''45''60'_4940
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe v2)))
            erased))
-- Data.Rational.Unnormalised.Properties._.m<q
d_m'60'q_630 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_m'60'q_630 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe du_m_626 (coe v0) (coe v1)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe du_m_626 (coe v0) (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe du_m_626 (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe v1)))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__302
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe v1))))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                  (coe v1))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe du_m_626 (coe v0) (coe v1))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (\ v3 v4 v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344 v6 v7)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                  (\ v3 v4 v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                       v6 v7))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1))))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1))))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                     (coe v1))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                     (coe du_m_626 (coe v0) (coe v1))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1))))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__302
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe v1))))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe du_m_626 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                           (coe du_m_626 (coe v0) (coe v1)))))
                  erased)
               (coe
                  MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'737''45''60'_4964
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                        (coe v0)))
                  v2))
            erased))
-- Data.Rational.Unnormalised.Properties.≤-<-trans
d_'8804''45''60''45'trans_632 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8804''45''60''45'trans_632 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6620
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v2)))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v2))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v0)))
                       (addInt
                          (coe (1 :: Integer))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator'45'1_16
                             (coe v1)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe du_n'8321'_648 (coe v0)) (coe du_d'8323'_658 (coe v2)))
                             (coe du_d'8322'_656 (coe v1)))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe du_n'8323'_652 (coe v2)) (coe du_d'8321'_654 (coe v0)))
                             (coe du_d'8322'_656 (coe v1)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                             (\ v11 v12 v13 v14 v15 -> v15)
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8321'_648 (coe v0)) (coe du_d'8323'_658 (coe v2)))
                                (coe du_d'8322'_656 (coe v1)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe du_n'8321'_648 (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_d'8323'_658 (coe v2)) (coe du_d'8322'_656 (coe v1))))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8323'_652 (coe v2)) (coe du_d'8321'_654 (coe v0)))
                                (coe du_d'8322'_656 (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                (\ v11 v12 v13 v14 v15 -> v15)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8321'_648 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_d'8323'_658 (coe v2)) (coe du_d'8322'_656 (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8321'_648 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_d'8322'_656 (coe v1)) (coe du_d'8323'_658 (coe v2))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_n'8323'_652 (coe v2)) (coe du_d'8321'_654 (coe v0)))
                                   (coe du_d'8322'_656 (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                   (\ v11 v12 v13 v14 v15 -> v15)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_n'8321'_648 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe du_d'8322'_656 (coe v1))
                                         (coe du_d'8323'_658 (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe du_n'8321'_648 (coe v0))
                                         (coe du_d'8322'_656 (coe v1)))
                                      (coe du_d'8323'_658 (coe v2)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe du_n'8323'_652 (coe v2))
                                         (coe du_d'8321'_654 (coe v0)))
                                      (coe du_d'8322'_656 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                         (\ v11 v12 v13 v14 v15 ->
                                            coe
                                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                              v14 v15))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe du_n'8321'_648 (coe v0))
                                            (coe du_d'8322'_656 (coe v1)))
                                         (coe du_d'8323'_658 (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe du_n'8322'_650 (coe v1))
                                            (coe du_d'8321'_654 (coe v0)))
                                         (coe du_d'8323'_658 (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe du_n'8323'_652 (coe v2))
                                            (coe du_d'8321'_654 (coe v0)))
                                         (coe du_d'8322'_656 (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                         (\ v11 v12 v13 v14 v15 -> v15)
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_n'8322'_650 (coe v1))
                                               (coe du_d'8321'_654 (coe v0)))
                                            (coe du_d'8323'_658 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_d'8321'_654 (coe v0))
                                               (coe du_n'8322'_650 (coe v1)))
                                            (coe du_d'8323'_658 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_n'8323'_652 (coe v2))
                                               (coe du_d'8321'_654 (coe v0)))
                                            (coe du_d'8322'_656 (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                            (\ v11 v12 v13 v14 v15 -> v15)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_d'8321'_654 (coe v0))
                                                  (coe du_n'8322'_650 (coe v1)))
                                               (coe du_d'8323'_658 (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_d'8321'_654 (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_n'8322'_650 (coe v1))
                                                  (coe du_d'8323'_658 (coe v2))))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_n'8323'_652 (coe v2))
                                                  (coe du_d'8321'_654 (coe v0)))
                                               (coe du_d'8322'_656 (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                  (\ v11 v12 v13 v14 v15 ->
                                                     coe
                                                       MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                                       v14 v15)
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                                  (\ v11 v12 v13 v14 v15 ->
                                                     coe
                                                       MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                                       v14 v15))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_d'8321'_654 (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_n'8322'_650 (coe v1))
                                                     (coe du_d'8323'_658 (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_d'8321'_654 (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_n'8323'_652 (coe v2))
                                                     (coe du_d'8322'_656 (coe v1))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_n'8323'_652 (coe v2))
                                                     (coe du_d'8321'_654 (coe v0)))
                                                  (coe du_d'8322'_656 (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                                  (\ v11 v12 v13 v14 v15 -> v15)
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_d'8321'_654 (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe du_n'8323'_652 (coe v2))
                                                        (coe du_d'8322'_656 (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe du_d'8321'_654 (coe v0))
                                                        (coe du_n'8323'_652 (coe v2)))
                                                     (coe du_d'8322'_656 (coe v1)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe du_n'8323'_652 (coe v2))
                                                        (coe du_d'8321'_654 (coe v0)))
                                                     (coe du_d'8322'_656 (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                     (\ v11 v12 v13 v14 v15 -> v15)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe du_d'8321'_654 (coe v0))
                                                           (coe du_n'8323'_652 (coe v2)))
                                                        (coe du_d'8322'_656 (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe du_n'8323'_652 (coe v2))
                                                           (coe du_d'8321'_654 (coe v0)))
                                                        (coe du_d'8322'_656 (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe du_n'8323'_652 (coe v2))
                                                           (coe du_d'8321'_654 (coe v0)))
                                                        (coe du_d'8322'_656 (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                              (coe du_n'8323'_652 (coe v2))
                                                              (coe du_d'8321'_654 (coe v0)))
                                                           (coe du_d'8322'_656 (coe v1))))
                                                     erased)
                                                  erased)
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6530
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v2)))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  (coe v10)))
                                            erased)
                                         erased)
                                      (coe
                                         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_6370
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         (coe v7)))
                                   erased)
                                erased)
                             erased)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.n₁
d_n'8321'_648 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_n'8321'_648 v0 ~v1 ~v2 ~v3 ~v4 = du_n'8321'_648 v0
du_n'8321'_648 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8321'_648 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₂
d_n'8322'_650 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_n'8322'_650 ~v0 v1 ~v2 ~v3 ~v4 = du_n'8322'_650 v1
du_n'8322'_650 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8322'_650 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₃
d_n'8323'_652 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_n'8323'_652 ~v0 ~v1 v2 ~v3 ~v4 = du_n'8323'_652 v2
du_n'8323'_652 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8323'_652 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₁
d_d'8321'_654 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_d'8321'_654 v0 ~v1 ~v2 ~v3 ~v4 = du_d'8321'_654 v0
du_d'8321'_654 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8321'_654 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₂
d_d'8322'_656 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_d'8322'_656 ~v0 v1 ~v2 ~v3 ~v4 = du_d'8322'_656 v1
du_d'8322'_656 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8322'_656 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₃
d_d'8323'_658 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_d'8323'_658 ~v0 ~v1 v2 ~v3 ~v4 = du_d'8323'_658 v2
du_d'8323'_658 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8323'_658 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties.<-≤-trans
d_'60''45''8804''45'trans_666 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45''8804''45'trans_666 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6620
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v0))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v2)))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe v2))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe v0)))
                       (addInt
                          (coe (1 :: Integer))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator'45'1_16
                             (coe v1)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe du_n'8321'_682 (coe v0)) (coe du_d'8323'_692 (coe v2)))
                             (coe du_d'8322'_690 (coe v1)))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe du_n'8323'_686 (coe v2)) (coe du_d'8321'_688 (coe v0)))
                             (coe du_d'8322'_690 (coe v1)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                             (\ v11 v12 v13 v14 v15 -> v15)
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8321'_682 (coe v0)) (coe du_d'8323'_692 (coe v2)))
                                (coe du_d'8322'_690 (coe v1)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe du_n'8321'_682 (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_d'8323'_692 (coe v2)) (coe du_d'8322'_690 (coe v1))))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8323'_686 (coe v2)) (coe du_d'8321'_688 (coe v0)))
                                (coe du_d'8322'_690 (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                (\ v11 v12 v13 v14 v15 -> v15)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8321'_682 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_d'8323'_692 (coe v2)) (coe du_d'8322'_690 (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe du_n'8321'_682 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_d'8322'_690 (coe v1)) (coe du_d'8323'_692 (coe v2))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_n'8323'_686 (coe v2)) (coe du_d'8321'_688 (coe v0)))
                                   (coe du_d'8322'_690 (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                   (\ v11 v12 v13 v14 v15 -> v15)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe du_n'8321'_682 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe du_d'8322'_690 (coe v1))
                                         (coe du_d'8323'_692 (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe du_n'8321'_682 (coe v0))
                                         (coe du_d'8322'_690 (coe v1)))
                                      (coe du_d'8323'_692 (coe v2)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe du_n'8323'_686 (coe v2))
                                         (coe du_d'8321'_688 (coe v0)))
                                      (coe du_d'8322'_690 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                         (\ v11 v12 v13 v14 v15 ->
                                            coe
                                              MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                              v14 v15)
                                         (coe
                                            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                         (\ v11 v12 v13 v14 v15 ->
                                            coe
                                              MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                              v14 v15))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe du_n'8321'_682 (coe v0))
                                            (coe du_d'8322'_690 (coe v1)))
                                         (coe du_d'8323'_692 (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe du_n'8322'_684 (coe v1))
                                            (coe du_d'8321'_688 (coe v0)))
                                         (coe du_d'8323'_692 (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe du_n'8323'_686 (coe v2))
                                            (coe du_d'8321'_688 (coe v0)))
                                         (coe du_d'8322'_690 (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                         (\ v11 v12 v13 v14 v15 -> v15)
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_n'8322'_684 (coe v1))
                                               (coe du_d'8321'_688 (coe v0)))
                                            (coe du_d'8323'_692 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_d'8321'_688 (coe v0))
                                               (coe du_n'8322'_684 (coe v1)))
                                            (coe du_d'8323'_692 (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_n'8323'_686 (coe v2))
                                               (coe du_d'8321'_688 (coe v0)))
                                            (coe du_d'8322'_690 (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                            (\ v11 v12 v13 v14 v15 -> v15)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_d'8321'_688 (coe v0))
                                                  (coe du_n'8322'_684 (coe v1)))
                                               (coe du_d'8323'_692 (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe du_d'8321'_688 (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_n'8322'_684 (coe v1))
                                                  (coe du_d'8323'_692 (coe v2))))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_n'8323'_686 (coe v2))
                                                  (coe du_d'8321'_688 (coe v0)))
                                               (coe du_d'8322'_690 (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                                  (\ v11 v12 v13 v14 v15 ->
                                                     coe
                                                       MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                                       v14 v15))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_d'8321'_688 (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_n'8322'_684 (coe v1))
                                                     (coe du_d'8323'_692 (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe du_d'8321'_688 (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_n'8323'_686 (coe v2))
                                                     (coe du_d'8322'_690 (coe v1))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_n'8323'_686 (coe v2))
                                                     (coe du_d'8321'_688 (coe v0)))
                                                  (coe du_d'8322'_690 (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                                  (\ v11 v12 v13 v14 v15 -> v15)
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe du_d'8321'_688 (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe du_n'8323'_686 (coe v2))
                                                        (coe du_d'8322'_690 (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe du_d'8321'_688 (coe v0))
                                                        (coe du_n'8323'_686 (coe v2)))
                                                     (coe du_d'8322'_690 (coe v1)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe du_n'8323'_686 (coe v2))
                                                        (coe du_d'8321'_688 (coe v0)))
                                                     (coe du_d'8322'_690 (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                     (\ v11 v12 v13 v14 v15 -> v15)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe du_d'8321'_688 (coe v0))
                                                           (coe du_n'8323'_686 (coe v2)))
                                                        (coe du_d'8322'_690 (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe du_n'8323'_686 (coe v2))
                                                           (coe du_d'8321'_688 (coe v0)))
                                                        (coe du_d'8322'_690 (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe du_n'8323'_686 (coe v2))
                                                           (coe du_d'8321'_688 (coe v0)))
                                                        (coe du_d'8322'_690 (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                              (coe du_n'8323'_686 (coe v2))
                                                              (coe du_d'8321'_688 (coe v0)))
                                                           (coe du_d'8322'_690 (coe v1))))
                                                     erased)
                                                  erased)
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_6412
                                                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                     (coe v0))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v2)))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                        (coe v1)))
                                                  v10))
                                            erased)
                                         erased)
                                      (coe
                                         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6562
                                         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe v2))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v1)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                               (coe v0)))
                                         v7))
                                   erased)
                                erased)
                             erased)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.n₁
d_n'8321'_682 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_n'8321'_682 v0 ~v1 ~v2 ~v3 ~v4 = du_n'8321'_682 v0
du_n'8321'_682 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8321'_682 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₂
d_n'8322'_684 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_n'8322'_684 ~v0 v1 ~v2 ~v3 ~v4 = du_n'8322'_684 v1
du_n'8322'_684 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8322'_684 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₃
d_n'8323'_686 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_n'8323'_686 ~v0 ~v1 v2 ~v3 ~v4 = du_n'8323'_686 v2
du_n'8323'_686 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8323'_686 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₁
d_d'8321'_688 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_d'8321'_688 v0 ~v1 ~v2 ~v3 ~v4 = du_d'8321'_688 v0
du_d'8321'_688 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8321'_688 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₂
d_d'8322'_690 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_d'8322'_690 ~v0 v1 ~v2 ~v3 ~v4 = du_d'8322'_690 v1
du_d'8322'_690 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8322'_690 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₃
d_d'8323'_692 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_d'8323'_692 ~v0 ~v1 v2 ~v3 ~v4 = du_d'8323'_692 v2
du_d'8323'_692 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8323'_692 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties.<-trans
d_'60''45'trans_700 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45'trans_700 v0 v1 v2 v3
  = coe
      d_'8804''45''60''45'trans_632 (coe v0) (coe v1) (coe v2)
      (coe du_'60''8658''8804'_578 (coe v3))
-- Data.Rational.Unnormalised.Properties.<-cmp
d_'60''45'cmp_702 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_702 v0 v1
  = let v2
          = MAlonzo.Code.Data.Integer.Properties.d_'60''45'cmp_3350
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                 (coe
                    MAlonzo.Code.Data.Sign.Base.d__'42'__14
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_sign_24
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_sign_24
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                          (coe v1))))
                 (coe
                    mulInt
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                          (coe v1)))))
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                    (coe v1))
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                    (coe v0))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v3)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties._<?_
d__'60''63'__742 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__742 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52)
      (coe du_drop'45''42''60''42'_570)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3440
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe v0))))
-- Data.Rational.Unnormalised.Properties._>?_
d__'62''63'__748 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__748 v0 v1 = coe d__'60''63'__742 (coe v1) (coe v0)
-- Data.Rational.Unnormalised.Properties.<-irrelevant
d_'60''45'irrelevant_750 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_750 = erased
-- Data.Rational.Unnormalised.Properties.<-respʳ-≃
d_'60''45'resp'691''45''8771'_756 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45'resp'691''45''8771'_756 v0 v1 v2 v3 v4
  = coe
      seq (coe v3)
      (case coe v4 of
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7
           -> coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                (coe
                   MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6620
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                         (coe v0))
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                         (coe v2)))
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                         (coe v2))
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                         (coe v0)))
                   (addInt
                      (coe (1 :: Integer))
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator'45'1_16
                         (coe v1)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe du_n'8321'_772 (coe v0)) (coe du_d'8323'_782 (coe v2)))
                         (coe du_d'8322'_780 (coe v1)))
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe du_n'8323'_776 (coe v2)) (coe du_d'8321'_778 (coe v0)))
                         (coe du_d'8322'_780 (coe v1)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                         (\ v8 v9 v10 v11 v12 -> v12)
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe du_n'8321'_772 (coe v0)) (coe du_d'8323'_782 (coe v2)))
                            (coe du_d'8322'_780 (coe v1)))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe du_n'8321'_772 (coe v0))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe du_d'8323'_782 (coe v2)) (coe du_d'8322'_780 (coe v1))))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe du_n'8323'_776 (coe v2)) (coe du_d'8321'_778 (coe v0)))
                            (coe du_d'8322'_780 (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                            (\ v8 v9 v10 v11 v12 -> v12)
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe du_n'8321'_772 (coe v0))
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe du_d'8323'_782 (coe v2)) (coe du_d'8322'_780 (coe v1))))
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe du_n'8321'_772 (coe v0))
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe du_d'8322'_780 (coe v1)) (coe du_d'8323'_782 (coe v2))))
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe du_n'8323'_776 (coe v2)) (coe du_d'8321'_778 (coe v0)))
                               (coe du_d'8322'_780 (coe v1)))
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                               (\ v8 v9 v10 v11 v12 -> v12)
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe du_n'8321'_772 (coe v0))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                     (coe du_d'8322'_780 (coe v1)) (coe du_d'8323'_782 (coe v2))))
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                     (coe du_n'8321'_772 (coe v0)) (coe du_d'8322'_780 (coe v1)))
                                  (coe du_d'8323'_782 (coe v2)))
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                     (coe du_n'8323'_776 (coe v2)) (coe du_d'8321'_778 (coe v0)))
                                  (coe du_d'8322'_780 (coe v1)))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                     (\ v8 v9 v10 v11 v12 ->
                                        coe
                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                          v11 v12)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                     (\ v8 v9 v10 v11 v12 ->
                                        coe
                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                          v11 v12))
                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe du_n'8321'_772 (coe v0)) (coe du_d'8322'_780 (coe v1)))
                                     (coe du_d'8323'_782 (coe v2)))
                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe du_n'8322'_774 (coe v1)) (coe du_d'8321'_778 (coe v0)))
                                     (coe du_d'8323'_782 (coe v2)))
                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe du_n'8323'_776 (coe v2)) (coe du_d'8321'_778 (coe v0)))
                                     (coe du_d'8322'_780 (coe v1)))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                     (\ v8 v9 v10 v11 v12 -> v12)
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe du_n'8322'_774 (coe v1))
                                           (coe du_d'8321'_778 (coe v0)))
                                        (coe du_d'8323'_782 (coe v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe du_n'8322'_774 (coe v1))
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe du_d'8321'_778 (coe v0))
                                           (coe du_d'8323'_782 (coe v2))))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe du_n'8323'_776 (coe v2))
                                           (coe du_d'8321'_778 (coe v0)))
                                        (coe du_d'8322'_780 (coe v1)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                        (\ v8 v9 v10 v11 v12 -> v12)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe du_n'8322'_774 (coe v1))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_d'8321'_778 (coe v0))
                                              (coe du_d'8323'_782 (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe du_n'8322'_774 (coe v1))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_d'8323'_782 (coe v2))
                                              (coe du_d'8321'_778 (coe v0))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_n'8323'_776 (coe v2))
                                              (coe du_d'8321'_778 (coe v0)))
                                           (coe du_d'8322'_780 (coe v1)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                           (\ v8 v9 v10 v11 v12 -> v12)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_n'8322'_774 (coe v1))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_d'8323'_782 (coe v2))
                                                 (coe du_d'8321'_778 (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_n'8322'_774 (coe v1))
                                                 (coe du_d'8323'_782 (coe v2)))
                                              (coe du_d'8321'_778 (coe v0)))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_n'8323'_776 (coe v2))
                                                 (coe du_d'8321'_778 (coe v0)))
                                              (coe du_d'8322'_780 (coe v1)))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                              (\ v8 v9 v10 v11 v12 -> v12)
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_n'8322'_774 (coe v1))
                                                    (coe du_d'8323'_782 (coe v2)))
                                                 (coe du_d'8321'_778 (coe v0)))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_n'8323'_776 (coe v2))
                                                    (coe du_d'8322'_780 (coe v1)))
                                                 (coe du_d'8321'_778 (coe v0)))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_n'8323'_776 (coe v2))
                                                    (coe du_d'8321'_778 (coe v0)))
                                                 (coe du_d'8322'_780 (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                 (\ v8 v9 v10 v11 v12 -> v12)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe du_n'8323'_776 (coe v2))
                                                       (coe du_d'8322'_780 (coe v1)))
                                                    (coe du_d'8321'_778 (coe v0)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_n'8323'_776 (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe du_d'8322'_780 (coe v1))
                                                       (coe du_d'8321'_778 (coe v0))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe du_n'8323'_776 (coe v2))
                                                       (coe du_d'8321'_778 (coe v0)))
                                                    (coe du_d'8322'_780 (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                    (\ v8 v9 v10 v11 v12 -> v12)
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe du_n'8323'_776 (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe du_d'8322'_780 (coe v1))
                                                          (coe du_d'8321'_778 (coe v0))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe du_n'8323'_776 (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe du_d'8321'_778 (coe v0))
                                                          (coe du_d'8322'_780 (coe v1))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe du_n'8323'_776 (coe v2))
                                                          (coe du_d'8321'_778 (coe v0)))
                                                       (coe du_d'8322'_780 (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                                       (\ v8 v9 v10 v11 v12 -> v12)
                                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe du_n'8323'_776 (coe v2))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                             (coe du_d'8321'_778 (coe v0))
                                                             (coe du_d'8322'_780 (coe v1))))
                                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                             (coe du_n'8323'_776 (coe v2))
                                                             (coe du_d'8321'_778 (coe v0)))
                                                          (coe du_d'8322'_780 (coe v1)))
                                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                             (coe du_n'8323'_776 (coe v2))
                                                             (coe du_d'8321'_778 (coe v0)))
                                                          (coe du_d'8322'_780 (coe v1)))
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                                (coe du_n'8323'_776 (coe v2))
                                                                (coe du_d'8321'_778 (coe v0)))
                                                             (coe du_d'8322'_780 (coe v1))))
                                                       erased)
                                                    erased)
                                                 erased)
                                              erased)
                                           erased)
                                        erased)
                                     erased)
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6562
                                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v2))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v1)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe v1))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v0)))
                                     v7))
                               erased)
                            erased)
                         erased)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties._.n₁
d_n'8321'_772 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_n'8321'_772 v0 ~v1 ~v2 ~v3 ~v4 = du_n'8321'_772 v0
du_n'8321'_772 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8321'_772 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₂
d_n'8322'_774 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_n'8322'_774 ~v0 v1 ~v2 ~v3 ~v4 = du_n'8322'_774 v1
du_n'8322'_774 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8322'_774 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.n₃
d_n'8323'_776 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_n'8323'_776 ~v0 ~v1 v2 ~v3 ~v4 = du_n'8323'_776 v2
du_n'8323'_776 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_n'8323'_776 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₁
d_d'8321'_778 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_d'8321'_778 v0 ~v1 ~v2 ~v3 ~v4 = du_d'8321'_778 v0
du_d'8321'_778 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8321'_778 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₂
d_d'8322'_780 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_d'8322'_780 ~v0 v1 ~v2 ~v3 ~v4 = du_d'8322'_780 v1
du_d'8322'_780 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8322'_780 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties._.d₃
d_d'8323'_782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_d'8323'_782 ~v0 ~v1 v2 ~v3 ~v4 = du_d'8323'_782 v2
du_d'8323'_782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> Integer
du_d'8323'_782 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe v0)
-- Data.Rational.Unnormalised.Properties.<-respˡ-≃
d_'60''45'resp'737''45''8771'_792 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'60''45'resp'737''45''8771'_792 v0 v1 v2 v3 v4
  = coe
      d_neg'45'mono'45''60'_418
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v5 v6 -> v6)
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 v1 v0)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v5 v6 -> v6)
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 v1 v2)
      (coe
         d_'60''45'resp'691''45''8771'_756
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
            (\ v5 v6 -> v6)
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 v1 v0)
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
            (\ v5 v6 -> v5) v1 v2)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
            (\ v5 v6 -> v6)
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 v1 v2)
         (coe d_'45''8255'cong_396 (coe v1) (coe v2) (coe v3))
         (coe d_neg'45'mono'45''60'_418 (coe v1) (coe v0) (coe v4)))
-- Data.Rational.Unnormalised.Properties.<-resp-≃
d_'60''45'resp'45''8771'_802 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8771'_802
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'60''45'resp'691''45''8771'_756)
      (coe d_'60''45'resp'737''45''8771'_792)
-- Data.Rational.Unnormalised.Properties.<-isStrictPartialOrder-≡
d_'60''45'isStrictPartialOrder'45''8801'_804 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'60''45'isStrictPartialOrder'45''8801'_804
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      d_'60''45'trans_700
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
-- Data.Rational.Unnormalised.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_810 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'60''45'isStrictPartialOrder_810
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      d_'8771''45'isEquivalence_262 d_'60''45'trans_700
      d_'60''45'resp'45''8771'_802
-- Data.Rational.Unnormalised.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_812 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''45'isStrictTotalOrder_812
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe d_'60''45'isStrictPartialOrder_810) (coe d_'60''45'cmp_702)
-- Data.Rational.Unnormalised.Properties.<-isDenseLinearOrder
d_'60''45'isDenseLinearOrder_814 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_686
d_'60''45'isDenseLinearOrder_814
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_744
      (coe d_'60''45'isStrictTotalOrder_812) (coe d_'60''45'dense_614)
-- Data.Rational.Unnormalised.Properties.<-strictPartialOrder-≡
d_'60''45'strictPartialOrder'45''8801'_816 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'60''45'strictPartialOrder'45''8801'_816
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      d_'60''45'isStrictPartialOrder'45''8801'_804
-- Data.Rational.Unnormalised.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_818 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'60''45'strictPartialOrder_818
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      d_'60''45'isStrictPartialOrder_810
-- Data.Rational.Unnormalised.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_820 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'60''45'strictTotalOrder_820
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      d_'60''45'isStrictTotalOrder_812
-- Data.Rational.Unnormalised.Properties.<-denseLinearOrder
d_'60''45'denseLinearOrder_822 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DenseLinearOrder_1394
d_'60''45'denseLinearOrder_822
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1504
      d_'60''45'isDenseLinearOrder_814
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple._IsRelatedTo_
d__IsRelatedTo__828 a0 a1 = ()
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple._∎
d__'8718'_830 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_830
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.<-go
d_'60''45'go_832 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_832
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe d_'60''45'trans_700) (coe d_'60''45'resp'45''8771'_802)
      (coe d_'60''45''8804''45'trans_666)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsEquality
d_IsEquality_834 a0 a1 a2 = ()
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsEquality?
d_IsEquality'63'_836 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_836 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsStrict
d_IsStrict_838 a0 a1 a2 = ()
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.IsStrict?
d_IsStrict'63'_840 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_840 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin_
d_begin__842 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_begin__842
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_578 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin-contradiction_
d_begin'45'contradiction__844 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__844 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__248
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin_
d_begin__846 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_begin__846
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.begin_
d_begin__848 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_begin__848
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.eqRelation
d_eqRelation_850 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_850
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.extractEquality
d_extractEquality_854 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_extractEquality_854 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractEquality_234
      v2 v3
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.extractStrict
d_extractStrict_856 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_extractStrict_856 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.start
d_start_864 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_start_864
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_530)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_578 v2)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-<
d_step'45''60'_866 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_866
  = let v0 = d_'60''45'trans_700 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_802 in
       coe
         (let v2 = d_'60''45''8804''45'trans_666 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≈
d_step'45''8776'_868 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776'_868
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_802 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≈-⟨
d_step'45''8776''45''10216'_870 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''45''10216'_870
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_802 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≈-⟩
d_step'45''8776''45''10217'_872 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''45''10217'_872
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_802 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≈˘
d_step'45''8776''728'_874 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''728'_874
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (let v1 = d_'60''45'resp'45''8771'_802 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                  (coe v0)))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡
d_step'45''8801'_876 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_876
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡-∣
d_step'45''8801''45''8739'_878 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_878 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_878 v2
du_step'45''8801''45''8739'_878 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_878 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡-⟨
d_step'45''8801''45''10216'_880 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_880
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡-⟩
d_step'45''8801''45''10217'_882 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_882
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≡˘
d_step'45''8801''728'_884 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_884
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.step-≤
d_step'45''8804'_886 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_886
  = let v0 = d_'8804''45'isPreorder_530 in
    coe
      (let v1 = d_'8804''45''60''45'trans_632 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.stop
d_stop_888 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_888
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_530)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.strictRelation
d_strictRelation_892 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_892
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.≈-go
d_'8776''45'go_894 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_894
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_530) (coe d_'60''45'resp'45''8771'_802)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.≡-go
d_'8801''45'go_896 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_896 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_896 v4
du_'8801''45'go_896 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_896 v0 = coe v0
-- Data.Rational.Unnormalised.Properties.≤-Reasoning.Triple.≤-go
d_'8804''45'go_898 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_898
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_530)
      (coe d_'8804''45''60''45'trans_632)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning._.step-≃-⟨
d_step'45''8771''45''10216'_918 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10216'_918
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_530)
         (coe d_'60''45'resp'45''8771'_802))
      (\ v0 v1 v2 -> coe du_'8771''45'sym_172 v2)
-- Data.Rational.Unnormalised.Properties.≤-Reasoning._.step-≃-⟩
d_step'45''8771''45''10217'_920 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10217'_920
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_530)
         (coe d_'60''45'resp'45''8771'_802))
-- Data.Rational.Unnormalised.Properties.≥0⇒↥≥0
d_'8805'0'8658''8613''8805'0_926 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_'8805'0'8658''8613''8805'0_926 v0 ~v1 v2
  = du_'8805'0'8658''8613''8805'0_926 v0 v2
du_'8805'0'8658''8613''8805'0_926 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
du_'8805'0'8658''8613''8805'0_926 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'8804''45'trans_3074
      (coe du_drop'45''42''8804''42'_446 (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_3066
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
-- Data.Rational.Unnormalised.Properties.>0⇒↥>0
d_'62'0'8658''8613''62'0_938 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_'62'0'8658''8613''62'0_938 v0 ~v1 v2
  = du_'62'0'8658''8613''62'0_938 v0 v2
du_'62'0'8658''8613''62'0_938 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
du_'62'0'8658''8613''62'0_938 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
      (coe du_drop'45''42''60''42'_570 (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_3066
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
-- Data.Rational.Unnormalised.Properties.positive⁻¹
d_positive'8315''185'_948 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_positive'8315''185'_948 v0 ~v1 = du_positive'8315''185'_948 v0
du_positive'8315''185'_948 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_positive'8315''185'_948 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
         (coe
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_94
            (coe
               MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
-- Data.Rational.Unnormalised.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_954 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_nonNegative'8315''185'_954 v0 ~v1
  = du_nonNegative'8315''185'_954 v0
du_nonNegative'8315''185'_954 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_nonNegative'8315''185'_954 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                   (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.negative⁻¹
d_negative'8315''185'_960 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_negative'8315''185'_960 v0 ~v1 = du_negative'8315''185'_960 v0
du_negative'8315''185'_960 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_negative'8315''185'_960 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
         (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_86))
-- Data.Rational.Unnormalised.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_966 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_nonPositive'8315''185'_966 v0 ~v1
  = du_nonPositive'8315''185'_966 v0
du_nonPositive'8315''185'_966 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_nonPositive'8315''185'_966 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
             _ -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_62)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.pos⇒nonNeg
d_pos'8658'nonNeg_972 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_pos'8658'nonNeg_972 v0 ~v1 = du_pos'8658'nonNeg_972 v0
du_pos'8658'nonNeg_972 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_pos'8658'nonNeg_972 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_constructor_194
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg⇒nonPos
d_neg'8658'nonPos_978 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198
d_neg'8658'nonPos_978 v0 ~v1 = du_neg'8658'nonPos_978 v0
du_neg'8658'nonPos_978 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198
du_neg'8658'nonPos_978 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_constructor_206
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg<pos
d_neg'60'pos_986 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'60'pos_986 v0 v1 ~v2 ~v3 = du_neg'60'pos_986 v0 v1
du_neg'60'pos_986 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_neg'60'pos_986 v0 v1
  = coe
      d_'60''45'trans_700 v0
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114 v1
      (coe du_negative'8315''185'_960 (coe v0))
      (coe du_positive'8315''185'_948 (coe v1))
-- Data.Rational.Unnormalised.Properties.pos⇒nonZero
d_pos'8658'nonZero_994 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_pos'8658'nonZero_994 v0 ~v1 = du_pos'8658'nonZero_994 v0
du_pos'8658'nonZero_994 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_pos'8658'nonZero_994 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_constructor_120
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.nonNeg∧nonPos⇒0
d_nonNeg'8743'nonPos'8658'0_998 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_nonNeg'8743'nonPos'8658'0_998 v0 ~v1 ~v2
  = du_nonNeg'8743'nonPos'8658'0_998 v0
du_nonNeg'8743'nonPos'8658'0_998 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_nonNeg'8743'nonPos'8658'0_998 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.nonNeg<⇒pos
d_nonNeg'60''8658'pos_1006 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_nonNeg'60''8658'pos_1006 v0 v1 ~v2 v3
  = du_nonNeg'60''8658'pos_1006 v0 v1 v3
du_nonNeg'60''8658'pos_1006 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_nonNeg'60''8658'pos_1006 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
      (coe v1)
      (coe
         d_'8804''45''60''45'trans_632
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
         (coe v0) (coe v1) (coe du_nonNegative'8315''185'_954 (coe v0))
         (coe v2))
-- Data.Rational.Unnormalised.Properties.nonNeg≤⇒nonNeg
d_nonNeg'8804''8658'nonNeg_1018 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_nonNeg'8804''8658'nonNeg_1018 v0 v1 ~v2 v3
  = du_nonNeg'8804''8658'nonNeg_1018 v0 v1 v3
du_nonNeg'8804''8658'nonNeg_1018 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_nonNeg'8804''8658'nonNeg_1018 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_192
      (coe v1)
      (coe
         d_'8804''45'trans_458
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
         (coe v0) (coe v1) (coe du_nonNegative'8315''185'_954 (coe v0))
         (coe v2))
-- Data.Rational.Unnormalised.Properties.neg⇒nonZero
d_neg'8658'nonZero_1026 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_neg'8658'nonZero_1026 v0 ~v1 = du_neg'8658'nonZero_1026 v0
du_neg'8658'nonZero_1026 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_neg'8658'nonZero_1026 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_constructor_120
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.+-cong
d_'43''45'cong_1028 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cong_1028 v0 v1 v2 v3 v4 v5
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               seq (coe v3)
               (coe
                  seq (coe v4)
                  (coe
                     seq (coe v5)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))))))
-- Data.Rational.Unnormalised.Properties._.↥x
d_'8613'x_1046 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'x_1046 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8613'x_1046 v0
du_'8613'x_1046 :: Integer -> Integer
du_'8613'x_1046 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧x
d_'8615'x_1048 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'x_1048 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8615'x_1048 v0 v1
du_'8615'x_1048 :: Integer -> Integer -> Integer
du_'8615'x_1048 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties._.↥y
d_'8613'y_1050 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'y_1050 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8613'y_1050 v2
du_'8613'y_1050 :: Integer -> Integer
du_'8613'y_1050 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧y
d_'8615'y_1052 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'y_1052 ~v0 ~v1 v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8615'y_1052 v2 v3
du_'8615'y_1052 :: Integer -> Integer -> Integer
du_'8615'y_1052 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties._.↥u
d_'8613'u_1054 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'u_1054 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9
  = du_'8613'u_1054 v4
du_'8613'u_1054 :: Integer -> Integer
du_'8613'u_1054 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧u
d_'8615'u_1056 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'u_1056 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 ~v8 ~v9
  = du_'8615'u_1056 v4 v5
du_'8615'u_1056 :: Integer -> Integer -> Integer
du_'8615'u_1056 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties._.↥v
d_'8613'v_1058 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8613'v_1058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9
  = du_'8613'v_1058 v6
du_'8613'v_1058 :: Integer -> Integer
du_'8613'v_1058 v0 = coe v0
-- Data.Rational.Unnormalised.Properties._.↧v
d_'8615'v_1060 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_'8615'v_1060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 ~v9
  = du_'8615'v_1060 v6 v7
du_'8615'v_1060 :: Integer -> Integer -> Integer
du_'8615'v_1060 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
         (coe v0) (coe v1))
-- Data.Rational.Unnormalised.Properties.+-congʳ
d_'43''45'cong'691'_1092 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cong'691'_1092 v0 v1 v2 v3
  = coe
      d_'43''45'cong_1028 (coe v2) (coe v2) (coe v0) (coe v1)
      (coe du_'8771''45'refl_168) (coe v3)
-- Data.Rational.Unnormalised.Properties.+-congˡ
d_'43''45'cong'737'_1100 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cong'737'_1100 v0 v1 v2 v3
  = coe
      d_'43''45'cong_1028 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe du_'8771''45'refl_168)
-- Data.Rational.Unnormalised.Properties.+-assoc-↥
d_'43''45'assoc'45''8613'_1106 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc'45''8613'_1106 = erased
-- Data.Rational.Unnormalised.Properties.+-assoc-↧
d_'43''45'assoc'45''8615'_1130 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc'45''8615'_1130 = erased
-- Data.Rational.Unnormalised.Properties.+-assoc-≡
d_'43''45'assoc'45''8801'_1138 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc'45''8801'_1138 = erased
-- Data.Rational.Unnormalised.Properties.+-assoc
d_'43''45'assoc_1146 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'assoc_1146 ~v0 ~v1 ~v2 = du_'43''45'assoc_1146
du_'43''45'assoc_1146 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'assoc_1146 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.+-comm-↥
d_'43''45'comm'45''8613'_1154 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm'45''8613'_1154 = erased
-- Data.Rational.Unnormalised.Properties.+-comm-↧
d_'43''45'comm'45''8615'_1160 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm'45''8615'_1160 = erased
-- Data.Rational.Unnormalised.Properties.+-comm-≡
d_'43''45'comm'45''8801'_1166 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm'45''8801'_1166 = erased
-- Data.Rational.Unnormalised.Properties.+-comm
d_'43''45'comm_1172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'comm_1172 ~v0 ~v1 = du_'43''45'comm_1172
du_'43''45'comm_1172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'comm_1172 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.+-identityˡ-↥
d_'43''45'identity'737''45''8613'_1178 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737''45''8613'_1178 = erased
-- Data.Rational.Unnormalised.Properties.+-identityˡ-↧
d_'43''45'identity'737''45''8615'_1186 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737''45''8615'_1186 = erased
-- Data.Rational.Unnormalised.Properties.+-identityˡ-≡
d_'43''45'identity'737''45''8801'_1190 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737''45''8801'_1190 = erased
-- Data.Rational.Unnormalised.Properties.+-identityˡ
d_'43''45'identity'737'_1194 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'identity'737'_1194 ~v0 = du_'43''45'identity'737'_1194
du_'43''45'identity'737'_1194 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'identity'737'_1194 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.+-identityʳ-≡
d_'43''45'identity'691''45''8801'_1198 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691''45''8801'_1198 = erased
-- Data.Rational.Unnormalised.Properties.+-identityʳ
d_'43''45'identity'691'_1200 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'identity'691'_1200 ~v0 = du_'43''45'identity'691'_1200
du_'43''45'identity'691'_1200 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'43''45'identity'691'_1200 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.+-identity-≡
d_'43''45'identity'45''8801'_1204 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity'45''8801'_1204
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Unnormalised.Properties.+-identity
d_'43''45'identity_1206 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_1206
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'43''45'identity'737'_1194)
      (\ v0 -> coe du_'43''45'identity'691'_1200)
-- Data.Rational.Unnormalised.Properties.+-inverseˡ
d_'43''45'inverse'737'_1208 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'inverse'737'_1208 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.+-inverseʳ
d_'43''45'inverse'691'_1222 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'inverse'691'_1222 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.+-inverse
d_'43''45'inverse_1236 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1236
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'43''45'inverse'737'_1208) (coe d_'43''45'inverse'691'_1222)
-- Data.Rational.Unnormalised.Properties.+-cancelˡ
d_'43''45'cancel'737'_1244 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cancel'737'_1244 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6) v1
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe v1)
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v1)
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v1)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                  (coe v0)))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_530)
                  (coe d_'60''45'resp'45''8771'_802))
               (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v1)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                     (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v1)
                     (coe v0))
                  (coe v0))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v1)
                        (coe v0))
                     (coe v0))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                        (coe v1))
                     (coe v0))
                  v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_530)
                        (coe d_'60''45'resp'45''8771'_802))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                           (coe v1))
                        (coe v0))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                           (coe v2))
                        (coe v0))
                     v2
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_530)
                           (coe d_'60''45'resp'45''8771'_802))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                              (coe v2))
                           (coe v0))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v2)
                              (coe v0))
                           (coe v0))
                        v2
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                              (coe d_'8804''45'isPreorder_530)
                              (coe d_'60''45'resp'45''8771'_802))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v2)
                                 (coe v0))
                              (coe v0))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                                 (coe v0)))
                           v2
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                 (coe d_'8804''45'isPreorder_530)
                                 (coe d_'60''45'resp'45''8771'_802))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                                    (coe v0) (coe v0)))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                 (coe v2)
                                 (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                              v2
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                    (coe d_'8804''45'isPreorder_530)
                                    (coe d_'60''45'resp'45''8771'_802))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                                 v2 v2
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                       (coe d_'8804''45'isPreorder_530))
                                    (coe v2))
                                 (coe du_'43''45'identity'691'_1200))
                              (d_'43''45'cong'691'_1092
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                                    (coe v0) (coe v0))
                                 (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                                 (coe v2) (coe d_'43''45'inverse'691'_1222 (coe v0))))
                           (coe du_'43''45'assoc_1146))
                        (d_'43''45'cong'737'_1100
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                              (coe v2))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v2)
                              (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                           (coe du_'43''45'comm_1172)))
                     (d_'43''45'cong'737'_1100
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                           (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                           (coe v2))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                        (coe v3)))
                  (d_'43''45'cong'737'_1100
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v1)
                        (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                     (coe du_'43''45'comm_1172)))
               (coe du_'43''45'assoc_1146))
            (d_'43''45'cong'691'_1092
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                  (coe v0))
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
               (coe v1) (coe d_'43''45'inverse'691'_1222 (coe v0))))
         (coe du_'43''45'identity'691'_1200))
-- Data.Rational.Unnormalised.Properties.+-cancelʳ
d_'43''45'cancel'691'_1264 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'cancel'691'_1264 v0 v1 v2 v3
  = coe
      d_'43''45'cancel'737'_1244 (coe v0) (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
            (coe v1))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
            (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0) (coe v1))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v1) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_530)
                  (coe d_'60''45'resp'45''8771'_802))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v1) (coe v0))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v2) (coe v0))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v0) (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe v2) (coe v0))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe v0) (coe v2))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe v0) (coe v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_530))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                        (coe v2)))
                  (coe du_'43''45'comm_1172))
               v3)
            (coe du_'43''45'comm_1172)))
-- Data.Rational.Unnormalised.Properties.p+p≃0⇒p≃0
d_p'43'p'8771'0'8658'p'8771'0_1280 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'43'p'8771'0'8658'p'8771'0_1280 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_1286 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_1286 = erased
-- Data.Rational.Unnormalised.Properties.p≃-p⇒p≃0
d_p'8771''45'p'8658'p'8771'0_1298 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8771''45'p'8658'p'8771'0_1298 v0 v1
  = coe
      d_p'43'p'8771'0'8658'p'8771'0_1280 (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
            (coe v0))
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v0) (coe v0))
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_530)
                  (coe d_'60''45'resp'45''8771'_802))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                  (coe v0) (coe v0))
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_530))
                  (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
               (d_'43''45'inverse'691'_1222 (coe v0)))
            (d_'43''45'cong'691'_1092
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
               (coe v0) (coe v1))))
-- Data.Rational.Unnormalised.Properties.lemma
d_lemma_1314 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_1314 = erased
-- Data.Rational.Unnormalised.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_1336 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'43''45'mono'691''45''8804'_1336 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                        (coe
                                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                        (\ v13 v14 v15 ->
                                           coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                                             v15))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0))
                                              (\ v13 v14 -> v13) v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                              (\ v13 v14 -> v14)
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0))
                                              v1 v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                              (\ v13 v14 -> v14)
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0))
                                              v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0))
                                              (\ v13 v14 -> v13) v1 v2)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                        (\ v13 v14 v15 v16 v17 -> v17)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0) (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0) (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_r'8322'_1350 (coe v4) (coe v5))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2)))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                 (\ v13 v14 -> v14)
                                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                    (coe v0))
                                                 v1 v2))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                    (coe v0))
                                                 (\ v13 v14 -> v13) v1 v2)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                              (\ v13 v14 v15 v16 v17 ->
                                                 coe
                                                   MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                                   v16 v17))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_r'8322'_1350 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_r'8322'_1350 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                    (\ v13 v14 -> v14)
                                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0))
                                                    v1 v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0))
                                                    (\ v13 v14 -> v13) v1 v2)))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                              (\ v13 v14 v15 v16 v17 -> v17)
                                              (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_r'8322'_1350 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0) (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0) (coe v1))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                       (\ v13 v14 -> v14)
                                                       (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                          (coe v0))
                                                       v1 v2))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                       (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                          (coe v0))
                                                       (\ v13 v14 -> v13) v1 v2)))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                          (coe v0) (coe v2)))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                          (coe v0) (coe v1)))))
                                              erased)
                                           (d_leq_1352
                                              (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                                              (coe v12)))
                                        erased))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.r₂
d_r'8322'_1350 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_r'8322'_1350 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_r'8322'_1350 v0 v1
du_r'8322'_1350 :: Integer -> Integer -> Integer
du_r'8322'_1350 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.leq
d_leq_1352 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__48
d_leq_1352 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804'_4882
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe du_r'8322'_1350 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe du_r'8322'_1350 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))))
         (\ v7 v8 -> v7)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v0) (coe v1)))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_3066
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe du_r'8322'_1350 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v2) (coe v3)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v4) (coe v5))))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_6412
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v0) (coe v1)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v0) (coe v1))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3))))
         v6)
-- Data.Rational.Unnormalised.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_1356 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'43''45'mono'737''45''8804'_1356 v0 v1 v2
  = coe d_'43''45'mono'691''45''8804'_1336 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.+-mono-≤
d_'43''45'mono'45''8804'_1372 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'43''45'mono'45''8804'_1372 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_mono'737''8743'mono'691''8658'mono'8322'_362
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202)
      (coe d_'8804''45'trans_458)
      (coe d_'43''45'mono'691''45''8804'_1336)
      (coe d_'43''45'mono'737''45''8804'_1356) (coe v0) (coe v1) (coe v2)
      (coe v3)
-- Data.Rational.Unnormalised.Properties.p≤q⇒p≤r+q
d_p'8804'q'8658'p'8804'r'43'q_1378 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'8658'p'8804'r'43'q_1378 v0 v1 v2 ~v3 v4
  = du_p'8804'q'8658'p'8804'r'43'q_1378 v0 v1 v2 v4
du_p'8804'q'8658'p'8804'r'43'q_1378 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_p'8804'q'8658'p'8804'r'43'q_1378 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_1372
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114 v2 v0
      v1 (coe du_nonNegative'8315''185'_954 (coe v2)) v3
-- Data.Rational.Unnormalised.Properties.p≤q+p
d_p'8804'q'43'p_1396 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'43'p_1396 v0 v1 ~v2 = du_p'8804'q'43'p_1396 v0 v1
du_p'8804'q'43'p_1396 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_p'8804'q'43'p_1396 v0 v1
  = coe
      du_p'8804'q'8658'p'8804'r'43'q_1378 (coe v0) (coe v0) (coe v1)
      (coe d_'8804''45'refl_454 (coe v0))
-- Data.Rational.Unnormalised.Properties.p≤p+q
d_p'8804'p'43'q_1408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'p'43'q_1408 v0 v1 ~v2 = du_p'8804'p'43'q_1408 v0 v1
du_p'8804'p'43'q_1408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_p'8804'p'43'q_1408 v0 v1
  = coe du_p'8804'q'43'p_1396 (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_1418 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'691''45''60'_1418 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                              (coe v0) (coe v1)))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                              (coe v0) (coe v2))))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                              (coe v0) (coe v2)))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                              (coe v0) (coe v1))))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                        (\ v13 v14 v15 v16 v17 -> v17)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0) (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0) (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_'8613'r'8615'r_1432 (coe v4) (coe v5))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_'8615'r'8615'r_1434 (coe v4) (coe v5))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2)))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0) (coe v2)))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                 (coe v0) (coe v1))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                              (\ v13 v14 v15 v16 v17 ->
                                                 coe
                                                   MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                                   v16 v17)
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                              (\ v13 v14 v15 v16 v17 ->
                                                 coe
                                                   MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                                   v16 v17))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_'8613'r'8615'r_1432 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_'8615'r'8615'r_1434 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_'8613'r'8615'r_1432 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_'8615'r'8615'r_1434 (coe v4) (coe v5))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                    (coe v0) (coe v2)))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                    (coe v0) (coe v1))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                              (\ v13 v14 v15 v16 v17 -> v17)
                                              (MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_'8613'r'8615'r_1432 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_'8615'r'8615'r_1434 (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0) (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0) (coe v1))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0) (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                       (coe v0) (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                          (coe v0) (coe v2)))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                          (coe v0) (coe v1)))))
                                              erased)
                                           (d_leq_1436
                                              (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                                              (coe v12)))
                                        erased))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.↥r↧r
d_'8613'r'8615'r_1432 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_'8613'r'8615'r_1432 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8613'r'8615'r_1432 v0 v1
du_'8613'r'8615'r_1432 :: Integer -> Integer -> Integer
du_'8613'r'8615'r_1432 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.↧r↧r
d_'8615'r'8615'r_1434 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__72 -> Integer
d_'8615'r'8615'r_1434 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8615'r'8615'r_1434 v0 v1
du_'8615'r'8615'r_1434 :: Integer -> Integer -> Integer
du_'8615'r'8615'r_1434 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.leq
d_leq_1436 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__72
d_leq_1436 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Integer.Properties.d_'43''45'mono'45''8804''45''60'_4998
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe du_'8613'r'8615'r_1432 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe du_'8613'r'8615'r_1432 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5)))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe du_'8615'r'8615'r_1434 (coe v0) (coe v1)))
         (\ v7 v8 -> v7)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe du_'8615'r'8615'r_1434 (coe v0) (coe v1)))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3)))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_3066
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334
            (coe du_'8613'r'8615'r_1432 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'42'__334
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v2) (coe v3)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                     (coe v4) (coe v5))))))
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6530
         (coe du_'8615'r'8615'r_1434 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v4) (coe v5))))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                  (coe v2) (coe v3))))
         (coe v6))
-- Data.Rational.Unnormalised.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_1440 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'737''45''60'_1440 v0 v1 v2
  = coe d_'43''45'mono'691''45''60'_1418 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.+-mono-<
d_'43''45'mono'45''60'_1456 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'45''60'_1456 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45'trans_700
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
         (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
              (coe v6) (coe v2))
         v0 v1)
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
         (coe v1) (coe v3))
      (coe d_'43''45'mono'737''45''60'_1440 v2 v0 v1 v4)
      (d_'43''45'mono'691''45''60'_1418
         (coe v1) (coe v2) (coe v3) (coe v5))
-- Data.Rational.Unnormalised.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_1470 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'45''8804''45''60'_1470 v0 v1 v2 v3 v4 v5
  = coe
      d_'8804''45''60''45'trans_632
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
              (coe v6) (coe v2))
         v0 v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v1)
         (coe v3))
      (coe d_'43''45'mono'737''45''8804'_1356 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''60'_1418 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Rational.Unnormalised.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_1482 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'43''45'mono'45''60''45''8804'_1482 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45''8804''45'trans_666
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v6 v7 -> v7)
         (\ v6 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
              (coe v6) (coe v2))
         v0 v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v1)
         (coe v3))
      (coe d_'43''45'mono'737''45''60'_1440 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''8804'_1336 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Rational.Unnormalised.Properties.pos+pos⇒pos
d_pos'43'pos'8658'pos_1502 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_pos'43'pos'8658'pos_1502 v0 ~v1 v2 ~v3
  = du_pos'43'pos'8658'pos_1502 v0 v2
du_pos'43'pos'8658'pos_1502 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_pos'43'pos'8658'pos_1502 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
         (coe v1))
      (coe
         d_'43''45'mono'45''60'_1456
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v1) (coe du_positive'8315''185'_948 (coe v0))
         (coe du_positive'8315''185'_948 (coe v1)))
-- Data.Rational.Unnormalised.Properties.nonNeg+nonNeg⇒nonNeg
d_nonNeg'43'nonNeg'8658'nonNeg_1516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_nonNeg'43'nonNeg'8658'nonNeg_1516 v0 ~v1 v2 ~v3
  = du_nonNeg'43'nonNeg'8658'nonNeg_1516 v0 v2
du_nonNeg'43'nonNeg'8658'nonNeg_1516 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_nonNeg'43'nonNeg'8658'nonNeg_1516 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_192
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
         (coe v1))
      (coe
         d_'43''45'mono'45''8804'_1372
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         v0
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         v1 (coe du_nonNegative'8315''185'_954 (coe v0))
         (coe du_nonNegative'8315''185'_954 (coe v1)))
-- Data.Rational.Unnormalised.Properties.+-minus-telescope
d_'43''45'minus'45'telescope_1528 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'43''45'minus'45'telescope_1528 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
            (coe v1))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v1)
            (coe v2)))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
               (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v1)
               (coe v2)))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                  (coe v1))
               (coe v1))
            (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v0) (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                     (coe v1))
                  (coe v1))
               (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                     (coe v1)))
               (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v0) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe d_'8804''45'isPreorder_530)
                  (coe d_'60''45'resp'45''8771'_802))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                        (coe v1)))
                  (coe v2))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                  (coe v2))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                  (coe v0) (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                     (coe v2))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                     (coe v0) (coe v2))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                     (coe v0) (coe v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_530))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                        (coe v2)))
                  (d_'43''45'cong'737'_1100
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                     (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
                     (coe du_'43''45'identity'691'_1200)))
               (d_'43''45'cong'737'_1100
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
                  (coe
                     d_'43''45'cong'691'_1092
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                        (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                     (coe v0) (coe d_'43''45'inverse'737'_1208 (coe v1)))))
            (d_'43''45'cong'737'_1100
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1)))
                  (coe v1))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202 (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                     (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
               (coe du_'43''45'assoc_1146)))
         (coe du_'8771''45'sym_172 (coe du_'43''45'assoc_1146)))
-- Data.Rational.Unnormalised.Properties.p≃q⇒p-q≃0
d_p'8771'q'8658'p'45'q'8771'0_1544 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8771'q'8658'p'45'q'8771'0_1544 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
         (coe v1))
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v0) (coe v1))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v1) (coe v1))
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v1) (coe v1))
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_530))
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
            (d_'43''45'inverse'691'_1222 (coe v1)))
         (d_'43''45'cong'737'_1100
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
            (coe v2)))
-- Data.Rational.Unnormalised.Properties.p-q≃0⇒p≃q
d_p'45'q'8771'0'8658'p'8771'q_1560 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'45'q'8771'0'8658'p'8771'q_1560 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238)
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe v0)
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0)
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                  (coe v1)))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                     (coe v1)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                     (coe v1))
                  (coe v1))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                        (coe v1))
                     (coe v1))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                     (coe v1))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                        (coe v1))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_530))
                        (coe v1))
                     erased)
                  (d_'43''45'cong'737'_1100
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                        (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                     (coe v1) (coe v2)))
               erased)
            (d_'43''45'cong'691'_1092
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                  (coe v1))
               (coe v0)
               (coe
                  du_'8771''45'sym_172 (coe d_'43''45'inverse'737'_1208 (coe v1)))))
         erased)
-- Data.Rational.Unnormalised.Properties.neg-mono-≤
d_neg'45'mono'45''8804'_1572 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_neg'45'mono'45''8804'_1572 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                 (coe
                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                 (\ v10 v11 v12 ->
                                    coe
                                      MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                                      v12))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                       (\ v10 v11 -> v11)
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 v0
                                       v1))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (\ v10 v11 -> v10) v0 v1)))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (\ v10 v11 -> v10) v0 v1))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                       (\ v10 v11 -> v11)
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 v0
                                       v1)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                 (\ v10 v11 v12 v13 v14 -> v14)
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v0))))
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (\ v10 v11 -> v10) v0 v1))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                          (\ v10 v11 -> v11)
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          v0 v1)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                       (coe
                                          MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                       (\ v10 v11 v12 v13 v14 ->
                                          coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                            v13 v14))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             (\ v10 v11 -> v10) v0 v1))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                             (\ v10 v11 -> v11)
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             v0 v1)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v3))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                             (coe
                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                (\ v10 v11 -> v10) v0 v1))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                (\ v10 v11 -> v11)
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                v0 v1)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                             (coe
                                                MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v3))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       erased)
                                    (coe
                                       MAlonzo.Code.Data.Integer.Properties.du_neg'45'mono'45''8804'_3630
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0)))
                                       (coe v9)))
                                 erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg-cancel-≤
d_neg'45'cancel'45''8804'_1588 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_neg'45'cancel'45''8804'_1588 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v9
                      -> coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                 (coe
                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                 (\ v10 v11 v12 ->
                                    coe
                                      MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                                      v12))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe v5)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v0)))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                 (\ v10 v11 v12 v13 v14 -> v14)
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v0)))
                                 (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0)))))
                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                    (coe v3)
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                    (\ v10 v11 v12 v13 v14 -> v14)
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0)))))
                                    (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v0))))
                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                       (coe v3)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe
                                             MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                          (\ v10 v11 v12 v13 v14 ->
                                             coe
                                               MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                               v13 v14))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v5))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v0))))
                                       (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v3))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1))))
                                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                          (coe v3)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                          (\ v10 v11 v12 v13 v14 -> v14)
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1))))
                                          (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1)))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe v3)
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d_'45'__278
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                         (coe v1)))))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                   (coe v3)
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                      (coe v1))))
                                             erased)
                                          erased)
                                       (coe
                                          MAlonzo.Code.Data.Integer.Properties.du_neg'45'mono'45''8804'_3630
                                          (coe
                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                                   (coe v0))))
                                          (coe v9)))
                                    erased)
                                 erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.p≤q⇒p-q≤0
d_p'8804'q'8658'p'45'q'8804'0_1604 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'8658'p'45'q'8804'0_1604 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_578 v5))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
         (coe v0) (coe v1))
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_530)
            (coe d_'8804''45''60''45'trans_632))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v0) (coe v1))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v1) (coe v1))
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v1) (coe v1))
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_530))
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
            (d_'43''45'inverse'691'_1222 (coe v1)))
         (coe
            d_'43''45'mono'737''45''8804'_1356
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
            v0 v1 v2))
-- Data.Rational.Unnormalised.Properties.p-q≤0⇒p≤q
d_p'45'q'8804'0'8658'p'8804'q_1620 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'45'q'8804'0'8658'p'8804'q_1620 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_578 v5))
      v0 v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe v0)
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0)
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                  (coe v1)))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                     (coe v1)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                     (coe v1))
                  (coe v1))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'8804''45''60''45'trans_632))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
                        (coe v1))
                     (coe v1))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                     (coe v1))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                        (coe v1))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_530))
                        (coe v1))
                     erased)
                  (coe
                     d_'43''45'mono'737''45''8804'_1356 v1
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                        (coe v0) (coe v1))
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114 v2))
               erased)
            (d_'43''45'cong'691'_1092
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                  (coe v1))
               (coe v0)
               (coe
                  du_'8771''45'sym_172 (coe d_'43''45'inverse'737'_1208 (coe v1)))))
         erased)
-- Data.Rational.Unnormalised.Properties.p≤q⇒0≤q-p
d_p'8804'q'8658'0'8804'q'45'p_1636 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_p'8804'q'8658'0'8804'q'45'p_1636 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_578 v5))
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
         (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v0) (coe v0))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_530)
               (coe d_'8804''45''60''45'trans_632))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v0) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v1) (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
               (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_530))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v1)
                  (coe v0)))
            (coe
               d_'43''45'mono'737''45''8804'_1356
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
               v0 v1 v2))
         (coe
            du_'8771''45'sym_172 (coe d_'43''45'inverse'691'_1222 (coe v0))))
-- Data.Rational.Unnormalised.Properties.0≤q-p⇒p≤q
d_0'8804'q'45'p'8658'p'8804'q_1652 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_0'8804'q'45'p'8658'p'8804'q_1652 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_578 v5))
      v0 v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
            (coe v0))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_530)
               (coe d_'8804''45''60''45'trans_632))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
               (coe v0))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v1)
                  (coe v0))
               (coe v0))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v1)
                     (coe v0))
                  (coe v0))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe v1)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                     (coe v0)))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe v1)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                        (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                     (coe v1)
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe v1)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_530))
                        (coe v1))
                     erased)
                  (d_'43''45'cong'691'_1092
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                        (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
                     (coe v1) (coe d_'43''45'inverse'737'_1208 (coe v0))))
               erased)
            (coe
               d_'43''45'mono'737''45''8804'_1356 v0
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214
                  (coe v1) (coe v0))
               v2))
         erased)
-- Data.Rational.Unnormalised.Properties.+-isMagma
d_'43''45'isMagma_1664 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'43''45'isMagma_1664
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe d_'8771''45'isEquivalence_262) (coe d_'43''45'cong_1028)
-- Data.Rational.Unnormalised.Properties.+-isSemigroup
d_'43''45'isSemigroup_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'43''45'isSemigroup_1666
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'43''45'isMagma_1664)
      (\ v0 v1 v2 -> coe du_'43''45'assoc_1146)
-- Data.Rational.Unnormalised.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'0'45'isMonoid_1668
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'43''45'isSemigroup_1666) (coe d_'43''45'identity_1206)
-- Data.Rational.Unnormalised.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_1670 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'0'45'isCommutativeMonoid_1670
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'43''45'0'45'isMonoid_1668)
      (\ v0 v1 -> coe du_'43''45'comm_1172)
-- Data.Rational.Unnormalised.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_1672 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_'43''45'0'45'isGroup_1672
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1166
      (coe d_'43''45'0'45'isMonoid_1668) (coe d_'43''45'inverse_1236)
      (coe d_'45''8255'cong_396)
-- Data.Rational.Unnormalised.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'0'45'isAbelianGroup_1674
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1254
      (coe d_'43''45'0'45'isGroup_1672)
      (\ v0 v1 -> coe du_'43''45'comm_1172)
-- Data.Rational.Unnormalised.Properties.+-magma
d_'43''45'magma_1676 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'43''45'magma_1676
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      d_'43''45'isMagma_1664
-- Data.Rational.Unnormalised.Properties.+-semigroup
d_'43''45'semigroup_1678 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'43''45'semigroup_1678
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      d_'43''45'isSemigroup_1666
-- Data.Rational.Unnormalised.Properties.+-0-monoid
d_'43''45'0'45'monoid_1680 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'43''45'0'45'monoid_1680
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      d_'43''45'0'45'isMonoid_1668
-- Data.Rational.Unnormalised.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_1682 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'0'45'commutativeMonoid_1682
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      d_'43''45'0'45'isCommutativeMonoid_1670
-- Data.Rational.Unnormalised.Properties.+-0-group
d_'43''45'0'45'group_1684 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564
d_'43''45'0'45'group_1684
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1676
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
      d_'43''45'0'45'isGroup_1672
-- Data.Rational.Unnormalised.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_1686 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1682
d_'43''45'0'45'abelianGroup_1686
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1808
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
      d_'43''45'0'45'isAbelianGroup_1674
-- Data.Rational.Unnormalised.Properties.*-cong
d_'42''45'cong_1688 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cong_1688 v0 v1 v2 v3 v4 v5
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               seq (coe v3)
               (coe
                  seq (coe v4)
                  (coe
                     seq (coe v5)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))))))
-- Data.Rational.Unnormalised.Properties.*-congˡ
d_'42''45'cong'737'_1722 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cong'737'_1722 v0 v1 v2 v3
  = coe
      d_'42''45'cong_1688 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe du_'8771''45'refl_168) (coe v3)
-- Data.Rational.Unnormalised.Properties.*-congʳ
d_'42''45'cong'691'_1728 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cong'691'_1728 v0 v1 v2 v3
  = coe
      d_'42''45'cong_1688 (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
      (coe du_'8771''45'refl_168)
-- Data.Rational.Unnormalised.Properties.*-assoc-↥
d_'42''45'assoc'45''8613'_1734 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc'45''8613'_1734 = erased
-- Data.Rational.Unnormalised.Properties.*-assoc-↧
d_'42''45'assoc'45''8615'_1742 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc'45''8615'_1742 = erased
-- Data.Rational.Unnormalised.Properties.*-assoc-≡
d_'42''45'assoc'45''8801'_1750 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc'45''8801'_1750 = erased
-- Data.Rational.Unnormalised.Properties.*-assoc
d_'42''45'assoc_1758 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'assoc_1758 ~v0 ~v1 ~v2 = du_'42''45'assoc_1758
du_'42''45'assoc_1758 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'assoc_1758 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.*-comm-↥
d_'42''45'comm'45''8613'_1766 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm'45''8613'_1766 = erased
-- Data.Rational.Unnormalised.Properties.*-comm-↧
d_'42''45'comm'45''8615'_1772 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm'45''8615'_1772 = erased
-- Data.Rational.Unnormalised.Properties.*-comm-≡
d_'42''45'comm'45''8801'_1778 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm'45''8801'_1778 = erased
-- Data.Rational.Unnormalised.Properties.*-comm
d_'42''45'comm_1784 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'comm_1784 ~v0 ~v1 = du_'42''45'comm_1784
du_'42''45'comm_1784 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'comm_1784 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.*-identityˡ-≡
d_'42''45'identity'737''45''8801'_1790 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737''45''8801'_1790 = erased
-- Data.Rational.Unnormalised.Properties.*-identityʳ-≡
d_'42''45'identity'691''45''8801'_1794 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691''45''8801'_1794 = erased
-- Data.Rational.Unnormalised.Properties.*-identity-≡
d_'42''45'identity'45''8801'_1796 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity'45''8801'_1796
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Unnormalised.Properties.*-identityˡ
d_'42''45'identity'737'_1798 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'identity'737'_1798 ~v0 = du_'42''45'identity'737'_1798
du_'42''45'identity'737'_1798 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'identity'737'_1798 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.*-identityʳ
d_'42''45'identity'691'_1802 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'identity'691'_1802 ~v0 = du_'42''45'identity'691'_1802
du_'42''45'identity'691'_1802 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'identity'691'_1802 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.*-identity
d_'42''45'identity_1806 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1806
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'42''45'identity'737'_1798)
      (\ v0 -> coe du_'42''45'identity'691'_1802)
-- Data.Rational.Unnormalised.Properties.*-inverseˡ
d_'42''45'inverse'737'_1812 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'inverse'737'_1812 v0 ~v1
  = du_'42''45'inverse'737'_1812 v0
du_'42''45'inverse'737'_1812 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'inverse'737'_1812 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
             _ -> coe
                    du_'42''45'inverse'737'_1812
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                       (coe subInt (coe (0 :: Integer)) (coe v1)) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-inverseʳ
d_'42''45'inverse'691'_1838 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'inverse'691'_1838 v0 ~v1
  = du_'42''45'inverse'691'_1838 v0
du_'42''45'inverse'691'_1838 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'inverse'691'_1838 v0
  = coe
      du_'8771''45'trans_176 (coe du_'42''45'comm_1784)
      (coe du_'42''45'inverse'737'_1812 (coe v0))
-- Data.Rational.Unnormalised.Properties.≄⇒invertible
d_'8772''8658'invertible_1842 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8772''8658'invertible_1842 v0 v1 ~v2
  = du_'8772''8658'invertible_1842 v0 v1
du_'8772''8658'invertible_1842 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8772''8658'invertible_1842 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
            (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'42''45'inverse'737'_1812
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
               (coe v1)))
         (coe
            du_'42''45'inverse'691'_1838
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.*-zeroˡ
d_'42''45'zero'737'_1856 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'zero'737'_1856 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
-- Data.Rational.Unnormalised.Properties.*-zeroʳ
d_'42''45'zero'691'_1860 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'zero'691'_1860
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'737''8658'ze'691'_390
      (coe d_'8771''45'setoid_284)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208)
      (\ v0 v1 -> coe du_'42''45'comm_1784)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
      (coe d_'42''45'zero'737'_1856)
-- Data.Rational.Unnormalised.Properties.*-zero
d_'42''45'zero_1862 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_1862
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'zero'737'_1856) (coe d_'42''45'zero'691'_1860)
-- Data.Rational.Unnormalised.Properties.invertible⇒≄
d_invertible'8658''8772'_1864 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_invertible'8658''8772'_1864 = erased
-- Data.Rational.Unnormalised.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_1882 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''43'_1882 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            seq (coe v2)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_1920 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''43'_1920
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr'691'_570
      (coe d_'8771''45'setoid_284)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208)
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202)
      (coe d_'43''45'cong_1028) (\ v0 v1 -> coe du_'42''45'comm_1784)
      (coe d_'42''45'distrib'737''45''43'_1882)
-- Data.Rational.Unnormalised.Properties.*-distrib-+
d_'42''45'distrib'45''43'_1922 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_1922
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'distrib'737''45''43'_1882)
      (coe d_'42''45'distrib'691''45''43'_1920)
-- Data.Rational.Unnormalised.Properties.p*q≃0⇒p≃0∨q≃0
d_p'42'q'8771'0'8658'p'8771'0'8744'q'8771'0_1924 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_p'42'q'8771'0'8658'p'8771'0'8744'q'8771'0_1924 v0 v1 ~v2
  = du_p'42'q'8771'0'8658'p'8771'0'8744'q'8771'0_1924 v0 v1
du_p'42'q'8771'0'8658'p'8771'0'8744'q'8771'0_1924 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_p'42'q'8771'0'8658'p'8771'0'8744'q'8771'0_1924 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Sum.Base.du_map_84
                (\ v4 -> coe du_'8613'p'8801'0'8658'p'8771'0_330)
                (\ v4 -> coe du_'8613'p'8801'0'8658'p'8771'0_330)
                (coe
                   MAlonzo.Code.Data.Integer.Properties.du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_6096
                   (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.p*q≄0⇒p≄0
d_p'42'q'8772'0'8658'p'8772'0_1932 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_p'42'q'8772'0'8658'p'8772'0_1932 = erased
-- Data.Rational.Unnormalised.Properties.p*q≢0⇒q≢0
d_p'42'q'8802'0'8658'q'8802'0_1946 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_p'42'q'8802'0'8658'q'8802'0_1946 = erased
-- Data.Rational.Unnormalised.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_1964 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'737''45''42'_1964 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_1976 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'691''45''42'_1976 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-/
d_'42''45'cancel'737''45''47'_1994 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cancel'737''45''47'_1994 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'737''45''47'_1994
du_'42''45'cancel'737''45''47'_1994 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'cancel'737''45''47'_1994
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-/
d_'42''45'cancel'691''45''47'_2026 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'cancel'691''45''47'_2026 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'691''45''47'_2026
du_'42''45'cancel'691''45''47'_2026 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'cancel'691''45''47'_2026
  = coe du_'42''45'cancel'737''45''47'_1994
-- Data.Rational.Unnormalised.Properties.reorder₁
d_reorder'8321'_2050 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reorder'8321'_2050 = erased
-- Data.Rational.Unnormalised.Properties.reorder₂
d_reorder'8322'_2072 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_reorder'8322'_2072 = erased
-- Data.Rational.Unnormalised.Properties.+▹-nonNeg
d_'43''9657''45'nonNeg_2088 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_'43''9657''45'nonNeg_2088 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_constructor_194
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_2094 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'691''45''8804''45'pos_2094 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_2094 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'pos_2094 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'691''45''8804''45'pos_2094 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''8804''45'pos_6314
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v1)))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v6)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v0)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                           (coe
                                              MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                           (\ v13 v14 v15 ->
                                              coe
                                                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                                                v15))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v6)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                           (\ v13 v14 v15 v16 v17 -> v17)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v4) (coe v8))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                                      v16 v17))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v4) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                 (\ v13 v14 v15 v16 v17 -> v17)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v6) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v2)))))
                                                 erased)
                                              v12)
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_2112 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'737''45''8804''45'pos_2112 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_2112 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'pos_2112 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'737''45''8804''45'pos_2112 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_2094 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_2132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'691''45''8804''45'neg_2132 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'neg_2132 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'neg_2132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'691''45''8804''45'neg_2132 v0 v1 v2 v3
  = coe
      seq (coe v2)
      (coe
         d_neg'45'cancel'45''8804'_1588 (coe v0) (coe v1)
         (coe
            du_'42''45'cancel'691''45''8804''45'pos_2094
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                  (coe d_'8804''45'isPreorder_530)
                  (\ v4 v5 v6 -> coe du_'60''8658''8804'_578 v6))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe v2))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_530)
                        (coe d_'60''45'resp'45''8771'_802))
                     (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                              (coe v2))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
                              (coe v2))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_530)
                           (coe d_'60''45'resp'45''8771'_802))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
                                 (coe v2))))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                           (coe v0) (coe v2))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                              (coe d_'8804''45'isPreorder_530)
                              (coe d_'8804''45''60''45'trans_632))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                              (coe v0) (coe v2))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                              (coe v1) (coe v2))
                           (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v1))
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                 (coe d_'8804''45'isPreorder_530)
                                 (coe d_'60''45'resp'45''8771'_802))
                              (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                 (coe v1) (coe v2))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                       (coe v1) (coe v2))))
                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                    (coe d_'8804''45'isPreorder_530)
                                    (coe d_'60''45'resp'45''8771'_802))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                          (coe v1) (coe v2))))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v2))))
                                 (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe v2)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                       (coe d_'8804''45'isPreorder_530)
                                       (coe d_'60''45'resp'45''8771'_802))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                          (coe v1)
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             (coe v2))))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v2)))
                                    (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                          (coe d_'8804''45'isPreorder_530))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                             (coe v2))))
                                    (d_neg'45'distrib'737''45''42'_1964
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v2))))
                                 (d_'45''8255'cong_396
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                          (coe v1) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                                          (coe v2)))
                                    (coe d_neg'45'distrib'691''45''42'_1976 (coe v1) (coe v2))))
                              (coe du_neg'45'involutive_388))
                           v3)
                        (coe du_neg'45'involutive_388))
                     (d_'45''8255'cong_396
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2)))
                        (coe d_neg'45'distrib'691''45''42'_1976 (coe v0) (coe v2))))
                  (d_neg'45'distrib'737''45''42'_1964
                     (coe v0)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe v2)))))))
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_2150 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'cancel'737''45''8804''45'neg_2150 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'neg_2150 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'neg_2150 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'cancel'737''45''8804''45'neg_2150 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'neg_2132 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_2172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'nonNeg_2172 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonNeg_2172 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonNeg_2172 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'nonNeg_2172 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                        (coe
                                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                        (\ v13 v14 v15 ->
                                           coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204
                                             v15))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                   (coe v13) (coe v0))
                                              (\ v13 v14 -> v13) v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                              (\ v13 v14 -> v14)
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                   (coe v13) (coe v0))
                                              v1 v2)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                              (\ v13 v14 -> v14)
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                   (coe v13) (coe v0))
                                              v1 v2))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe
                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                              (\ v13 ->
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                   (coe v13) (coe v0))
                                              (\ v13 v14 -> v13) v1 v2)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                        (\ v13 v14 v15 v16 v17 -> v17)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v6)
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe du_l'8321'_2188 (coe v6) (coe v8) (coe v9))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                              (coe
                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                 (\ v13 v14 -> v14)
                                                 (\ v13 ->
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                      (coe v13) (coe v0))
                                                 v1 v2))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                 (\ v13 ->
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                      (coe v13) (coe v0))
                                                 (\ v13 v14 -> v13) v1 v2)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                           (\ v13 v14 v15 v16 v17 -> v17)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_l'8321'_2188 (coe v6) (coe v8) (coe v9))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe du_l'8321'_2188 (coe v6) (coe v8) (coe v9))
                                              (coe
                                                 mulInt (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                    (coe v0))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                    (\ v13 v14 -> v14)
                                                    (\ v13 ->
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                         (coe v13) (coe v0))
                                                    v1 v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe
                                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                    (\ v13 ->
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                         (coe v13) (coe v0))
                                                    (\ v13 v14 -> v13) v1 v2)))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                                      v16 v17))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_l'8321'_2188 (coe v6) (coe v8) (coe v9))
                                                 (coe
                                                    mulInt (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                       (coe v0))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe du_l'8322'_2190 (coe v6) (coe v7) (coe v8))
                                                 (coe
                                                    mulInt (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                       (coe v0))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                       (\ v13 v14 -> v14)
                                                       (\ v13 ->
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                            (coe v13) (coe v0))
                                                       v1 v2))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                       (\ v13 ->
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                            (coe v13) (coe v0))
                                                       (\ v13 v14 -> v13) v1 v2)))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                 (\ v13 v14 v15 v16 v17 -> v17)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_l'8322'_2190 (coe v6) (coe v7) (coe v8))
                                                    (coe
                                                       mulInt (coe v4)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                          (coe v0))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe du_l'8322'_2190 (coe v6) (coe v7) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v4)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                       (coe
                                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                          (\ v13 v14 -> v14)
                                                          (\ v13 ->
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                               (coe v13) (coe v0))
                                                          v1 v2))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe
                                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                          (\ v13 ->
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                               (coe v13) (coe v0))
                                                          (\ v13 v14 -> v13) v1 v2)))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                    (\ v13 v14 v15 v16 v17 -> v17)
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          du_l'8322'_2190 (coe v6) (coe v7)
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe v4)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe v8) (coe v4))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v1))
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0))))
                                                    (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                             (\ v13 v14 -> v14)
                                                             (\ v13 ->
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                                  (coe v13) (coe v0))
                                                             v1 v2))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                             (\ v13 ->
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                                                                  (coe v13) (coe v0))
                                                             (\ v13 v14 -> v13) v1 v2)))
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                             (coe v8) (coe v4))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                             (coe
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                (coe v1))
                                                             (coe
                                                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                                (coe v0)))))
                                                    erased)
                                                 erased)
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_6370
                                                 (coe
                                                    mulInt (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))
                                                 (coe v12)))
                                           erased)
                                        erased))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.l₁
d_l'8321'_2188 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_l'8321'_2188 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 ~v7
  = du_l'8321'_2188 v3 v5 v6
du_l'8321'_2188 :: Integer -> Integer -> Integer -> Integer
du_l'8321'_2188 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v1) (coe v2)))
-- Data.Rational.Unnormalised.Properties._.l₂
d_l'8322'_2190 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__48 -> Integer
d_l'8322'_2190 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 ~v7
  = du_l'8322'_2190 v3 v4 v5
du_l'8322'_2190 :: Integer -> Integer -> Integer -> Integer
du_l'8322'_2190 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_2202 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'nonNeg_2202 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonNeg_2202 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonNeg_2202 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'nonNeg_2202 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonNeg_2172 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-mono-≤-nonNeg
d_'42''45'mono'45''8804''45'nonNeg_2230 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'45''8804''45'nonNeg_2230 v0 v1 v2 v3 ~v4 ~v5 v6 v7
  = du_'42''45'mono'45''8804''45'nonNeg_2230 v0 v1 v2 v3 v6 v7
du_'42''45'mono'45''8804''45'nonNeg_2230 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'45''8804''45'nonNeg_2230 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v6 v7 v8 -> coe du_'60''8658''8804'_578 v8))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
         (coe v0) (coe v2))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
         (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_530)
            (coe d_'8804''45''60''45'trans_632))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v0) (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v1) (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_530)
               (coe d_'8804''45''60''45'trans_632))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v3))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_530))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                  (coe v3)))
            (coe du_'42''45'mono'691''45''8804''45'nonNeg_2202 v1 v2 v3 v5))
         (coe
            du_'42''45'mono'737''45''8804''45'nonNeg_2172 (coe v2) (coe v0)
            (coe v1) (coe v4)))
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_2254 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'nonPos_2254 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonPos_2254 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonPos_2254 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'nonPos_2254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v4 v5 v6 -> coe du_'60''8658''8804'_578 v6))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
              (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
              (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v2) (coe v0))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe v0))))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
            (\ v4 ->
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                 (coe v4) (coe v0))
            (\ v4 v5 -> v4) v1 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v0))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe v0))))
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                    (coe v4) (coe v0))
               (\ v4 v5 -> v4) v1 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_530)
                  (coe d_'8804''45''60''45'trans_632))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe v0))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe v0))))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                  (\ v4 ->
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                       (coe v4) (coe v0))
                  (\ v4 v5 -> v4) v1 v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe v0))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                          (coe v4) (coe v0))
                     (\ v4 v5 -> v4) v1 v2)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_530)
                        (coe d_'60''45'resp'45''8771'_802))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                              (coe v0))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe v1) (coe v0))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                        (\ v4 ->
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                             (coe v4) (coe v0))
                        (\ v4 v5 -> v4) v1 v2)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_530))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe v0)))
                     (coe du_neg'45'involutive_388))
                  (d_'45''8255'cong_396
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
                     (coe d_neg'45'distrib'691''45''42'_1976 (coe v1) (coe v0))))
               (d_neg'45'mono'45''8804'_1572
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                          (coe v4)
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
                     (\ v4 v5 -> v4) v1 v2)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v4 v5 -> v5)
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                          (coe v4)
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
                     v1 v2)
                  (coe
                     du_'42''45'mono'737''45''8804''45'nonNeg_2172
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                     (coe v1) (coe v2) (coe v3))))
            (d_'45''8255'cong_396
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
               (coe d_neg'45'distrib'691''45''42'_1976 (coe v2) (coe v0))))
         (coe du_neg'45'involutive_388))
-- Data.Rational.Unnormalised.Properties._.-r≥0
d_'45'r'8805'0_2268 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_'45'r'8805'0_2268 v0 ~v1 ~v2 ~v3 ~v4 = du_'45'r'8805'0_2268 v0
du_'45'r'8805'0_2268 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_'45'r'8805'0_2268 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_192
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
         (\ v1 v2 -> v1) v0
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
      (coe
         d_neg'45'mono'45''8804'_1572 (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
         (coe du_nonPositive'8315''185'_966 (coe v0)))
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_2276 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'nonPos_2276 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonPos_2276 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonPos_2276 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'nonPos_2276 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_2254 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_2298 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'737''45''60''45'pos_2298 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_2298 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_2298 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'737''45''60''45'pos_2298 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v6)
                                           (coe v4))
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v2))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v8)
                                           (coe v4))
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v1))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                        (\ v13 v14 v15 v16 v17 -> v17)
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v6)
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2)))
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                              (coe v0)))
                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v8)
                                              (coe v4))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v1))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                              (\ v13 v14 v15 v16 v17 ->
                                                 coe
                                                   MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                                   v16 v17)
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                              (\ v13 v14 v15 v16 v17 ->
                                                 coe
                                                   MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                                   v16 v17))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (coe v4))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0)))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))
                                                 (coe v4))
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0)))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v8) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                              (\ v13 v14 v15 v16 v17 -> v17)
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1)))
                                                    (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8) (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8) (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8) (coe v4))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v1))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))))
                                              erased)
                                           (coe
                                              MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6562
                                              (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                                 (\ v13 ->
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                      (coe v13) (coe v4))
                                                 (\ v13 v14 -> v13)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                                 (\ v13 v14 -> v14)
                                                 (\ v13 ->
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                      (coe v13) (coe v4))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6562
                                                 v4
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2)))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1)))
                                                 v12)))
                                        erased))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_2318 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'691''45''60''45'pos_2318 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_2318 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_2318 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'691''45''60''45'pos_2318 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_2298 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.*-mono-<-nonNeg
d_'42''45'mono'45''60''45'nonNeg_2346 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'45''60''45'nonNeg_2346 v0 v1 v2 v3 ~v4 ~v5 v6 v7
  = du_'42''45'mono'45''60''45'nonNeg_2346 v0 v1 v2 v3 v6 v7
du_'42''45'mono'45''60''45'nonNeg_2346 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'45''60''45'nonNeg_2346 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
         (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_530)
            (coe d_'8804''45''60''45'trans_632))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v0) (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v1) (coe v2))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (coe d_'60''45'trans_700) (coe d_'60''45'resp'45''8771'_802)
               (coe d_'60''45''8804''45'trans_666))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v2))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v3))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_530))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                  (coe v3)))
            (coe du_'42''45'mono'691''45''60''45'pos_2318 v1 v2 v3 v5))
         (coe
            du_'42''45'mono'737''45''8804''45'nonNeg_2172 (coe v2) (coe v0)
            (coe v1) (coe du_'60''8658''8804'_578 (coe v4))))
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_2368 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'nonNeg_2368 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''60''45'nonNeg_2368 v0 v1 v2 v4
du_'42''45'cancel'691''45''60''45'nonNeg_2368 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'nonNeg_2368 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v6 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v8 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v12
                             -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6620
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe v4)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v1)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe v6)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v0)))
                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                        (coe v8)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                           (coe v2)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v1)))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))))
                                        (coe
                                           MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v6)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                 (coe v2))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                           (\ v13 v14 v15 v16 v17 -> v17)
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v4) (coe v8))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v1))
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                    (coe v2))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344
                                                      v16 v17)
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                                      v16 v17))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v4) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v1))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6) (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                       (coe v2))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                                 (\ v13 v14 v15 v16 v17 -> v17)
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v6) (coe v8))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                                    (coe
                                                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                                             (coe v2)))))
                                                 erased)
                                              v12)
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_2386 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'nonNeg_2386 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''60''45'nonNeg_2386 v0 v1 v2
du_'42''45'cancel'737''45''60''45'nonNeg_2386 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'nonNeg_2386 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''60''45'nonNeg_2368 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_2408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'737''45''60''45'neg_2408 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_2408 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_2408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'737''45''60''45'neg_2408 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
         (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
         (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v2) (coe v0))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe v0))))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v0))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe v0))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_700) (coe d_'60''45'resp'45''8771'_802)
                  (coe d_'60''45''8804''45'trans_666))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe v0))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe v0))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe v1) (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe v0))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe v0))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe v1) (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_530)
                        (coe d_'60''45'resp'45''8771'_802))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                              (coe v0))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe v1) (coe v0))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe v1) (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_530))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe v0)))
                     (coe du_neg'45'involutive_388))
                  (d_'45''8255'cong_396
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
                     (coe d_neg'45'distrib'691''45''42'_1976 (coe v1) (coe v0))))
               (d_neg'45'mono'45''60'_418
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                          (coe v4)
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
                     (\ v4 v5 -> v4) v1 v2)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v4 v5 -> v5)
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                          (coe v4)
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
                     v1 v2)
                  (coe
                     du_'42''45'mono'737''45''60''45'pos_2298
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0))
                     (coe v1) (coe v2) (coe v3))))
            (d_'45''8255'cong_396
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v0)))
               (coe d_neg'45'distrib'691''45''42'_1976 (coe v2) (coe v0))))
         (coe du_neg'45'involutive_388))
-- Data.Rational.Unnormalised.Properties._.-r>0
d_'45'r'62'0_2422 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_'45'r'62'0_2422 v0 ~v1 ~v2 ~v3 ~v4 = du_'45'r'62'0_2422 v0
du_'45'r'62'0_2422 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_'45'r'62'0_2422 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
         (\ v1 v2 -> v1) v0
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
      (coe
         d_neg'45'mono'45''60'_418 (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
         (coe du_negative'8315''185'_960 (coe v0)))
-- Data.Rational.Unnormalised.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_2430 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'mono'691''45''60''45'neg_2430 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_2430 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_2430 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'mono'691''45''60''45'neg_2430 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_2408 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_2450 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'nonPos_2450 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_2450 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_2450 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'nonPos_2450 v0 v1 v2 v3
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_2386 v1 v0
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
            (coe v1))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (\ v4 v5 v6 -> coe du_'8771''45'sym_172 v6)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
               (coe v1))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                  (coe v1)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
               (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_700) (coe d_'60''45'resp'45''8771'_802)
                  (coe d_'60''45''8804''45'trans_666))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v1)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
                  (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                        (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
                     (coe v0))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
                     (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_530))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196 (coe v2))
                        (coe v0)))
                  (d_neg'45'distrib'737''45''42'_1964 (coe v2) (coe v0)))
               (d_neg'45'mono'45''60'_418
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v2)
                     (coe v1))
                  (coe v3)))
            (d_neg'45'distrib'737''45''42'_1964 (coe v2) (coe v1))))
-- Data.Rational.Unnormalised.Properties._.-r≥0
d_'45'r'8805'0_2464 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_'45'r'8805'0_2464 ~v0 ~v1 v2 ~v3 ~v4 = du_'45'r'8805'0_2464 v2
du_'45'r'8805'0_2464 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_'45'r'8805'0_2464 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_192
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
         (\ v1 v2 -> v1) v0
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
      (coe
         d_neg'45'mono'45''8804'_1572 (coe v0)
         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)
         (coe du_nonPositive'8315''185'_966 (coe v0)))
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_2470 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'nonPos_2470 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_2470 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_2470 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'nonPos_2470 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_2450 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Unnormalised.Properties.pos*pos⇒pos
d_pos'42'pos'8658'pos_2494 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_pos'42'pos'8658'pos_2494 v0 ~v1 v2 ~v3
  = du_pos'42'pos'8658'pos_2494 v0 v2
du_pos'42'pos'8658'pos_2494 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_pos'42'pos'8658'pos_2494 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
         (coe v1))
      (coe
         du_'42''45'mono'45''60''45'nonNeg_2346
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v1) (coe du_positive'8315''185'_948 (coe v0))
         (coe du_positive'8315''185'_948 (coe v1)))
-- Data.Rational.Unnormalised.Properties.nonNeg*nonNeg⇒nonNeg
d_nonNeg'42'nonNeg'8658'nonNeg_2508 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_nonNeg'42'nonNeg'8658'nonNeg_2508 v0 ~v1 v2 ~v3
  = du_nonNeg'42'nonNeg'8658'nonNeg_2508 v0 v2
du_nonNeg'42'nonNeg'8658'nonNeg_2508 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_nonNeg'42'nonNeg'8658'nonNeg_2508 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_192
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0)
         (coe v1))
      (coe
         du_'42''45'mono'45''8804''45'nonNeg_2230
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v1) (coe du_nonNegative'8315''185'_954 (coe v0))
         (coe du_nonNegative'8315''185'_954 (coe v1)))
-- Data.Rational.Unnormalised.Properties.*-isMagma
d_'42''45'isMagma_2514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'42''45'isMagma_2514
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe d_'8771''45'isEquivalence_262) (coe d_'42''45'cong_1688)
-- Data.Rational.Unnormalised.Properties.*-isSemigroup
d_'42''45'isSemigroup_2516 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_2516
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe d_'42''45'isMagma_2514)
      (\ v0 v1 v2 -> coe du_'42''45'assoc_1758)
-- Data.Rational.Unnormalised.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_2518 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'1'45'isMonoid_2518
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe d_'42''45'isSemigroup_2516) (coe d_'42''45'identity_1806)
-- Data.Rational.Unnormalised.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_2520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'1'45'isCommutativeMonoid_2520
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe d_'42''45'1'45'isMonoid_2518)
      (\ v0 v1 -> coe du_'42''45'comm_1784)
-- Data.Rational.Unnormalised.Properties.+-*-isRing
d_'43''45''42''45'isRing_2522 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_'43''45''42''45'isRing_2522
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3004
      (coe d_'43''45'0'45'isAbelianGroup_1674) (coe d_'42''45'cong_1688)
      (\ v0 v1 v2 -> coe du_'42''45'assoc_1758)
      (coe d_'42''45'identity_1806) (coe d_'42''45'distrib'45''43'_1922)
-- Data.Rational.Unnormalised.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_2524 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_'43''45''42''45'isCommutativeRing_2524
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3158
      (coe d_'43''45''42''45'isRing_2522)
      (\ v0 v1 -> coe du_'42''45'comm_1784)
-- Data.Rational.Unnormalised.Properties.+-*-isHeytingCommutativeRing
d_'43''45''42''45'isHeytingCommutativeRing_2526 ::
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingCommutativeRing_162
d_'43''45''42''45'isHeytingCommutativeRing_2526
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.C_constructor_466
      (coe d_'43''45''42''45'isCommutativeRing_2524)
      (coe d_'8772''45'isApartnessRelation_266)
      (\ v0 v1 v2 -> coe du_'8772''8658'invertible_1842 v0 v1) erased
-- Data.Rational.Unnormalised.Properties.+-*-isHeytingField
d_'43''45''42''45'isHeytingField_2528 ::
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingField_468
d_'43''45''42''45'isHeytingField_2528
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.C_constructor_620
      (coe d_'43''45''42''45'isHeytingCommutativeRing_2526)
      (coe d_'8772''45'tight_268)
-- Data.Rational.Unnormalised.Properties.*-magma
d_'42''45'magma_2530 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'42''45'magma_2530
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      d_'42''45'isMagma_2514
-- Data.Rational.Unnormalised.Properties.*-semigroup
d_'42''45'semigroup_2532 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'42''45'semigroup_2532
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      d_'42''45'isSemigroup_2516
-- Data.Rational.Unnormalised.Properties.*-1-monoid
d_'42''45'1'45'monoid_2534 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'1'45'monoid_2534
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116
      d_'42''45'1'45'isMonoid_2518
-- Data.Rational.Unnormalised.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_2536 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'1'45'commutativeMonoid_2536
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116
      d_'42''45'1'45'isCommutativeMonoid_2520
-- Data.Rational.Unnormalised.Properties.+-*-ring
d_'43''45''42''45'ring_2538 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096
d_'43''45''42''45'ring_2538
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4308
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116
      d_'43''45''42''45'isRing_2522
-- Data.Rational.Unnormalised.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_2540 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
d_'43''45''42''45'commutativeRing_2540
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4540
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116
      d_'43''45''42''45'isCommutativeRing_2524
-- Data.Rational.Unnormalised.Properties.+-*-heytingCommutativeRing
d_'43''45''42''45'heytingCommutativeRing_2542 ::
  MAlonzo.Code.Algebra.Apartness.Bundles.T_HeytingCommutativeRing_12
d_'43''45''42''45'heytingCommutativeRing_2542
  = coe
      MAlonzo.Code.Algebra.Apartness.Bundles.C_constructor_202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116
      d_'43''45''42''45'isHeytingCommutativeRing_2526
-- Data.Rational.Unnormalised.Properties.+-*-heytingField
d_'43''45''42''45'heytingField_2544 ::
  MAlonzo.Code.Algebra.Apartness.Bundles.T_HeytingField_210
d_'43''45''42''45'heytingField_2544
  = coe
      MAlonzo.Code.Algebra.Apartness.Bundles.C_constructor_404
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116
      d_'43''45''42''45'isHeytingField_2528
-- Data.Rational.Unnormalised.Properties.p>1⇒p≢0
d_p'62'1'8658'p'8802'0_2546 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_p'62'1'8658'p'8802'0_2546 v0 ~v1
  = du_p'62'1'8658'p'8802'0_2546 v0
du_p'62'1'8658'p'8802'0_2546 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_p'62'1'8658'p'8802'0_2546 v0
  = coe du_pos'8658'nonZero_994 (coe v0)
-- Data.Rational.Unnormalised.Properties.1/nonZero⇒nonZero
d_1'47'nonZero'8658'nonZero_2556 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_1'47'nonZero'8658'nonZero_2556 v0 ~v1
  = du_1'47'nonZero'8658'nonZero_2556 v0
du_1'47'nonZero'8658'nonZero_2556 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_1'47'nonZero'8658'nonZero_2556 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_constructor_120
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.1/-involutive-≡
d_1'47''45'involutive'45''8801'_2562 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'47''45'involutive'45''8801'_2562 = erased
-- Data.Rational.Unnormalised.Properties.1/-involutive
d_1'47''45'involutive_2576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_1'47''45'involutive_2576 ~v0 ~v1 = du_1'47''45'involutive_2576
du_1'47''45'involutive_2576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_1'47''45'involutive_2576 = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.1/pos⇒pos
d_1'47'pos'8658'pos_2584 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_1'47'pos'8658'pos_2584 v0 ~v1 = du_1'47'pos'8658'pos_2584 v0
du_1'47'pos'8658'pos_2584 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_1'47'pos'8658'pos_2584 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_constructor_182
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.1/neg⇒neg
d_1'47'neg'8658'neg_2594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210
d_1'47'neg'8658'neg_2594 v0 ~v1 = du_1'47'neg'8658'neg_2594 v0
du_1'47'neg'8658'neg_2594 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210
du_1'47'neg'8658'neg_2594 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_constructor_218
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Unnormalised.Properties.p>1⇒1/p<1
d_p'62'1'8658'1'47'p'60'1_2604 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_p'62'1'8658'1'47'p'60'1_2604 v0 v1
  = coe du_lemma'8242'_2618 (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties._.lemma′
d_lemma'8242'_2618 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_lemma'8242'_2618 ~v0 ~v1 v2 ~v3 v4 = du_lemma'8242'_2618 v2 v4
du_lemma'8242'_2618 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_lemma'8242'_2618 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v6
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                                (coe v0)))
                          (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                          (\ v7 v8 v9 v10 v11 -> v11)
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe addInt (coe (1 :: Integer)) (coe v3))
                             (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)
                             (coe addInt (coe (1 :: Integer)) (coe v3)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_314
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                (\ v7 v8 v9 v10 v11 ->
                                   coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_3344 v10
                                     v11)
                                (coe
                                   MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_164)
                                (\ v7 v8 v9 v10 v11 ->
                                   coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_3330
                                     v10 v11))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)
                                (coe addInt (coe (1 :: Integer)) (coe v3)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe v2) (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                (\ v7 v8 v9 v10 v11 -> v11)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe v2) (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16) (coe v2))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                      (coe
                                         MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                                            (coe v0)))))
                                erased)
                             v6)
                          erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.1/-antimono-≤-pos
d_1'47''45'antimono'45''8804''45'pos_2638 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_1'47''45'antimono'45''8804''45'pos_2638 v0 v1 ~v2 ~v3 v4
  = du_1'47''45'antimono'45''8804''45'pos_2638 v0 v1 v4
du_1'47''45'antimono'45''8804''45'pos_2638 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_1'47''45'antimono'45''8804''45'pos_2638 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_578 v5))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
         (coe v1))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
         (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
            (coe d_'8804''45'isPreorder_530)
            (coe d_'60''45'resp'45''8771'_802))
         (\ v3 v4 v5 -> coe du_'8771''45'sym_172 v5)
         (coe du_1'47'q_2656 v1 erased)
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116)
            (coe du_1'47'q_2656 v1 erased))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_392
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe d_'8804''45'isPreorder_530)
               (coe d_'60''45'resp'45''8771'_802))
            (\ v3 v4 v5 -> coe du_'8771''45'sym_172 v5)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116)
               (coe du_1'47'q_2656 v1 erased))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe du_1'47'p_2654 v0 erased) (coe v0))
               (coe du_1'47'q_2656 v1 erased))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
               (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_530)
                  (coe d_'8804''45''60''45'trans_632))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe du_1'47'p_2654 v0 erased) (coe v0))
                  (coe du_1'47'q_2656 v1 erased))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe du_1'47'p_2654 v0 erased) (coe v1))
                  (coe du_1'47'q_2656 v1 erased))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                  (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe d_'8804''45'isPreorder_530)
                     (coe d_'60''45'resp'45''8771'_802))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe du_1'47'p_2654 v0 erased) (coe v1))
                     (coe du_1'47'q_2656 v1 erased))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                     (coe du_1'47'p_2654 v0 erased)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                        (coe du_1'47'q_2656 v1 erased)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                     (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe d_'8804''45'isPreorder_530)
                        (coe d_'60''45'resp'45''8771'_802))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe du_1'47'p_2654 v0 erased)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe du_1'47'q_2656 v1 erased)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe du_1'47'p_2654 v0 erased)
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                        (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_390
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe d_'8804''45'isPreorder_530)
                           (coe d_'60''45'resp'45''8771'_802))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                           (coe du_1'47'p_2654 v0 erased)
                           (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116))
                        (coe du_1'47'p_2654 v0 erased)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                           (coe v0))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_530))
                           (coe du_1'47'p_2654 v0 erased))
                        (coe du_'42''45'identity'691'_1802))
                     (d_'42''45'cong'737'_1722
                        (coe du_1'47'p_2654 v0 erased)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v1)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                              (coe v1)))
                        (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116)
                        (coe du_'42''45'inverse'691'_1838 (coe v1))))
                  (coe du_'42''45'assoc_1758))
               (coe
                  du_'42''45'mono'737''45''8804''45'nonNeg_2172
                  (coe du_1'47'q_2656 v1 erased)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe du_1'47'p_2654 v0 erased))
                     (\ v3 v4 -> v3) v0 v1)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v3 v4 -> v4)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                        (coe du_1'47'p_2654 v0 erased))
                     v0 v1)
                  (coe
                     du_'42''45'mono'691''45''8804''45'nonNeg_2202
                     (coe du_1'47'p_2654 v0 erased) v0 v1 v2)))
            (d_'42''45'cong'691'_1728
               (coe du_1'47'q_2656 v1 erased)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224
                     (coe v0))
                  (coe v0))
               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_1ℚ'7512'_116)
               (coe du_'42''45'inverse'737'_1812 (coe v0))))
         (coe du_'42''45'identity'737'_1798))
-- Data.Rational.Unnormalised.Properties._.1/p
d_1'47'p_2654 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_1'47'p_2654 v0 ~v1 ~v2 ~v3 ~v4 = du_1'47'p_2654 v0
du_1'47'p_2654 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
du_1'47'p_2654 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224 (coe v0)
-- Data.Rational.Unnormalised.Properties._.1/q
d_1'47'q_2656 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_1'47'q_2656 ~v0 v1 ~v2 ~v3 ~v4 = du_1'47'q_2656 v1
du_1'47'q_2656 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
du_1'47'q_2656 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.du_1'47'__224 (coe v0)
-- Data.Rational.Unnormalised.Properties.p≤q⇒p⊔q≃q
d_p'8804'q'8658'p'8852'q'8771'q_2662 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8804'q'8658'p'8852'q'8771'q_2662 v0 v1 ~v2
  = du_p'8804'q'8658'p'8852'q'8771'q_2662 v0 v1
du_p'8804'q'8658'p'8852'q'8771'q_2662 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_p'8804'q'8658'p'8852'q'8771'q_2662 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
               -> let v6
                        = MAlonzo.Code.Data.Integer.Base.d__'8804''7495'__132
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                               (coe
                                  MAlonzo.Code.Data.Sign.Base.d__'42'__14
                                  (coe MAlonzo.Code.Data.Integer.Base.d_sign_24 (coe v2))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1))))
                               (coe
                                  mulInt
                                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v2))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1)))))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                               (coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                  (coe v0))) in
                  coe
                    (if coe v6
                       then coe du_'8771''45'refl_168
                       else coe
                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.p≥q⇒p⊔q≃p
d_p'8805'q'8658'p'8852'q'8771'p_2688 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8805'q'8658'p'8852'q'8771'p_2688 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> let v7
                        = MAlonzo.Code.Data.Integer.Base.d__'8804''7495'__132
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                               (coe
                                  MAlonzo.Code.Data.Sign.Base.d__'42'__14
                                  (coe MAlonzo.Code.Data.Integer.Base.d_sign_24 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1))))
                               (coe
                                  mulInt
                                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1)))))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                               (coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                  (coe v0))) in
                  coe
                    (if coe v7
                       then coe
                              du_'8804''45'antisym_492 (coe v2)
                              (coe
                                 du_'8804''7495''8658''8804'_566 (coe v0)
                                 (coe
                                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v7)
                                    (coe v1) (coe v0)))
                       else coe du_'8771''45'refl_168)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.p≤q⇒p⊓q≃p
d_p'8804'q'8658'p'8851'q'8771'p_2714 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8804'q'8658'p'8851'q'8771'p_2714 v0 v1 ~v2
  = du_p'8804'q'8658'p'8851'q'8771'p_2714 v0 v1
du_p'8804'q'8658'p'8851'q'8771'p_2714 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_p'8804'q'8658'p'8851'q'8771'p_2714 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
               -> let v6
                        = MAlonzo.Code.Data.Integer.Base.d__'8804''7495'__132
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                               (coe
                                  MAlonzo.Code.Data.Sign.Base.d__'42'__14
                                  (coe MAlonzo.Code.Data.Integer.Base.d_sign_24 (coe v2))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1))))
                               (coe
                                  mulInt
                                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v2))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1)))))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                               (coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                  (coe v0))) in
                  coe
                    (if coe v6
                       then coe du_'8771''45'refl_168
                       else coe
                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.p≥q⇒p⊓q≃q
d_p'8805'q'8658'p'8851'q'8771'q_2740 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_p'8805'q'8658'p'8851'q'8771'q_2740 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v5 v6
               -> let v7
                        = MAlonzo.Code.Data.Integer.Base.d__'8804''7495'__132
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                               (coe
                                  MAlonzo.Code.Data.Sign.Base.d__'42'__14
                                  (coe MAlonzo.Code.Data.Integer.Base.d_sign_24 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1))))
                               (coe
                                  mulInt
                                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                        (coe v1)))))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                               (coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                  (coe v0))) in
                  coe
                    (if coe v7
                       then coe
                              du_'8804''45'antisym_492
                              (coe
                                 du_'8804''7495''8658''8804'_566
                                 (coe
                                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v7)
                                    (coe v0) (coe v1))
                                 (coe v1))
                              (coe v2)
                       else coe du_'8771''45'refl_168)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.⊓-operator
d_'8851''45'operator_2766 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106
d_'8851''45'operator_2766
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_constructor_136
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260)
      (\ v0 v1 v2 -> coe du_p'8804'q'8658'p'8851'q'8771'p_2714 v0 v1)
      (coe d_p'8805'q'8658'p'8851'q'8771'q_2740)
-- Data.Rational.Unnormalised.Properties.⊔-operator
d_'8852''45'operator_2768 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_138
d_'8852''45'operator_2768
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_constructor_168
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250)
      (\ v0 v1 v2 -> coe du_p'8804'q'8658'p'8852'q'8771'q_2662 v0 v1)
      (coe d_p'8805'q'8658'p'8852'q'8771'p_2688)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_2772 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8851'_2772
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8851'_3590
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_2774 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8852'_2774
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8852'_3636
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_2776 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8851'_2776
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_3466
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_2778 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8852'_2778
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_190
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_2780 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'x_2780
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_2782 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'x'8851'z'8804'y_2782
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_2784 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'z'8851'x'8804'y_2784
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_2786 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'x'8851'z'8804'y_2786
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3512
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_2788 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8658'z'8851'x'8804'y_2788
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3524
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_2790 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'y_2790
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_2792 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'z_2792
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_2794 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'y_2794
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2796 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'x'8658'x'8804'y_2796
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2798 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'y'8658'y'8804'x_2798
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_2800 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'x_2800
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_2802 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'x'8852'y_2802
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3680
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_2804 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8804'y_2804
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2806 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'x'8658'x'8804'y_2806
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3420
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2808 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8851'y'8776'y'8658'y'8804'x_2808
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3452
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_2810 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'y_2810
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3536
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_2812 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_x'8804'y'8851'z'8658'x'8804'z_2812
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3550
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_2814 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'absorbs'45''8852'_2814
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'absorbs'45''8852'_3534
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_2816 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'assoc_2816
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_3296
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_2818 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_2818
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_2820 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'comm_2820
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2822 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_2822
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_2824 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong_2824
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_3282
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_2826 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'691'_2826
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_3272
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_2828 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'737'_2828
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_2830 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_2830
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3500
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_2832 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'distrib'691''45''8852'_2832
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'691''45''8852'_3498
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_2834 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'distrib'737''45''8852'_2834
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'737''45''8852'_3470
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_2836 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'glb_2836
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_2838 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'idem_2838
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3336
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_2840 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_2840 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 ->
            d_p'8805'q'8658'p'8851'q'8771'q_2740
              (coe v0) (coe v2) (coe v1 v2)))
      (coe
         (\ v2 ->
            coe du_p'8804'q'8658'p'8851'q'8771'p_2714 (coe v2) (coe v0)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_2842 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'identity'691'_2842 v0 ~v1 v2
  = du_'8851''45'identity'691'_2842 v0 v2
du_'8851''45'identity'691'_2842 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8851''45'identity'691'_2842 v0 v1
  = coe du_p'8804'q'8658'p'8851'q'8771'p_2714 (coe v1) (coe v0)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_2844 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'identity'737'_2844 v0 v1 v2
  = coe
      d_p'8805'q'8658'p'8851'q'8771'q_2740 (coe v0) (coe v2) (coe v1 v2)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_2846 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_2846
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2848 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_2848
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_2850 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_2850
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_2852 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_2852
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2854 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_2854
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_2856 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_2856
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_2858 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_2858
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_2860 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'45''8804'_2860
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_2862 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_2862
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_2864 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'691''45''8804'_2864
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_2866 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'737''45''8804'_2866
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-rawMagma
d_'8851''45'rawMagma_2868 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8851''45'rawMagma_2868
  = let v0 = d_'8851''45'operator_2766 in
    coe
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_3398
         (coe v0))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_2870 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2870
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2872 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_2872
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_2874 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_2874
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_2876 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'triangulate_2876
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3644
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_2878 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_2878 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 ->
            coe du_p'8804'q'8658'p'8851'q'8771'p_2714 (coe v0) (coe v2)))
      (coe
         (\ v2 ->
            d_p'8805'q'8658'p'8851'q'8771'q_2740
              (coe v2) (coe v0) (coe v1 v2)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_2880 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'zero'691'_2880 v0 v1 v2
  = coe
      d_p'8805'q'8658'p'8851'q'8771'q_2740 (coe v2) (coe v0) (coe v1 v2)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_2882 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'zero'737'_2882 v0 ~v1 v2
  = du_'8851''45'zero'737'_2882 v0 v2
du_'8851''45'zero'737'_2882 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8851''45'zero'737'_2882 v0 v1
  = coe du_p'8804'q'8658'p'8851'q'8771'p_2714 (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_2884 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_2884
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3580
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_2886 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8852''45'absorbs'45''8851'_2886
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'absorbs'45''8851'_3556
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_2888 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'assoc_2888
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_3296
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_2890 :: MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_2890
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3404
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_2892 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'comm_2892
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_3208
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2894 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_2894
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3406
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-cong
d_'8851''45'cong_2896 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong_2896
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_3282
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congʳ
d_'8851''45'cong'691'_2898 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'691'_2898
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_3272
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-congˡ
d_'8851''45'cong'737'_2900 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'cong'737'_2900
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_3234
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_2902 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_2902
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3532
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_2904 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8852''45'distrib'691''45''8851'_2904
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'691''45''8851'_3530
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_2906 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8852''45'distrib'737''45''8851'_2906
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'737''45''8851'_3502
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_2908 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'idem_2908
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_3336
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-identity
d_'8851''45'identity_2910 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_2910
  = let v0 = d_'8852''45'operator_2768 in
    coe
      (coe
         (\ v1 v2 ->
            coe
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
                      v0 v3 v1 (coe v2 v3)))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-identityʳ
d_'8851''45'identity'691'_2912 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'identity'691'_2912
  = let v0 = d_'8852''45'operator_2768 in
    coe
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
              v0 v3 v1 (coe v2 v3)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-identityˡ
d_'8851''45'identity'737'_2914 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'identity'737'_2914
  = let v0 = d_'8852''45'operator_2768 in
    coe
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
              v0 v1 v3 (coe v2 v3)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_2916 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_2916
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3386
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2918 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_2918
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3388
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_2920 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_2920
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3382
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isMonoid
d_'8851''45'isMonoid_2922 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_2922
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_3394
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2924 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_2924
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3390
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_2926 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_2926
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3384
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_2928 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'glb_2928
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3630
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_2930 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_2930
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_2932 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'45''8804'_2932
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3558
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoid
d_'8851''45'monoid_2934 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_2934
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_3412
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_2936 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'691''45''8804'_2936
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3618
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_2938 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8851''45'mono'737''45''8804'_2938
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3608
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_2940 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2940
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3340
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2942 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_2942
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3408
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_2944 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_2944
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3402
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_2946 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'triangulate_2946
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_3644
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-zero
d_'8851''45'zero_2948 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_2948
  = let v0 = d_'8852''45'operator_2768 in
    coe
      (coe
         (\ v1 v2 ->
            coe
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
                      v0 v3 v1 (coe v2 v3)))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-zeroʳ
d_'8851''45'zero'691'_2950 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'zero'691'_2950
  = let v0 = d_'8852''45'operator_2768 in
    coe
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_160
              v0 v3 v1 (coe v2 v3)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊓-zeroˡ
d_'8851''45'zero'737'_2952 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8851''45'zero'737'_2952
  = let v0 = d_'8852''45'operator_2768 in
    coe
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_166
              v0 v1 v3 (coe v2 v3)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_2954 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_2954
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3578
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_2958 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8851''45'isSemilattice_2958
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_616
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_2960 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_2960
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8851''45'operator_2766 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_618
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_2962 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8851''45''8852''45'distributiveLattice_2962
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_822
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_2964 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8851''45''8852''45'isDistributiveLattice_2964
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_812
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_2966 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8851''45''8852''45'isLattice_2966
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_810
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_2968 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8851''45''8852''45'lattice_2968
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_818
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_2970 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8851''45'isSemilattice_2970
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_616
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_2972 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_2972
  = let v0 = d_'8804''45'totalPreorder_542 in
    coe
      (let v1 = d_'8852''45'operator_2768 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_618
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_2974 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8852''45''8851''45'distributiveLattice_2974
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_820
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_2976 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8852''45''8851''45'isDistributiveLattice_2976
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_814
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_2978 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8852''45''8851''45'isLattice_2978
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_808
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_2980 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8852''45''8851''45'lattice_2980
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_816
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768)
-- Data.Rational.Unnormalised.Properties.⊓-rawMagma
d_'8851''45'rawMagma_2982 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8851''45'rawMagma_2982
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawMagma_118
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
         (coe d_'8804''45'totalPreorder_542)
         (coe d_'8851''45'operator_2766))
-- Data.Rational.Unnormalised.Properties.⊔-rawMagma
d_'8852''45'rawMagma_2984 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8852''45'rawMagma_2984
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawMagma_118
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3400
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe d_'8804''45'totalPreorder_542))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
            (coe d_'8852''45'operator_2768)))
-- Data.Rational.Unnormalised.Properties.⊔-⊓-rawLattice
d_'8852''45''8851''45'rawLattice_2986 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.Raw.T_RawLattice_12
d_'8852''45''8851''45'rawLattice_2986
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.du_rawLattice_578
      (coe
         MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_816
         (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
         (coe d_'8852''45'operator_2768))
-- Data.Rational.Unnormalised.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_2994 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8852'_2994 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_190
      (coe d_'8804''45'totalPreorder_542) (coe d_'8852''45'operator_2768)
      (coe v0) (coe d_mono'8658'cong_560 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_3004 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_mono'45''8804''45'distrib'45''8851'_3004 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_3466
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe v0) (coe d_mono'8658'cong_560 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_3014 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8851'_3014 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8851'_3590
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768) (coe v0)
      (coe d_antimono'8658'cong_564 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_3024 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_antimono'45''8804''45'distrib'45''8852'_3024 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_antimono'45''8804''45'distrib'45''8852'_3636
      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
      (coe d_'8852''45'operator_2768) (coe v0)
      (coe d_antimono'8658'cong_564 v0 v1) (coe v1)
-- Data.Rational.Unnormalised.Properties.neg-distrib-⊔-⊓
d_neg'45'distrib'45''8852''45''8851'_3032 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'45''8852''45''8851'_3032
  = coe
      d_antimono'45''8804''45'distrib'45''8852'_3024
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196)
      (coe d_neg'45'mono'45''8804'_1572)
-- Data.Rational.Unnormalised.Properties.neg-distrib-⊓-⊔
d_neg'45'distrib'45''8851''45''8852'_3038 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_neg'45'distrib'45''8851''45''8852'_3038
  = coe
      d_antimono'45''8804''45'distrib'45''8851'_3014
      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196)
      (coe d_neg'45'mono'45''8804'_1572)
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_3048 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8851''45'nonNeg_3048 v0 ~v1
  = du_'42''45'distrib'737''45''8851''45'nonNeg_3048 v0
du_'42''45'distrib'737''45''8851''45'nonNeg_3048 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8851''45'nonNeg_3048 v0
  = coe
      d_mono'45''8804''45'distrib'45''8851'_3004
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonNeg_2202 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_3060 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8851''45'nonNeg_3060 v0 ~v1
  = du_'42''45'distrib'691''45''8851''45'nonNeg_3060 v0
du_'42''45'distrib'691''45''8851''45'nonNeg_3060 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8851''45'nonNeg_3060 v0
  = coe
      d_mono'45''8804''45'distrib'45''8851'_3004
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonNeg_2172 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_3072 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8852''45'nonNeg_3072 v0 ~v1
  = du_'42''45'distrib'737''45''8852''45'nonNeg_3072 v0
du_'42''45'distrib'737''45''8852''45'nonNeg_3072 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8852''45'nonNeg_3072 v0
  = coe
      d_mono'45''8804''45'distrib'45''8852'_2994
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonNeg_2202 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_3084 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8852''45'nonNeg_3084 v0 ~v1
  = du_'42''45'distrib'691''45''8852''45'nonNeg_3084 v0
du_'42''45'distrib'691''45''8852''45'nonNeg_3084 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8852''45'nonNeg_3084 v0
  = coe
      d_mono'45''8804''45'distrib'45''8852'_2994
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonNeg_2172 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_3096 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8852''45'nonPos_3096 v0 ~v1
  = du_'42''45'distrib'737''45''8852''45'nonPos_3096 v0
du_'42''45'distrib'737''45''8852''45'nonPos_3096 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8852''45'nonPos_3096 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8852'_3024
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonPos_2276 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_3108 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8852''45'nonPos_3108 v0 ~v1
  = du_'42''45'distrib'691''45''8852''45'nonPos_3108 v0
du_'42''45'distrib'691''45''8852''45'nonPos_3108 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8852''45'nonPos_3108 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8852'_3024
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonPos_2254 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_3120 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'737''45''8851''45'nonPos_3120 v0 ~v1
  = du_'42''45'distrib'737''45''8851''45'nonPos_3120 v0
du_'42''45'distrib'737''45''8851''45'nonPos_3120 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'737''45''8851''45'nonPos_3120 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8851'_3014
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208 (coe v0))
      (coe du_'42''45'mono'691''45''8804''45'nonPos_2276 (coe v0))
-- Data.Rational.Unnormalised.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_3132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'42''45'distrib'691''45''8851''45'nonPos_3132 v0 ~v1
  = du_'42''45'distrib'691''45''8851''45'nonPos_3132 v0
du_'42''45'distrib'691''45''8851''45'nonPos_3132 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'42''45'distrib'691''45''8851''45'nonPos_3132 v0
  = coe
      d_antimono'45''8804''45'distrib'45''8851'_3014
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__208
              (coe v1) (coe v0)))
      (coe du_'42''45'mono'737''45''8804''45'nonPos_2254 (coe v0))
-- Data.Rational.Unnormalised.Properties.⊓-mono-<
d_'8851''45'mono'45''60'_3136 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8851''45'mono'45''60'_3136 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe du_p'8804'q'8658'p'8851'q'8771'p_2714 (coe v1) (coe v3))))
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                      (coe
                         d_p'8805'q'8658'p'8851'q'8771'q_2740 (coe v1) (coe v3) (coe v6))))
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                 (coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                         (coe
                            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                            v6)))
                 (coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                         (coe
                            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                            v6)))
                 (coe
                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_3098
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                       (coe
                          MAlonzo.Code.Data.Sign.Base.d__'42'__14
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_sign_24
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe v1)))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_sign_24
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v3))))
                       (coe
                          mulInt
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe v1)))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v3)))))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                          (coe v3))
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                          (coe v1))))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                d_'60''45'resp'691''45''8771'_756
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
                   (coe v0) (coe v2))
                (coe v1)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
                   (coe v1) (coe v3))
                (coe du_'8771''45'sym_172 (coe v7))
                (coe
                   d_'8804''45''60''45'trans_632
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
                      (coe v0) (coe v2))
                   (coe v0) (coe v1)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
                      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
                      (coe v0) (coe v2))
                   (coe v4))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                d_'60''45'resp'691''45''8771'_756
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
                   (coe v0) (coe v2))
                (coe v3)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
                   (coe v1) (coe v3))
                (coe du_'8771''45'sym_172 (coe v7))
                (coe
                   d_'8804''45''60''45'trans_632
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
                      (coe v0) (coe v2))
                   (coe v2) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
                      (coe d_'8804''45'totalPreorder_542) (coe d_'8851''45'operator_2766)
                      (coe v0) (coe v2))
                   (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.⊔-mono-<
d_'8852''45'mono'45''60'_3182 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'8852''45'mono'45''60'_3182 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe
                         d_p'8805'q'8658'p'8852'q'8771'p_2688 (coe v0) (coe v2) (coe v6))))
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                      (coe du_p'8804'q'8658'p'8852'q'8771'q_2662 (coe v0) (coe v2))))
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                 (coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                         (coe
                            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                            v6)))
                 (coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                         (coe
                            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                            v6)))
                 (coe
                    MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_3098
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'9667'__26
                       (coe
                          MAlonzo.Code.Data.Sign.Base.d__'42'__14
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_sign_24
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe v2)))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_sign_24
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v0))))
                       (coe
                          mulInt
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe v2)))
                          (coe
                             MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe v0)))))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'42'__334
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                          (coe v0))
                       (coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                          (coe v2))))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                d_'60''45'resp'737''45''8771'_792
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
                   (coe v1) (coe v3))
                (coe v0)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
                   (coe v0) (coe v2))
                (coe du_'8771''45'sym_172 (coe v7))
                (coe
                   d_'60''45''8804''45'trans_666 (coe v0) (coe v1)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
                      (coe v1) (coe v3))
                   (coe v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_3160
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                         (coe d_'8804''45'totalPreorder_542))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                         (coe d_'8852''45'operator_2768))
                      (coe v1) (coe v3)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                d_'60''45'resp'737''45''8771'_792
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
                   (coe v1) (coe v3))
                (coe v2)
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
                   (coe v0) (coe v2))
                (coe du_'8771''45'sym_172 (coe v7))
                (coe
                   d_'60''45''8804''45'trans_666 (coe v2) (coe v3)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
                      (coe v1) (coe v3))
                   (coe v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_3186
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                         (coe d_'8804''45'totalPreorder_542))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_186
                         (coe d_'8852''45'operator_2768))
                      (coe v1) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.pos⊓pos⇒pos
d_pos'8851'pos'8658'pos_3236 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_pos'8851'pos'8658'pos_3236 v0 ~v1 v2 ~v3
  = du_pos'8851'pos'8658'pos_3236 v0 v2
du_pos'8851'pos'8658'pos_3236 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_pos'8851'pos'8658'pos_3236 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8851'__260
         (coe v0) (coe v1))
      (coe
         d_'8851''45'mono'45''60'_3136
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v1) (coe du_positive'8315''185'_948 (coe v0))
         (coe du_positive'8315''185'_948 (coe v1)))
-- Data.Rational.Unnormalised.Properties.pos⊔pos⇒pos
d_pos'8852'pos'8658'pos_3250 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_pos'8852'pos'8658'pos_3250 v0 ~v1 v2 ~v3
  = du_pos'8852'pos'8658'pos_3250 v0 v2
du_pos'8852'pos'8658'pos_3250 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174
du_pos'8852'pos'8658'pos_3250 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'8852'__250
         (coe v0) (coe v1))
      (coe
         d_'8852''45'mono'45''60'_3182
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe (0 :: Integer)) (coe (0 :: Integer)))
         (coe v1) (coe du_positive'8315''185'_948 (coe v0))
         (coe du_positive'8315''185'_948 (coe v1)))
-- Data.Rational.Unnormalised.Properties.∣-∣-cong
d_'8739''45''8739''45'cong_3256 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739''45''8739''45'cong_3256 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> coe
             seq (coe v3)
             (coe
                seq (coe v1)
                (coe
                   seq (coe v2)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣p∣≃0⇒p≃0
d_'8739'p'8739''8771'0'8658'p'8771'0_3284 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739'p'8739''8771'0'8658'p'8771'0_3284 v0 v1
  = coe seq (coe v0) (coe v1)
-- Data.Rational.Unnormalised.Properties.0≤∣p∣
d_0'8804''8739'p'8739'_3298 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_0'8804''8739'p'8739'_3298 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                   (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣-p∣≡∣p∣
d_'8739''45'p'8739''8801''8739'p'8739'_3302 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'p'8739''8801''8739'p'8739'_3302 = erased
-- Data.Rational.Unnormalised.Properties.∣-p∣≃∣p∣
d_'8739''45'p'8739''8771''8739'p'8739'_3316 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739''45'p'8739''8771''8739'p'8739'_3316 ~v0
  = du_'8739''45'p'8739''8771''8739'p'8739'_3316
du_'8739''45'p'8739''8771''8739'p'8739'_3316 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8739''45'p'8739''8771''8739'p'8739'_3316
  = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.0≤p⇒∣p∣≡p
d_0'8804'p'8658''8739'p'8739''8801'p_3318 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'p'8658''8739'p'8739''8801'p_3318 = erased
-- Data.Rational.Unnormalised.Properties.0≤p⇒∣p∣≃p
d_0'8804'p'8658''8739'p'8739''8771'p_3332 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_0'8804'p'8658''8739'p'8739''8771'p_3332 ~v0 ~v1
  = du_0'8804'p'8658''8739'p'8739''8771'p_3332
du_0'8804'p'8658''8739'p'8739''8771'p_3332 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_0'8804'p'8658''8739'p'8739''8771'p_3332
  = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.∣p∣≡p⇒0≤p
d_'8739'p'8739''8801'p'8658'0'8804'p_3336 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'8739''8801'p'8658'0'8804'p_3336 v0 ~v1
  = du_'8739'p'8739''8801'p'8658'0'8804'p_3336 v0
du_'8739'p'8739''8801'p'8658'0'8804'p_3336 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'8739'p'8739''8801'p'8658'0'8804'p_3336 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe
                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                   (\ v3 v4 v5 ->
                      coe
                        MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204 v5))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114))
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                      (coe v0)))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                   (coe v1)
                   (coe
                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                      (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                   (\ v3 v4 v5 v6 v7 -> v7)
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                      (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)
                      (coe addInt (coe (1 :: Integer)) (coe v2)))
                   MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                      (coe v1)
                      (coe
                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                         (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe
                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                              v6 v7))
                      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12 v1
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                         (coe v1)
                         (coe
                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                            (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                         (\ v3 v4 v5 v6 v7 -> v7) v1
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe v1) (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                            (coe v1)
                            (coe
                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                               (coe MAlonzo.Code.Data.Rational.Unnormalised.Base.d_0ℚ'7512'_114)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe
                                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v1)
                               (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
                         erased)
                      (coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣p∣≡p∨∣p∣≡-p
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_3350 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_3350 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
             _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.∣p∣≃p⇒0≤p
d_'8739'p'8739''8771'p'8658'0'8804'p_3360 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'8739''8771'p'8658'0'8804'p_3360 v0 v1
  = let v2
          = d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_3350
              (coe v0) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_'8739'p'8739''8801'p'8658'0'8804'p_3336 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                d_'8804''45'reflexive_450
                (coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
                   (coe (0 :: Integer)) (coe (0 :: Integer)))
                (coe v0)
                (coe
                   du_'8771''45'sym_172
                   (coe
                      d_p'8771''45'p'8658'p'8771'0_1298 (coe v0)
                      (coe du_'8771''45'sym_172 (coe v1))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Unnormalised.Properties.∣p+q∣≤∣p∣+∣q∣
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3390 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3390 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                          (coe
                             MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                          (\ v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_3204 v8))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                   (coe v0) (coe v1))))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                   (coe v1)))))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                   (coe v1))))
                          (coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                   (coe v0) (coe v1)))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                          (\ v6 v7 v8 v9 v10 -> v10)
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.du__'47'__108
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                         (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5))
                                         (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))
                                   (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5))))
                             (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                   (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5))
                                   (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))
                             (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                          (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                      (coe v1))))
                             (coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                      (coe v0) (coe v1)))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                (coe
                                   MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144)
                                (\ v6 v7 v8 v9 v10 ->
                                   coe
                                     MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3316
                                     v9 v10))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                      (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5))
                                      (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))
                                (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5)))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))
                                (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                             (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                         (coe v1))))
                                (coe
                                   MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                         (coe v0) (coe v1)))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
                                (\ v6 v7 v8 v9 v10 -> v10)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                         (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5)))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                         (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))
                                   (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                      (coe
                                         du_'8739''8613'p'8739''8615'q_3408 (coe v2) (coe v4)
                                         (coe v5))
                                      (coe
                                         du_'8739''8613'q'8739''8615'p_3410 (coe v2) (coe v3)
                                         (coe v4)))
                                   (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                            (coe v1))))
                                   (coe
                                      MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                            (coe v0) (coe v1)))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                   (\ v6 v7 v8 v9 v10 -> v10)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                         (coe
                                            d_'8613''8739'p'8739''8615'q_3404 (coe v2) (coe v3)
                                            (coe v4) (coe v5))
                                         (coe
                                            d_'8613''8739'q'8739''8615'p_3406 (coe v2) (coe v3)
                                            (coe v4) (coe v5)))
                                      (coe
                                         d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.du__'47'__108
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                               (coe
                                                  d_'8613''8739'p'8739''8615'q_3404 (coe v2)
                                                  (coe v3) (coe v4) (coe v5))
                                               (coe
                                                  d_'8613''8739'q'8739''8615'p_3406 (coe v2)
                                                  (coe v3) (coe v4) (coe v5)))
                                            (coe
                                               d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4)
                                               (coe v5))))
                                      (coe
                                         d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5)))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                               (coe v1))))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                               (coe v0) (coe v1)))))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_3144))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__334
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
                                            (coe
                                               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                                                  (coe v0) (coe v1))))))
                                   erased)
                                erased)
                             (coe
                                MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_6370
                                (coe d_'8615'p'8615'q_3412 (coe v2) (coe v3) (coe v4) (coe v5))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'43'__302
                                      (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5))
                                      (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))
                                (coe
                                   addInt
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4)))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                      (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5))))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_70
                                   (MAlonzo.Code.Data.Integer.Properties.d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_4220
                                      (coe du_'8613'p'8615'q_3400 (coe v2) (coe v4) (coe v5))
                                      (coe du_'8613'q'8615'p_3402 (coe v2) (coe v3) (coe v4))))))
                          erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties._.↥p↧q
d_'8613'p'8615'q_3400 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613'p'8615'q_3400 v0 ~v1 v2 v3
  = du_'8613'p'8615'q_3400 v0 v2 v3
du_'8613'p'8615'q_3400 :: Integer -> Integer -> Integer -> Integer
du_'8613'p'8615'q_3400 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v1) (coe v2)))
-- Data.Rational.Unnormalised.Properties._.↥q↧p
d_'8613'q'8615'p_3402 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613'q'8615'p_3402 v0 v1 v2 ~v3
  = du_'8613'q'8615'p_3402 v0 v1 v2
du_'8613'q'8615'p_3402 :: Integer -> Integer -> Integer -> Integer
du_'8613'q'8615'p_3402 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.↥∣p∣↧q
d_'8613''8739'p'8739''8615'q_3404 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613''8739'p'8739''8615'q_3404 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
               (coe v0) (coe v1))))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v2) (coe v3)))
-- Data.Rational.Unnormalised.Properties._.↥∣q∣↧p
d_'8613''8739'q'8739''8615'p_3406 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8613''8739'q'8739''8615'p_3406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_numerator_14
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
               (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.∣↥p∣↧q
d_'8739''8613'p'8739''8615'q_3408 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8739''8613'p'8739''8615'q_3408 v0 ~v1 v2 v3
  = du_'8739''8613'p'8739''8615'q_3408 v0 v2 v3
du_'8739''8613'p'8739''8615'q_3408 ::
  Integer -> Integer -> Integer -> Integer
du_'8739''8613'p'8739''8615'q_3408 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v1) (coe v2)))
-- Data.Rational.Unnormalised.Properties._.∣↥q∣↧p
d_'8739''8613'q'8739''8615'p_3410 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8739''8613'q'8739''8615'p_3410 v0 v1 v2 ~v3
  = du_'8739''8613'q'8739''8615'p_3410 v0 v1 v2
du_'8739''8613'q'8739''8615'p_3410 ::
  Integer -> Integer -> Integer -> Integer
du_'8739''8613'q'8739''8615'p_3410 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__334
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominator_20
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Properties._.↧p↧q
d_'8615'p'8615'q_3412 ::
  Integer -> Integer -> Integer -> Integer -> Integer
d_'8615'p'8615'q_3412 v0 v1 v2 v3
  = coe
      mulInt
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_denominatorℕ_18
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
            (coe v2) (coe v3)))
-- Data.Rational.Unnormalised.Properties._.∣m∣n≡∣mn∣
d_'8739'm'8739'n'8801''8739'mn'8739'_3418 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'8739'n'8801''8739'mn'8739'_3418 = erased
-- Data.Rational.Unnormalised.Properties._.∣↥p∣↧q≡∣↥p↧q∣
d_'8739''8613'p'8739''8615'q'8801''8739''8613'p'8615'q'8739'_3424 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8613'p'8739''8615'q'8801''8739''8613'p'8615'q'8739'_3424
  = erased
-- Data.Rational.Unnormalised.Properties._.∣↥q∣↧p≡∣↥q↧p∣
d_'8739''8613'q'8739''8615'p'8801''8739''8613'q'8615'p'8739'_3426 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8613'q'8739''8615'p'8801''8739''8613'q'8615'p'8739'_3426
  = erased
-- Data.Rational.Unnormalised.Properties.∣p-q∣≤∣p∣+∣q∣
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_3440 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_3440 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_530)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_578 v4))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
            (coe v1)))
      (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
            (coe v0))
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
            (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_530)
            (coe d_'8804''45''60''45'trans_632))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'45'__214 (coe v0)
               (coe v1)))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                  (coe v1))))
         (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
               (coe v0))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
               (coe v1)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v2 v3 v4 v5 v6 -> v6)
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
                     (coe v1))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                  (coe v1)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                  (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                  (coe v1)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_530))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__202
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                     (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_266
                     (coe v1))))
            erased)
         (d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3390
            (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'45'__196
               (coe v1))))
-- Data.Rational.Unnormalised.Properties.∣p*q∣≡∣p∣*∣q∣
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_3456 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_3456
  = erased
-- Data.Rational.Unnormalised.Properties.∣p*q∣≃∣p∣*∣q∣
d_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3474 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3474 ~v0
                                                              ~v1
  = du_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3474
du_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3474 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8739'p'42'q'8739''8771''8739'p'8739''42''8739'q'8739'_3474
  = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.∣∣p∣∣≡∣p∣
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_3482 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_3482 = erased
-- Data.Rational.Unnormalised.Properties.∣∣p∣∣≃∣p∣
d_'8739''8739'p'8739''8739''8771''8739'p'8739'_3488 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'8739''8739'p'8739''8739''8771''8739'p'8739'_3488 ~v0
  = du_'8739''8739'p'8739''8739''8771''8739'p'8739'_3488
du_'8739''8739'p'8739''8739''8771''8739'p'8739'_3488 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'8739''8739'p'8739''8739''8771''8739'p'8739'_3488
  = coe du_'8771''45'reflexive_170
-- Data.Rational.Unnormalised.Properties.∣-∣-nonNeg
d_'8739''45''8739''45'nonNeg_3494 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_'8739''45''8739''45'nonNeg_3494 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_constructor_194
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.neg-mono-<->
d_neg'45'mono'45''60''45''62'_3496 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_neg'45'mono'45''60''45''62'_3496 = coe d_neg'45'mono'45''60'_418
-- Data.Rational.Unnormalised.Properties.↥[p/q]≡p
d_'8613''91'p'47'q'93''8801'p_3498 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''91'p'47'q'93''8801'p_3498 = erased
-- Data.Rational.Unnormalised.Properties.↧[p/q]≡q
d_'8615''91'p'47'q'93''8801'q_3500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''91'p'47'q'93''8801'q_3500 = erased
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_3506 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'pos_3506 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'pos_3506 v0 v2 v3
du_'42''45'mono'691''45''8804''45'pos_3506 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'pos_3506 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'691''45''8804''45'nonNeg_2202 (coe v0) (coe v1)
                   (coe v2)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_3514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'pos_3514 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'pos_3514 v0 v2 v3
du_'42''45'mono'737''45''8804''45'pos_3514 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'pos_3514 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'737''45''8804''45'nonNeg_2172 (coe v0) (coe v1)
                   (coe v2)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.≤-steps
d_'8804''45'steps_3518 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'8804''45'steps_3518 v0 v1 v2 v3 v4
  = coe du_p'8804'q'8658'p'8804'r'43'q_1378 v0 v1 v2 v4
-- Data.Rational.Unnormalised.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_3524 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'737''45''8804''45'neg_3524 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'neg_3524 v0 v2 v3
du_'42''45'mono'737''45''8804''45'neg_3524 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'737''45''8804''45'neg_3524 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'737''45''8804''45'nonPos_2254 (coe v0) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_3532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_'42''45'mono'691''45''8804''45'neg_3532 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'neg_3532 v0 v2 v3
du_'42''45'mono'691''45''8804''45'neg_3532 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
du_'42''45'mono'691''45''8804''45'neg_3532 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'691''45''8804''45'nonPos_2276 (coe v0) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-pos
d_'42''45'cancel'737''45''60''45'pos_3542 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'pos_3542 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'pos_3542 v0 v2 v3
du_'42''45'cancel'737''45''60''45'pos_3542 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'pos_3542 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'737''45''60''45'nonNeg_2386 (coe v1) (coe v2)
                   (coe v0)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-pos
d_'42''45'cancel'691''45''60''45'pos_3554 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'pos_3554 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'pos_3554 v0 v2 v3
du_'42''45'cancel'691''45''60''45'pos_3554 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'pos_3554 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             0 -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'691''45''60''45'nonNeg_2368 (coe v1) (coe v2)
                   (coe v0)
             _ -> coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_3566 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'737''45''60''45'neg_3566 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'neg_3566 v0 v2 v3
du_'42''45'cancel'737''45''60''45'neg_3566 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'737''45''60''45'neg_3566 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'737''45''60''45'nonPos_2450 (coe v1) (coe v2)
                    (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_3576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_'42''45'cancel'691''45''60''45'neg_3576 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'neg_3576 v0 v2 v3
du_'42''45'cancel'691''45''60''45'neg_3576 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_'42''45'cancel'691''45''60''45'neg_3576 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'691''45''60''45'nonPos_2470 (coe v1) (coe v2)
                    (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Properties.positive⇒nonNegative
d_positive'8658'nonNegative_3582 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_positive'8658'nonNegative_3582 v0 ~v1
  = du_positive'8658'nonNegative_3582 v0
du_positive'8658'nonNegative_3582 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
du_positive'8658'nonNegative_3582 v0
  = coe du_pos'8658'nonNeg_972 (coe v0)
-- Data.Rational.Unnormalised.Properties.negative⇒nonPositive
d_negative'8658'nonPositive_3590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198
d_negative'8658'nonPositive_3590 v0 ~v1
  = du_negative'8658'nonPositive_3590 v0
du_negative'8658'nonPositive_3590 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_198
du_negative'8658'nonPositive_3590 v0
  = coe du_neg'8658'nonPos_978 (coe v0)
-- Data.Rational.Unnormalised.Properties.negative<positive
d_negative'60'positive_3600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_210 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_174 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_negative'60'positive_3600 v0 v1 ~v2 ~v3
  = du_negative'60'positive_3600 v0 v1
du_negative'60'positive_3600 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
du_negative'60'positive_3600 v0 v1
  = coe du_neg'60'pos_986 (coe v0) (coe v1)
