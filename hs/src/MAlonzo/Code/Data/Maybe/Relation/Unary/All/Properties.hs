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

module MAlonzo.Code.Data.Maybe.Relation.Unary.All.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Maybe.Relation.Binary.Connected
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All

-- Data.Maybe.Relation.Unary.All.Properties.All⇒Connectedˡ
d_All'8658'Connected'737'_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
d_All'8658'Connected'737'_36 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_All'8658'Connected'737'_36 v6
du_All'8658'Connected'737'_36 ::
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
du_All'8658'Connected'737'_36 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30 v2
        -> coe
             MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50 v2
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32
        -> coe
             MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just'45'nothing_52
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All.Properties.All⇒Connectedʳ
d_All'8658'Connected'691'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
d_All'8658'Connected'691'_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_All'8658'Connected'691'_48 v6
du_All'8658'Connected'691'_48 ::
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
du_All'8658'Connected'691'_48 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30 v2
        -> coe
             MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50 v2
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32
        -> coe
             MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_nothing'45'just_54
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All.Properties.map⁺
d_map'8314'_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_map'8314'_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_map'8314'_56 v8
du_map'8314'_56 ::
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_map'8314'_56 v0 = coe v0
-- Data.Maybe.Relation.Unary.All.Properties.map⁻
d_map'8315'_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_map'8315'_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_map'8315'_64 v7 v8
du_map'8315'_64 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_map'8315'_64 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30 v4
               -> coe MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30 v4
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All.Properties.gmap
d_gmap_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_gmap_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_gmap_72 v9 v10 v11
du_gmap_72 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_gmap_72 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.du_map_60 (coe v0)
      (coe v1) (coe v2)
-- Data.Maybe.Relation.Unary.All.Properties.<∣>⁺
d_'60''8739''62''8314'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_'60''8739''62''8314'_80 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'60''8739''62''8314'_80 v6 v7
du_'60''8739''62''8314'_80 ::
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_'60''8739''62''8314'_80 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30 v3
        -> coe MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_just_30 v3
      MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All.Properties.<∣>⁻
d_'60''8739''62''8315'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_'60''8739''62''8315'_92 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6
  = du_'60''8739''62''8315'_92 v4 v6
du_'60''8739''62''8315'_92 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_'60''8739''62''8315'_92 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32
      _ -> MAlonzo.RTE.mazUnreachableError
