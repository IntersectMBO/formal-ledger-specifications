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
import qualified MAlonzo.Code.Data.List.Relation.Unary.All

-- Data.List.NonEmpty.Relation.Unary.All.All
d_All_28 a0 a1 a2 a3 a4 = ()
data T_All_28
  = C__'8759'__42 AgdaAny
                  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Data.List.NonEmpty.Relation.Unary.All.toList⁺
d_toList'8314'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_All_28 -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_toList'8314'_46 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_toList'8314'_46 v5
du_toList'8314'_46 ::
  T_All_28 -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_toList'8314'_46 v0
  = case coe v0 of
      C__'8759'__42 v3 v4
        -> coe
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v3 v4
      _ -> MAlonzo.RTE.mazUnreachableError
