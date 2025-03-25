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

module MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.All.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.Maybe.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Relation.Unary.AllPairs.Properties._.map⁺
d_map'8314'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_map'8314'_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_map'8314'_48 v7 v8
du_map'8314'_48 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_map'8314'_48 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
        -> coe v1
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v4 v5
        -> case coe v0 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_map'8314'_676
                       (coe v7) (coe v4))
                    (coe du_map'8314'_48 (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.AllPairs.Properties._.++⁺
d_'43''43''8314'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_'43''43''8314'_70 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'43''43''8314'_70 v4 v6 v7 v8
du_'43''43''8314'_70 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_'43''43''8314'_70 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
        -> coe v2
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v6 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v12 v13
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                           (coe
                              MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_'43''43''8314'_760
                              (coe v9) (coe v6) (coe v12))
                           (coe du_'43''43''8314'_70 (coe v9) (coe v7) (coe v2) (coe v13))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.AllPairs.Properties._.concat⁺
d_concat'8314'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_concat'8314'_102 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_concat'8314'_102 v4 v5 v6
du_concat'8314'_102 ::
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_concat'8314'_102 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
        -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22)
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5 v6
        -> case coe v0 of
             (:) v7 v8
               -> case coe v2 of
                    MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v11 v12
                      -> coe
                           du_'43''43''8314'_70 (coe v7) (coe v5)
                           (coe du_concat'8314'_102 (coe v8) (coe v6) (coe v12))
                           (coe
                              MAlonzo.Code.Data.List.Relation.Unary.All.du_map_164
                              (coe
                                 (\ v13 ->
                                    coe
                                      MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_concat'8314'_862
                                      (coe v8)))
                              (coe v7)
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_All'45'swap_230
                                 (coe v8) (coe v7) (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.AllPairs.Properties._.take⁺
d_take'8314'_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_take'8314'_126 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_take'8314'_126 v4 v5 v6
du_take'8314'_126 ::
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_take'8314'_126 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
                  -> coe v2
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v6 v7
                  -> case coe v0 of
                       (:) v8 v9
                         -> coe
                              MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_take'8314'_1116
                                 (coe v9) (coe v3) (coe v6))
                              (coe du_take'8314'_126 (coe v9) (coe v3) (coe v7))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Unary.AllPairs.Properties._.drop⁺
d_drop'8314'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_drop'8314'_142 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_drop'8314'_142 v4 v5 v6
du_drop'8314'_142 ::
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_drop'8314'_142 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
                  -> coe v2
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v6 v7
                  -> case coe v0 of
                       (:) v8 v9 -> coe du_drop'8314'_142 (coe v9) (coe v3) (coe v7)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Unary.AllPairs.Properties._.applyUpTo⁺₁
d_applyUpTo'8314''8321'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyUpTo'8314''8321'_170 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_applyUpTo'8314''8321'_170 v5 v6
du_applyUpTo'8314''8321'_170 ::
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyUpTo'8314''8321'_170 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_applyUpTo'8314''8321'_1248
                   (coe v2)
                   (coe
                      (\ v3 v4 ->
                         coe
                           v1 (0 :: Integer) (addInt (coe (1 :: Integer)) (coe v3))
                           (coe
                              MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                              (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4))))
                (coe
                   du_applyUpTo'8314''8321'_170 (coe v2)
                   (coe
                      (\ v3 v4 v5 v6 ->
                         coe
                           v1 (addInt (coe (1 :: Integer)) (coe v3))
                           (addInt (coe (1 :: Integer)) (coe v4))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)))))
