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

module MAlonzo.Code.Data.Vec.Membership.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Membership.Setoid
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

-- Data.Vec.Membership.Propositional._._∈_
d__'8712'__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny -> Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> ()
d__'8712'__14 = erased
-- Data.Vec.Membership.Propositional._._∉_
d__'8713'__16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny -> Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> ()
d__'8713'__16 = erased
-- Data.Vec.Membership.Propositional._._∷=_
d__'8759''61'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
d__'8759''61'__18 ~v0 ~v1 = du__'8759''61'__18
du__'8759''61'__18 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
du__'8759''61'__18 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Vec.Membership.Setoid.du__'8759''61'__82 v1 v3 v4
-- Data.Vec.Membership.Propositional._.find
d_find_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_find_20 ~v0 ~v1 = du_find_20
du_find_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_find_20 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Vec.Membership.Setoid.du_find_104
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v3 v4
-- Data.Vec.Membership.Propositional._.mapWith∈
d_mapWith'8712'_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_mapWith'8712'_22 ~v0 ~v1 = du_mapWith'8712'_22
du_mapWith'8712'_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny ->
   MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
du_mapWith'8712'_22 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Vec.Membership.Setoid.du_mapWith'8712'_66
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v3 v4
-- Data.Vec.Membership.Propositional.lose
d_lose_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32
d_lose_34 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_lose_34 v4 v6
du_lose_34 ::
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32
du_lose_34 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.Membership.Setoid.du_lose_122
      (coe (\ v2 v3 v4 v5 -> v5)) (coe v0) (coe v1)
