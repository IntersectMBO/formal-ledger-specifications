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

module MAlonzo.Code.Interface.HasEmptySet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- Interface.HasEmptySet.HasEmptySet
d_HasEmptySet_6 a0 = ()
newtype T_HasEmptySet_6 = C_HasEmptySet'46'constructor_3 AgdaAny
-- Interface.HasEmptySet.HasEmptySet.∅
d_'8709'_12 :: T_HasEmptySet_6 -> AgdaAny
d_'8709'_12 v0
  = case coe v0 of
      C_HasEmptySet'46'constructor_3 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasEmptySet._.∅
d_'8709'_16 :: T_HasEmptySet_6 -> AgdaAny
d_'8709'_16 v0 = coe d_'8709'_12 (coe v0)
