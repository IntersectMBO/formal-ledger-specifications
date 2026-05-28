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

module MAlonzo.Code.Class.HasHsType.Foreign where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.HasHsType.Core

-- Class.HasHsType.Foreign._.iHsTy-Sum
d_iHsTy'45'Sum_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'Sum_18 = erased
-- Class.HasHsType.Foreign._.iHsTy-Pair
d_iHsTy'45'Pair_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'Pair_20 = erased
