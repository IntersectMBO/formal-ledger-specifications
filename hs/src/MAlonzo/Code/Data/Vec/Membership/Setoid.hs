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

module MAlonzo.Code.Data.Vec.Membership.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.Vec.Membership.Setoid._∈_
d__'8712'__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> ()
d__'8712'__40 = erased
-- Data.Vec.Membership.Setoid._∉_
d__'8713'__50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> ()
d__'8713'__50 = erased
-- Data.Vec.Membership.Setoid.mapWith∈
d_mapWith'8712'_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_mapWith'8712'_66 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7
  = du_mapWith'8712'_66 v2 v6 v7
du_mapWith'8712'_66 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
du_mapWith'8712'_66 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32 -> coe v1
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> coe
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38
             (coe
                v2 v4
                (coe
                   MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_here_44
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                      v4)))
             (coe
                du_mapWith'8712'_66 (coe v0) (coe v5)
                (coe
                   (\ v6 v7 ->
                      coe
                        v2 v6
                        (coe MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_there_54 v7))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Membership.Setoid._∷=_
d__'8759''61'__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
d__'8759''61'__82 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du__'8759''61'__82 v4 v6 v7
du__'8759''61'__82 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
du__'8759''61'__82 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Vec.Base.du__'91'_'93''8788'__158 (coe v0)
      (coe
         MAlonzo.Code.Data.Vec.Relation.Unary.Any.du_index_104 (coe v0)
         (coe v1))
      (coe v2)
-- Data.Vec.Membership.Setoid._.find
d_find_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_find_104 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 = du_find_104 v2 v6 v7
du_find_104 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_find_104 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_here_44 v6
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_here_44
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                             v8))
                       (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_there_54 v6
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe du_find_104 (coe v0) (coe v9) (coe v6)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_there_54
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe du_find_104 (coe v0) (coe v9) (coe v6)))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe du_find_104 (coe v0) (coe v9) (coe v6)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Membership.Setoid._.lose
d_lose_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32
d_lose_122 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8 v9 v10
  = du_lose_122 v5 v6 v8 v9 v10
du_lose_122 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32
du_lose_122 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Vec.Relation.Unary.Any.du_map_94
      (coe (\ v5 v6 -> coe v0 v1 v5 v6 v4)) (coe v2) (coe v3)
