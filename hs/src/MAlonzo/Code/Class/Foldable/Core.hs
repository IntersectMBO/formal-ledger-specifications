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

module MAlonzo.Code.Class.Foldable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core

-- Class.Foldable.Core.Foldable
d_Foldable_10 a0 a1 = ()
newtype T_Foldable_10
  = C_Foldable'46'constructor_287 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                   () ->
                                   MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
                                   MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny)
-- Class.Foldable.Core.Foldable.fold
d_fold_22 ::
  T_Foldable_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
d_fold_22 v0
  = case coe v0 of
      C_Foldable'46'constructor_287 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Foldable.Core._.fold
d_fold_26 ::
  T_Foldable_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12 -> AgdaAny -> AgdaAny
d_fold_26 v0 = coe d_fold_22 (coe v0)
