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

module MAlonzo.Code.Data.Integer.Literals where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.FromNeg
import qualified MAlonzo.Code.Data.Integer.Base

-- Data.Integer.Literals.number
d_number_6 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_number_6
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_constructor_32 (\ v0 v1 -> v0)
-- Data.Integer.Literals.negative
d_negative_12 :: MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10
d_negative_12
  = coe
      MAlonzo.Code.Agda.Builtin.FromNeg.C_constructor_32
      (\ v0 v1 -> MAlonzo.Code.Data.Integer.Base.d_'45'__260 (coe v0))
