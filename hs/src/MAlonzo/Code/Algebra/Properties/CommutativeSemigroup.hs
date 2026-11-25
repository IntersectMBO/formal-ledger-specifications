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

module MAlonzo.Code.Algebra.Properties.CommutativeSemigroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Properties.Semigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.CommutativeSemigroup._.LeftSemimedial
d_LeftSemimedial_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_140 = erased
-- Algebra.Properties.CommutativeSemigroup._.Medial
d_Medial_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_144 = erased
-- Algebra.Properties.CommutativeSemigroup._.RightSemimedial
d_RightSemimedial_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_170 = erased
-- Algebra.Properties.CommutativeSemigroup._.Semimedial
d_Semimedial_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_178 = erased
-- Algebra.Properties.CommutativeSemigroup._.[uv∙w]x≈u[vw∙x]
d_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_236 ~v0 ~v1 v2
  = du_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_236 v2
du_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_236 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_236 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_'91'uv'8729'w'93'x'8776'u'91'vw'8729'x'93'_214
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.[uv∙w]x≈u[v∙wx]
d_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_238 ~v0 ~v1 v2
  = du_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_238 v2
du_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_238 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_238 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_'91'uv'8729'w'93'x'8776'u'91'v'8729'wx'93'_216
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.[u∙vw]x≈u[v∙wx]
d_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_240 ~v0 ~v1 v2
  = du_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_240 v2
du_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_240 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_240 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_'91'u'8729'vw'93'x'8776'u'91'v'8729'wx'93'_220
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.[u∙vw]x≈uv∙wx
d_'91'u'8729'vw'93'x'8776'uv'8729'wx_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'u'8729'vw'93'x'8776'uv'8729'wx_242 ~v0 ~v1 v2
  = du_'91'u'8729'vw'93'x'8776'uv'8729'wx_242 v2
du_'91'u'8729'vw'93'x'8776'uv'8729'wx_242 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'u'8729'vw'93'x'8776'uv'8729'wx_242 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_'91'u'8729'vw'93'x'8776'uv'8729'wx_218
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.alternative
d_alternative_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alternative_244 ~v0 ~v1 v2 = du_alternative_244 v2
du_alternative_244 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_alternative_244 v0
  = coe
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
                 v1 v2 v2)))
-- Algebra.Properties.CommutativeSemigroup._.alternativeʳ
d_alternative'691'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_alternative'691'_246 ~v0 ~v1 v2 v3 v4
  = du_alternative'691'_246 v2 v3 v4
du_alternative'691'_246 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_alternative'691'_246 v0 v1 v2
  = coe
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
         v1 v2 v2)
-- Algebra.Properties.CommutativeSemigroup._.alternativeˡ
d_alternative'737'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_alternative'737'_248 ~v0 ~v1 v2 v3 v4
  = du_alternative'737'_248 v2 v3 v4
du_alternative'737'_248 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_alternative'737'_248 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_500
      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
            (coe v0)))
      v1 v1 v2
-- Algebra.Properties.CommutativeSemigroup._.flexible
d_flexible_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_flexible_250 ~v0 ~v1 v2 v3 v4 = du_flexible_250 v2 v3 v4
du_flexible_250 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_flexible_250 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_500
      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
            (coe v0)))
      v1 v2 v1
-- Algebra.Properties.CommutativeSemigroup._.uv∙wx≈u[vw∙x]
d_uv'8729'wx'8776'u'91'vw'8729'x'93'_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8729'wx'8776'u'91'vw'8729'x'93'_252 ~v0 ~v1 v2
  = du_uv'8729'wx'8776'u'91'vw'8729'x'93'_252 v2
du_uv'8729'wx'8776'u'91'vw'8729'x'93'_252 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8729'wx'8776'u'91'vw'8729'x'93'_252 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8729'wx'8776'u'91'vw'8729'x'93'_222
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈wx⇒u∙vy≈w∙xy
d_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_254 ~v0 ~v1 v2
  = du_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_254 v2
du_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_254 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_254 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'wx'8658'u'8729'vy'8776'w'8729'xy_246
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈wx⇒yu∙vz≈yw∙xz
d_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_256 ~v0 ~v1 v2
  = du_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_256 v2
du_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_256 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_256 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'wx'8658'yu'8729'vz'8776'yw'8729'xz_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈wx⇒yu∙v≈yw∙x
d_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_258 ~v0 ~v1 v2
  = du_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_258 v2
du_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_258 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_258 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'wx'8658'yu'8729'v'8776'yw'8729'x_240
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒[xu∙v]y≈x∙wy
d_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_260 ~v0 ~v1 v2
  = du_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_260 v2
