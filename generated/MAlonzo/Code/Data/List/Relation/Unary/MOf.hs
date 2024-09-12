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

module MAlonzo.Code.Data.List.Relation.Unary.MOf where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Ext
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Relation.Unary.MOf.MOf
d_MOf_22 a0 a1 a2 a3 a4 a5 = ()
data T_MOf_22
  = C_mOf_38 [AgdaAny]
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
             MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Data.List.Relation.Unary.MOf._.cons
d_cons_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> [AgdaAny] -> Integer -> AgdaAny -> T_MOf_22 -> T_MOf_22
d_cons_58 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 = du_cons_58 v4 v7 v8
du_cons_58 :: AgdaAny -> AgdaAny -> T_MOf_22 -> T_MOf_22
du_cons_58 v0 v1 v2
  = case coe v2 of
      C_mOf_38 v3 v5 v6
        -> coe
             C_mOf_38
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v3))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v5)
             (coe MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v1 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.MOf._.skip
d_skip_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> [AgdaAny] -> Integer -> T_MOf_22 -> T_MOf_22
d_skip_74 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_skip_74 v7
du_skip_74 :: T_MOf_22 -> T_MOf_22
du_skip_74 v0
  = case coe v0 of
      C_mOf_38 v1 v3 v4
        -> coe
             C_mOf_38 v1
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                v3)
             v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.MOf._.done
d_done_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> [AgdaAny] -> T_MOf_22
d_done_86 ~v0 ~v1 ~v2 ~v3 v4 = du_done_86 v4
du_done_86 :: [AgdaAny] -> T_MOf_22
du_done_86 v0
  = coe
      C_mOf_38 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Ext.du_'91''93''8838'_18
         (coe v0))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Data.List.Relation.Unary.MOf._.wk
d_wk_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) -> Integer -> [AgdaAny] -> T_MOf_22 -> T_MOf_22
d_wk_92 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_wk_92 v5 v6
du_wk_92 :: [AgdaAny] -> T_MOf_22 -> T_MOf_22
du_wk_92 v0 v1
  = case coe v1 of
      C_mOf_38 v2 v4 v5
        -> let v6
                 = case coe v4 of
                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v9
                       -> case coe v0 of
                            (:) v10 v11
                              -> coe du_skip_74 (coe du_wk_92 (coe v11) (coe C_mOf_38 v2 v9 v5))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError in
           coe
             (case coe v2 of
                []
                  -> case coe v4 of
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v10
                         -> case coe v0 of
                              (:) v11 v12
                                -> coe du_skip_74 (coe du_wk_92 (coe v12) (coe C_mOf_38 v2 v10 v5))
                              _ -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                (:) v7 v8
                  -> case coe v4 of
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v13 v14
                         -> case coe v0 of
                              (:) v15 v16
                                -> case coe v5 of
                                     MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v19 v20
                                       -> coe
                                            C_mOf_38 v8
                                            (coe
                                               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                               v14)
                                            v20
                                     _ -> coe v6
                              _ -> coe v6
                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v12
                         -> case coe v0 of
                              (:) v13 v14
                                -> coe du_skip_74 (coe du_wk_92 (coe v14) (coe C_mOf_38 v2 v12 v5))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.MOf._.uncons
d_uncons_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  Integer -> AgdaAny -> [AgdaAny] -> T_MOf_22 -> T_MOf_22
d_uncons_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_uncons_114 v6 v7
du_uncons_114 :: [AgdaAny] -> T_MOf_22 -> T_MOf_22
du_uncons_114 v0 v1
  = case coe v1 of
      C_mOf_38 v2 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v9
               -> coe du_wk_92 (coe v0) (coe C_mOf_38 v2 v9 v5)
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v16 v17
                             -> coe C_mOf_38 v13 v11 v17
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.MOf._.unskip
d_unskip_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  Integer ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_MOf_22 -> T_MOf_22
d_unskip_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_unskip_136 v8
du_unskip_136 :: T_MOf_22 -> T_MOf_22
du_unskip_136 v0
  = case coe v0 of
      C_mOf_38 v1 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
               -> coe C_mOf_38 v1 v8 v4
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
               -> coe
                    seq (coe v4) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.MOf._.MOf?
d_MOf'63'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_MOf'63'_178 v0 v1 ~v2 ~v3 v4 v5 v6
  = du_MOf'63'_178 v0 v1 v4 v5 v6
du_MOf'63'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_MOf'63'_178 v0 v1 v2 v3 v4
  = case coe v3 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe du_done_86 (coe v4)))
      _ -> let v5 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                []
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                (:) v6 v7
                  -> coe
                       du_'46'extendedlambda1_194 (coe v0) (coe v1) (coe v2) (coe v5)
                       (coe v6) (coe v7) (coe v2 v6)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Unary.MOf._..extendedlambda1
d_'46'extendedlambda1_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'46'extendedlambda1_194 v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'46'extendedlambda1_194 v0 v1 v4 v5 v6 v7 v8
du_'46'extendedlambda1_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'46'extendedlambda1_194 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
        -> if coe v7
             then case coe v8 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                           (coe du_cons_58 (coe v4) (coe v9)) (coe du_uncons_114 (coe v5))
                           (coe du_MOf'63'_178 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v8)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                       (coe du_skip_74) (coe du_unskip_136)
                       (coe
                          du_MOf'63'_178 (coe v0) (coe v1) (coe v2)
                          (coe addInt (coe (1 :: Integer)) (coe v3)) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
