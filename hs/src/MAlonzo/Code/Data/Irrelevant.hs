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

module MAlonzo.Code.Data.Irrelevant where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Data.Irrelevant.Irrelevant
d_Irrelevant_20 a0 a1 = ()
data T_Irrelevant_20 = C_'91'_'93'_28
-- Data.Irrelevant.λ∙⁻
d_λ'8729''8315'_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> T_Irrelevant_20 -> AgdaAny
d_λ'8729''8315'_30 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_λ'8729''8315'_30 v4
du_λ'8729''8315'_30 :: (AgdaAny -> AgdaAny) -> AgdaAny
du_λ'8729''8315'_30 v0 = coe v0 erased
-- Data.Irrelevant.λ∙⁺
d_λ'8729''8314'_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (T_Irrelevant_20 -> AgdaAny) -> AgdaAny -> AgdaAny
d_λ'8729''8314'_36 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_λ'8729''8314'_36 v4
du_λ'8729''8314'_36 :: (T_Irrelevant_20 -> AgdaAny) -> AgdaAny
du_λ'8729''8314'_36 v0 = coe v0 erased
-- Data.Irrelevant.recompute
d_recompute_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Irrelevant_20 -> T_Irrelevant_20
d_recompute_42 = erased
-- Data.Irrelevant.map
d_map_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> T_Irrelevant_20 -> T_Irrelevant_20
d_map_46 = erased
-- Data.Irrelevant.pure
d_pure_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> T_Irrelevant_20
d_pure_52 = erased
-- Data.Irrelevant._<*>_
d__'60''42''62'__56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_Irrelevant_20 -> T_Irrelevant_20 -> T_Irrelevant_20
d__'60''42''62'__56 = erased
-- Data.Irrelevant._>>=_
d__'62''62''61'__62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Irrelevant_20 -> (AgdaAny -> T_Irrelevant_20) -> T_Irrelevant_20
d__'62''62''61'__62 = erased
-- Data.Irrelevant.zipWith
d_zipWith_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_Irrelevant_20 -> T_Irrelevant_20 -> T_Irrelevant_20
d_zipWith_68 = erased