du_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_260 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_260 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658''91'xu'8729'v'93'y'8776'x'8729'wy_150
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒[xy∙u]v≈x∙yw
d_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_262 ~v0 ~v1 v2
  = du_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_262 v2
du_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_262 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_262 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658''91'xy'8729'u'93'v'8776'x'8729'yw_160
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒[x∙yu]v≈x∙yw
d_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_264 ~v0 ~v1 v2
  = du_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_264 v2
du_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_264 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_264 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658''91'x'8729'yu'93'v'8776'x'8729'yw_140
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒u[vx∙y]≈w∙xy
d_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_266 ~v0 ~v1 v2
  = du_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_266 v2
du_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_266 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_266 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'u'91'vx'8729'y'93''8776'w'8729'xy_120
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒u∙vx≈wx
d_uv'8776'w'8658'u'8729'vx'8776'wx_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'u'8729'vx'8776'wx_268 ~v0 ~v1 v2
  = du_uv'8776'w'8658'u'8729'vx'8776'wx_268 v2
du_uv'8776'w'8658'u'8729'vx'8776'wx_268 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'u'8729'vx'8776'wx_268 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'u'8729'vx'8776'wx_112
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒x[uv∙y]≈x∙wy
d_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_270 ~v0 ~v1 v2
  = du_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_270 v2
du_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_270 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_270 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'x'91'uv'8729'y'93''8776'x'8729'wy_130
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒xu∙vy≈x∙wy
d_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_272 ~v0 ~v1 v2
  = du_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_272 v2
du_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_272 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_272 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'xu'8729'vy'8776'x'8729'wy_182
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒xu∙v≈xw
d_uv'8776'w'8658'xu'8729'v'8776'xw_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'xu'8729'v'8776'xw_274 ~v0 ~v1 v2
  = du_uv'8776'w'8658'xu'8729'v'8776'xw_274 v2
du_uv'8776'w'8658'xu'8729'v'8776'xw_274 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'xu'8729'v'8776'xw_274 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'xu'8729'v'8776'xw_106
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒xy≈z⇒u[vx∙y]≈wz
d_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_276 ~v0
                                                               ~v1 v2
  = du_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_276
      v2
du_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_276 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_276 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'xy'8776'z'8658'u'91'vx'8729'y'93''8776'wz_192
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.uv≈w⇒x∙wy≈x∙[u∙vy]
d_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_278 ~v0
                                                             ~v1 v2
  = du_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_278 v2
du_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_278 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_278 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'x'8729'wy'8776'x'8729''91'u'8729'vy'93'_200
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_742 (coe v0))
-- Algebra.Properties.CommutativeSemigroup._.x∙yz≈xy∙z
d_x'8729'yz'8776'xy'8729'z_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'xy'8729'z_280 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'xy'8729'z_280 v2 v3 v4 v5
du_x'8729'yz'8776'xy'8729'z_280 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'xy'8729'z_280 v0 v1 v2 v3
  = coe
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0)))
         v1 v2 v3)
-- Algebra.Properties.CommutativeSemigroup.medial
d_medial_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_medial_282 ~v0 ~v1 v2 v3 v4 v5 v6 = du_medial_282 v2 v3 v4 v5 v6
du_medial_282 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_medial_282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v4))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v4))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v4))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                       (coe v0)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_500
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))
                        v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v4)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v4))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_500
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))
                        v3 v2 v4)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0))))))
                  v1
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v5 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v5 v4)
                     (\ v5 v6 -> v5)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v5 v6 -> v6)
                     (\ v5 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v5 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v4 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_comm_580
                        (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0))
                        v2 v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0))))))
               v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v4))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_500
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                        (coe v0)))
                  v2 v3 v4)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v4)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈y∙xz
d_x'8729'yz'8776'y'8729'xz_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'y'8729'xz_298 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'y'8729'xz_298 v2 v3 v4 v5
du_x'8729'yz'8776'y'8729'xz_298 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'y'8729'xz_298 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_500
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                        (coe v0)))
                  v2 v1 v3))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0))))))
               v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_580
                  (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                     (coe v0))
                  v1 v2)))
         (coe
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
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_500
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                     (coe v0)))
               v1 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈z∙yx
d_x'8729'yz'8776'z'8729'yx_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'z'8729'yx_312 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'z'8729'yx_312 v2 v3 v4 v5
du_x'8729'yz'8776'z'8729'yx_312 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'z'8729'yx_312 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0))))))
                  v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_comm_580
                     (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                        (coe v0))
                     v1 v2)))
            (coe
               du_x'8729'yz'8776'y'8729'xz_298 (coe v0) (coe v1) (coe v3)
               (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
            (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                        (coe v0)))))
            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0))))))
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_580
               (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0))
               v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈x∙zy
