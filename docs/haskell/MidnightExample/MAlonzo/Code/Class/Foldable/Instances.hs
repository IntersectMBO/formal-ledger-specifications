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

module MAlonzo.Code.Class.Foldable.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Foldable.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core

-- Class.Foldable.Instances.Foldable-List
d_Foldable'45'List_6 ::
  MAlonzo.Code.Class.Foldable.Core.T_Foldable_10
d_Foldable'45'List_6
  = coe
      MAlonzo.Code.Class.Foldable.Core.C_Foldable'46'constructor_287
      (coe (\ v0 v1 v2 v3 -> coe du_go_12 (coe v0) (coe v2) (coe v3)))
-- Class.Foldable.Instances._.go
d_go_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> [AgdaAny] -> AgdaAny
d_go_12 v0 ~v1 v2 v3 = du_go_12 v0 v2 v3
du_go_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> [AgdaAny] -> AgdaAny
du_go_12 v0 v1 v2
  = coe du_'46'extendedlambda0_14 (coe v0) (coe v1) (coe v2)
-- Class.Foldable.Instances._..extendedlambda0
d_'46'extendedlambda0_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> [AgdaAny] -> AgdaAny
d_'46'extendedlambda0_14 v0 ~v1 v2 v3 v4
  = du_'46'extendedlambda0_14 v0 v2 v3 v4
du_'46'extendedlambda0_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> [AgdaAny] -> AgdaAny
du_'46'extendedlambda0_14 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe v2)
      (:) v4 v5
        -> case coe v5 of
             [] -> coe v4
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16 v1 v4
                    (coe du_go_12 v0 v1 v2 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
