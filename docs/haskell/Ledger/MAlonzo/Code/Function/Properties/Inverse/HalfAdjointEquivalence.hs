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

module MAlonzo.Code.Function.Properties.Inverse.HalfAdjointEquivalence where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles

-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_
d__'8771'__24 a0 a1 a2 a3 = ()
data T__'8771'__24
  = C__'8771'_'46'constructor_973 (AgdaAny -> AgdaAny)
                                  (AgdaAny -> AgdaAny)
-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_.to
d_to_46 :: T__'8771'__24 -> AgdaAny -> AgdaAny
d_to_46 v0
  = case coe v0 of
      C__'8771'_'46'constructor_973 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_.from
d_from_48 :: T__'8771'__24 -> AgdaAny -> AgdaAny
d_from_48 v0
  = case coe v0 of
      C__'8771'_'46'constructor_973 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_.left-inverse-of
d_left'45'inverse'45'of_52 ::
  T__'8771'__24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'inverse'45'of_52 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_.right-inverse-of
d_right'45'inverse'45'of_56 ::
  T__'8771'__24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'inverse'45'of_56 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_.left-right
d_left'45'right_60 ::
  T__'8771'__24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'right_60 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._≃_.injective
d_injective_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  T__'8771'__24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_66 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence.≃⇒↔
d_'8771''8658''8596'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T__'8771'__24 -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8771''8658''8596'_78 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8771''8658''8596'_78 v4
du_'8771''8658''8596'_78 ::
  T__'8771'__24 -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8771''8658''8596'_78 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2364
      (coe d_to_46 (coe v0)) (coe d_from_48 (coe v0))
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.from
d_from_88 :: T__'8771'__24 -> AgdaAny -> AgdaAny
d_from_88 v0 = coe d_from_48 (coe v0)
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.injective
d_injective_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T__'8771'__24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_90 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.left-inverse-of
d_left'45'inverse'45'of_92 ::
  T__'8771'__24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'inverse'45'of_92 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.left-right
d_left'45'right_94 ::
  T__'8771'__24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'right_94 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.right-inverse-of
d_right'45'inverse'45'of_96 ::
  T__'8771'__24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'inverse'45'of_96 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.to
d_to_98 :: T__'8771'__24 -> AgdaAny -> AgdaAny
d_to_98 v0 = coe d_to_46 (coe v0)
-- Function.Properties.Inverse.HalfAdjointEquivalence.↔⇒≃
d_'8596''8658''8771'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_1960 -> T__'8771'__24
d_'8596''8658''8771'_100 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8596''8658''8771'_100 v4
du_'8596''8658''8771'_100 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 -> T__'8771'__24
du_'8596''8658''8771'_100 v0
  = coe
      C__'8771'_'46'constructor_973
      (MAlonzo.Code.Function.Bundles.d_to_1972 (coe v0))
      (MAlonzo.Code.Function.Bundles.d_from_1974 (coe v0))
-- Function.Properties.Inverse.HalfAdjointEquivalence._.A↔B.strictlyInverseʳ
d_strictlyInverse'691'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_strictlyInverse'691'_130 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._.right-inverse-of
d_right'45'inverse'45'of_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'inverse'45'of_188 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._.left-right
d_left'45'right_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'right_194 = erased
-- Function.Properties.Inverse.HalfAdjointEquivalence._._.lemma
d_lemma_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_202 = erased