-- Data.List.Relation.Unary.AllPairs.Properties._.applyUpTo⁺₂
d_applyUpTo'8314''8322'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyUpTo'8314''8322'_194 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_applyUpTo'8314''8322'_194 v5 v6
du_applyUpTo'8314''8322'_194 ::
  Integer ->
  (Integer -> Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyUpTo'8314''8322'_194 v0 v1
  = coe
      du_applyUpTo'8314''8321'_170 (coe v0)
      (coe (\ v2 v3 v4 v5 -> coe v1 v2 v3))
-- Data.List.Relation.Unary.AllPairs.Properties._.applyDownFrom⁺₁
d_applyDownFrom'8314''8321'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyDownFrom'8314''8321'_224 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_applyDownFrom'8314''8321'_224 v5 v6
du_applyDownFrom'8314''8321'_224 ::
  Integer ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyDownFrom'8314''8321'_224 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_applyDownFrom'8314''8321'_1312
                   (coe v2)
                   (coe
                      (\ v3 v4 ->
                         coe
                           v1 v2 v3 v4
                           (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2776
                              (coe v0)))))
                (coe
                   du_applyDownFrom'8314''8321'_224 (coe v2)
                   (coe
                      (\ v3 v4 v5 v6 ->
                         coe
                           v1 v3 v4 v5
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_m'60'n'8658'm'60'1'43'n_3062
                              (coe v6))))))
-- Data.List.Relation.Unary.AllPairs.Properties._.applyDownFrom⁺₂
d_applyDownFrom'8314''8322'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_applyDownFrom'8314''8322'_248 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_applyDownFrom'8314''8322'_248 v5 v6
du_applyDownFrom'8314''8322'_248 ::
  Integer ->
  (Integer -> Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_applyDownFrom'8314''8322'_248 v0 v1
  = coe
      du_applyDownFrom'8314''8321'_224 (coe v0)
      (coe (\ v2 v3 v4 v5 -> coe v1 v2 v3))
-- Data.List.Relation.Unary.AllPairs.Properties._.tabulate⁺-<
d_tabulate'8314''45''60'_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_tabulate'8314''45''60'_278 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6
  = du_tabulate'8314''45''60'_278 v4 v6
du_tabulate'8314''45''60'_278 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_tabulate'8314''45''60'_278 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_tabulate'8314'_1346
                   (coe v2)
                   (coe
                      (\ v3 ->
                         coe
                           v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
                           (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3)
                           (coe
                              MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                              (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))))
                (coe
                   du_tabulate'8314''45''60'_278 (coe v2)
                   (coe
                      (\ v3 v4 v5 ->
                         coe
                           v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3)
                           (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v4)
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)))))
-- Data.List.Relation.Unary.AllPairs.Properties._.tabulate⁺
d_tabulate'8314'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_tabulate'8314'_296 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6
  = du_tabulate'8314'_296 v4 v6
du_tabulate'8314'_296 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
   (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_tabulate'8314'_296 v0 v1
  = coe
      du_tabulate'8314''45''60'_278 (coe v0)
      (coe (\ v2 v3 v4 -> coe v1 v2 v3 erased))
-- Data.List.Relation.Unary.AllPairs.Properties._.filter⁺
d_filter'8314'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_filter'8314'_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_filter'8314'_318 v6 v7 v8
du_filter'8314'_318 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_filter'8314'_318 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22
        -> coe v2
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v5 v6
        -> case coe v1 of
             (:) v7 v8
               -> let v9
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v0 v7) in
                  coe
                    (if coe v9
                       then coe
                              MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_filter'8314'_1428
                                 (coe v0) (coe v8) (coe v5))
                              (coe du_filter'8314'_318 (coe v0) (coe v8) (coe v6))
                       else coe du_filter'8314'_318 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.AllPairs.Properties._.catMaybes⁺
d_catMaybes'8314'_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [Maybe AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_catMaybes'8314'_360 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_catMaybes'8314'_360 v4 v5
du_catMaybes'8314'_360 ::
  [Maybe AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_catMaybes'8314'_360 v0 v1
  = case coe v0 of
      []
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
               -> case coe v1 of
                    MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v7 v8
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                           (coe
                              MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_Any'45'catMaybes'8314'_758
                              (coe v3)
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Unary.All.du_map_164
                                 (\ v9 v10 ->
                                    coe
                                      MAlonzo.Code.Data.Maybe.Relation.Binary.Pointwise.du_pointwise'8838'any_252
                                      v10)
                                 (coe v3) (coe v7)))
                           (coe du_catMaybes'8314'_360 (coe v3) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v1 of
                    MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28 v6 v7
                      -> coe du_catMaybes'8314'_360 (coe v3) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
