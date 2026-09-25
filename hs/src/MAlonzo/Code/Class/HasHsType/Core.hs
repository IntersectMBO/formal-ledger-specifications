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

module MAlonzo.Code.Class.HasHsType.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Class.HasHsType.Core.HasHsType
d_HasHsType_10 a0 a1 = ()
data T_HasHsType_10 = C_constructor_18
-- Class.HasHsType.Core.HasHsType.HsType
d_HsType_16 :: T_HasHsType_10 -> ()
d_HsType_16 = erased
-- Class.HasHsType.Core._.mkHsType
d_mkHsType_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> T_HasHsType_10
d_mkHsType_28 = erased
-- Class.HasHsType.Core._._.HsType
d_HsType_38 :: T_HasHsType_10 -> ()
d_HsType_38 = erased