d_x'8729'yz'8776'x'8729'zy_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'x'8729'zy_326 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'x'8729'zy_326 v2 v3 v4 v5
du_x'8729'yz'8776'x'8729'zy_326 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'x'8729'zy_326 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))))
      (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                     (coe v0))))))
      v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2)
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_580
         (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
            (coe v0))
         v2 v3)
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈y∙zx
d_x'8729'yz'8776'y'8729'zx_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'y'8729'zx_338 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'y'8729'zx_338 v2 v3 v4 v5
du_x'8729'yz'8776'y'8729'zx_338 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'y'8729'zx_338 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_500
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                     (coe v0)))
               v2 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_comm_580
            (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0))
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈z∙xy
d_x'8729'yz'8776'z'8729'xy_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'z'8729'xy_352 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'z'8729'xy_352 v2 v3 v4 v5
du_x'8729'yz'8776'z'8729'xy_352 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'z'8729'xy_352 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_580
               (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3))
         (coe
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
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_500
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                     (coe v0)))
               v1 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈yx∙z
d_x'8729'yz'8776'yx'8729'z_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'yx'8729'z_366 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'yx'8729'z_366 v2 v3 v4 v5
du_x'8729'yz'8776'yx'8729'z_366 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'yx'8729'z_366 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
      (coe
         du_x'8729'yz'8776'y'8729'xz_298 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v2 v1 v3))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈zy∙x
d_x'8729'yz'8776'zy'8729'x_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'zy'8729'x_380 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'zy'8729'x_380 v2 v3 v4 v5
du_x'8729'yz'8776'zy'8729'x_380 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'zy'8729'x_380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1)
      (coe
         du_x'8729'yz'8776'z'8729'yx_312 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v3 v2 v1))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈xz∙y
d_x'8729'yz'8776'xz'8729'y_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'xz'8729'y_394 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'xz'8729'y_394 v2 v3 v4 v5
du_x'8729'yz'8776'xz'8729'y_394 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'xz'8729'y_394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v2)
      (coe
         du_x'8729'yz'8776'x'8729'zy_326 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v1 v3 v2))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈yz∙x
d_x'8729'yz'8776'yz'8729'x_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'yz'8729'x_408 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'yz'8729'x_408 v2 v3 v4 v5
du_x'8729'yz'8776'yz'8729'x_408 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'yz'8729'x_408 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
      (coe
         du_x'8729'yz'8776'y'8729'zx_338 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v2 v3 v1))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈zx∙y
d_x'8729'yz'8776'zx'8729'y_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'zx'8729'y_422 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'zx'8729'y_422 v2 v3 v4 v5
du_x'8729'yz'8776'zx'8729'y_422 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'zx'8729'y_422 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v2)
      (coe
         du_x'8729'yz'8776'z'8729'xy_352 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v3 v1 v2))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈y∙xz
d_xy'8729'z'8776'y'8729'xz_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'y'8729'xz_436 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'y'8729'xz_436 v2 v3 v4 v5
du_xy'8729'z'8776'y'8729'xz_436 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'y'8729'xz_436 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'y'8729'xz_298 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈z∙yx
d_xy'8729'z'8776'z'8729'yx_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'z'8729'yx_450 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'z'8729'yx_450 v2 v3 v4 v5
du_xy'8729'z'8776'z'8729'yx_450 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'z'8729'yx_450 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'z'8729'yx_312 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈x∙zy
d_xy'8729'z'8776'x'8729'zy_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'x'8729'zy_464 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'x'8729'zy_464 v2 v3 v4 v5
du_xy'8729'z'8776'x'8729'zy_464 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'x'8729'zy_464 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'x'8729'zy_326 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈y∙zx
d_xy'8729'z'8776'y'8729'zx_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'y'8729'zx_478 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'y'8729'zx_478 v2 v3 v4 v5
du_xy'8729'z'8776'y'8729'zx_478 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'y'8729'zx_478 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'y'8729'zx_338 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈z∙xy
d_xy'8729'z'8776'z'8729'xy_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'z'8729'xy_492 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'z'8729'xy_492 v2 v3 v4 v5
du_xy'8729'z'8776'z'8729'xy_492 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'z'8729'xy_492 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'z'8729'xy_352 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈yx∙z
d_xy'8729'z'8776'yx'8729'z_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'yx'8729'z_506 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'yx'8729'z_506 v2 v3 v4 v5
du_xy'8729'z'8776'yx'8729'z_506 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'yx'8729'z_506 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
      (coe
         du_xy'8729'z'8776'y'8729'xz_436 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v2 v1 v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈zy∙x
d_xy'8729'z'8776'zy'8729'x_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'zy'8729'x_520 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'zy'8729'x_520 v2 v3 v4 v5
du_xy'8729'z'8776'zy'8729'x_520 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'zy'8729'x_520 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1)
      (coe
         du_xy'8729'z'8776'z'8729'yx_450 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v3 v2 v1))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈xz∙y
