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

module MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.All where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.All

-- Data.List.NonEmpty.Relation.Unary.All.All
d_All_32 a0 a1 a2 a3 a4 = ()
data T_All_32
  = C__'8759'__46 AgdaAny
                  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Data.List.NonEmpty.Relation.Unary.All.map
d_map_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_All_32 -> T_All_32
d_map_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_map_48 v6 v7 v8
du_map_48 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_All_32 -> T_All_32
du_map_48 v0 v1 v2
  = case coe v2 of
      C__'8759'__46 v5 v6
        -> case coe v1 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v7 v8
               -> coe
                    C__'8759'__46 (coe v0 v7 v5)
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.All.du_map_164 (coe v0)
                       (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Relation.Unary.All.lookup
d_lookup_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_All_32 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.Any.T_Any_32 ->
  AgdaAny
d_lookup_58 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 = du_lookup_58 v4 v5 v7
du_lookup_58 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_All_32 ->
  MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.Any.T_Any_32 ->
  AgdaAny
du_lookup_58 v0 v1 v2
  = case coe v1 of
      C__'8759'__46 v5 v6
        -> case coe v0 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v7 v8
               -> case coe v2 of
                    MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.Any.C_here_44 v11
                      -> coe v5
                    MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.Any.C_there_52 v11
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Unary.All.du_lookup_436 v8 v6 v11
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Relation.Unary.All.toList⁺
d_toList'8314'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_All_32 -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_toList'8314'_72 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_toList'8314'_72 v5
du_toList'8314'_72 ::
  T_All_32 -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_toList'8314'_72 v0
  = case coe v0 of
      C__'8759'__46 v3 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v3 v4
      _ -> MAlonzo.RTE.mazUnreachableError
