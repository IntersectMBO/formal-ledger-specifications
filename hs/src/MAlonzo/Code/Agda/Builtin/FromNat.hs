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

module MAlonzo.Code.Agda.Builtin.FromNat where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Agda.Builtin.FromNat.Number
d_Number_10 a0 a1 = ()
newtype T_Number_10
  = C_constructor_32 (Integer -> AgdaAny -> AgdaAny)
-- Agda.Builtin.FromNat.Number.Constraint
d_Constraint_24 :: T_Number_10 -> Integer -> ()
d_Constraint_24 = erased
-- Agda.Builtin.FromNat.Number.fromNat
d_fromNat_30 :: T_Number_10 -> Integer -> AgdaAny -> AgdaAny
d_fromNat_30 v0
  = case coe v0 of
      C_constructor_32 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Agda.Builtin.FromNat._.fromNat
d_fromNat_36 :: T_Number_10 -> Integer -> AgdaAny -> AgdaAny
d_fromNat_36 v0 = coe d_fromNat_30 (coe v0)
