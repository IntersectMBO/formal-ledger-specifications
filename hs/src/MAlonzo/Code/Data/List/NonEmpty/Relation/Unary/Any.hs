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

module MAlonzo.Code.Data.List.NonEmpty.Relation.Unary.Any where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any

-- Data.List.NonEmpty.Relation.Unary.Any.Any
d_Any_32 a0 a1 a2 a3 a4 = ()
data T_Any_32
  = C_here_44 AgdaAny |
    C_there_52 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Data.List.NonEmpty.Relation.Unary.Any.map
d_map_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_Any_32 -> T_Any_32
d_map_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_map_54 v6 v7 v8
du_map_54 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_Any_32 -> T_Any_32
du_map_54 v0 v1 v2
  = case coe v2 of
      C_here_44 v5
        -> case coe v1 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v6 v7
               -> coe C_here_44 (coe v0 v6 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_there_52 v5
        -> case coe v1 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v6 v7
               -> coe
                    C_there_52
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.du_map_76 (coe v0)
                       (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Relation.Unary.Any.satisfied
d_satisfied_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_Any_32 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfied_64 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_satisfied_64 v4 v5
du_satisfied_64 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  T_Any_32 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfied_64 v0 v1
  = case coe v1 of
      C_here_44 v4
        -> case coe v0 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_there_52 v4
        -> case coe v0 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v5 v6
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.du_satisfied_120 (coe v6)
                    (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
