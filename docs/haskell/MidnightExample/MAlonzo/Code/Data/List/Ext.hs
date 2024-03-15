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

module MAlonzo.Code.Data.List.Ext where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base

-- Data.List.Ext._⁉_
d__'8265'__12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Integer -> Maybe AgdaAny
d__'8265'__12 ~v0 ~v1 v2 v3 = du__'8265'__12 v2 v3
du__'8265'__12 :: [AgdaAny] -> Integer -> Maybe AgdaAny
du__'8265'__12 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (coe du__'8265'__12 (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.sublists
d_sublists_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_sublists_20 ~v0 ~v1 v2 = du_sublists_20 v2
du_sublists_20 :: [AgdaAny] -> [[AgdaAny]]
du_sublists_20 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__62
             (coe
                MAlonzo.Code.Data.List.Base.du_map_22
                (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1))
                (coe du_sublists_20 (coe v2)))
             (coe du_sublists_20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.insert
d_insert_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> [AgdaAny] -> [[AgdaAny]]
d_insert_28 ~v0 ~v1 v2 v3 = du_insert_28 v2 v3
du_insert_28 :: AgdaAny -> [AgdaAny] -> [[AgdaAny]]
du_insert_28 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
             (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Data.List.Base.du_map_22
                (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2))
                (coe du_insert_28 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Ext.subpermutations
d_subpermutations_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_subpermutations_40 ~v0 ~v1 v2 = du_subpermutations_40 v2
du_subpermutations_40 :: [AgdaAny] -> [[AgdaAny]]
du_subpermutations_40 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__62
             (coe
                MAlonzo.Code.Data.List.Base.du_concatMap_272
                (coe du_insert_28 (coe v1)) (coe du_subpermutations_40 (coe v2)))
             (coe du_subpermutations_40 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