d_xy'8729'z'8776'xz'8729'y_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'xz'8729'y_534 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'xz'8729'y_534 v2 v3 v4 v5
du_xy'8729'z'8776'xz'8729'y_534 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'xz'8729'y_534 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v2)
      (coe
         du_xy'8729'z'8776'x'8729'zy_464 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v1 v3 v2))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈yz∙x
d_xy'8729'z'8776'yz'8729'x_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'yz'8729'x_548 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'yz'8729'x_548 v2 v3 v4 v5
du_xy'8729'z'8776'yz'8729'x_548 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'yz'8729'x_548 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
      (coe
         du_xy'8729'z'8776'y'8729'zx_478 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v2 v3 v1))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈zx∙y
d_xy'8729'z'8776'zx'8729'y_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'zx'8729'y_562 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'zx'8729'y_562 v2 v3 v4 v5
du_xy'8729'z'8776'zx'8729'y_562 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'zx'8729'y_562 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
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
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v2)
      (coe
         du_xy'8729'z'8776'z'8729'xy_492 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
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
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v3 v1 v2))
-- Algebra.Properties.CommutativeSemigroup.xy∙xx≈x∙yxx
d_xy'8729'xx'8776'x'8729'yxx_574 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'xx'8776'x'8729'yxx_574 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_500
      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
            (coe v0)))
      v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1)
-- Algebra.Properties.CommutativeSemigroup.semimedialˡ
d_semimedial'737'_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_semimedial'737'_580 ~v0 ~v1 v2 v3 v4 v5
  = du_semimedial'737'_580 v2 v3 v4 v5
du_semimedial'737'_580 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_semimedial'737'_580 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)))
                     (coe
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
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_assoc_500
                           (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))
                           v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1) v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_500
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))
                        v2 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0))))))
                  v1
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v4 v3)
                     (\ v4 v5 -> v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v4 v5 -> v5)
                     (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v4 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_comm_580
                        (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0))
                        v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0))))))
               v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
               (coe
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
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_500
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))
                     v1 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.semimedialʳ
d_semimedial'691'_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_semimedial'691'_588 ~v0 ~v1 v2 v3 v4 v5
  = du_semimedial'691'_588 v2 v3 v4 v5
du_semimedial'691'_588 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_semimedial'691'_588 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
                     (coe
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
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_assoc_500
                           (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))
                           v2 v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_500
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))
                        v1 v3 v1)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0))))))
                  v2
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v4 v1)
                     (\ v4 v5 -> v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v4 v5 -> v5)
                     (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v4 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_comm_580
                        (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0))
                        v3 v1))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v1)
               (coe
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
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_500
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))
                     v3 v1 v1))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v2 v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v1)))
-- Algebra.Properties.CommutativeSemigroup.middleSemimedial
d_middleSemimedial_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_middleSemimedial_602 ~v0 ~v1 v2 v3 v4 v5
  = du_middleSemimedial_602 v2 v3 v4 v5
du_middleSemimedial_602 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_middleSemimedial_602 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)))
                     (coe
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
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_assoc_500
                           (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))
                           v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v1))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_500
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))
                        v3 v2 v1)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0)))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0))))))
                  v1
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v4 v1)
                     (\ v4 v5 -> v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v4 v5 -> v5)
                     (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v4 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                 (coe v0)))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                                    (coe v0))))))
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v2)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_comm_580
                        (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0))
                        v2 v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                              (coe v0))))))
               v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
               (coe
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
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2 v3) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_500
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                           (coe v0)))
                     v2 v3 v1))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_578
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_708
                  (coe v0)))
            v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__706 v0 v3 v1)))
-- Algebra.Properties.CommutativeSemigroup.semimedial
d_semimedial_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semimedial_610 ~v0 ~v1 v2 = du_semimedial_610 v2
du_semimedial_610 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_semimedial_610 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_semimedial'737'_580 (coe v0))
      (coe du_semimedial'691'_588 (coe v0))
-- Algebra.Properties.CommutativeSemigroup.interchange
d_interchange_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_interchange_612 ~v0 ~v1 v2 = du_interchange_612 v2
du_interchange_612 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_interchange_612 v0 = coe du_medial_282 (coe v0)
