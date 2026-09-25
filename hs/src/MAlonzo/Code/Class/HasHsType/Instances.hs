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

module MAlonzo.Code.Class.HasHsType.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.HasHsType.Core

-- Class.HasHsType.Instances.iHsTy-ℕ
d_iHsTy'45'ℕ_6 :: MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'ℕ_6 = erased
-- Class.HasHsType.Instances.iHsTy-Bool
d_iHsTy'45'Bool_8 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'Bool_8 = erased
-- Class.HasHsType.Instances.iHsTy-⊤
d_iHsTy'45''8868'_10 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45''8868'_10 = erased
-- Class.HasHsType.Instances.iHsTy-String
d_iHsTy'45'String_12 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'String_12 = erased
-- Class.HasHsType.Instances._.iHsTy-List
d_iHsTy'45'List_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'List_22 = erased
-- Class.HasHsType.Instances._.iHsTy-Maybe
d_iHsTy'45'Maybe_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'Maybe_24 = erased
-- Class.HasHsType.Instances._.iHsTy-Fun
d_iHsTy'45'Fun_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'Fun_26 = erased
