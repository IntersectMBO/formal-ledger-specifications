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

module MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool

data ExternalFunctions = MkExternalFunctions
  { extIsSigned :: Integer -> Integer -> Integer -> Bool
  }
-- Ledger.Conway.Foreign.ExternalFunctions.ExternalFunctions
d_ExternalFunctions_8 = ()
type T_ExternalFunctions_8 = ExternalFunctions
pattern C_constructor_14 a0 = MkExternalFunctions a0
check_constructor_14 ::
  (Integer -> Integer -> Integer -> Bool) -> T_ExternalFunctions_8
check_constructor_14 = MkExternalFunctions
cover_ExternalFunctions_8 :: ExternalFunctions -> ()
cover_ExternalFunctions_8 x
  = case x of
      MkExternalFunctions _ -> ()
-- Ledger.Conway.Foreign.ExternalFunctions.ExternalFunctions.extIsSigned
d_extIsSigned_12 ::
  T_ExternalFunctions_8 -> Integer -> Integer -> Integer -> Bool
d_extIsSigned_12 v0
  = case coe v0 of
      C_constructor_14 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.ExternalFunctions.dummyExternalFunctions
dummyExternalFunctions :: T_ExternalFunctions_8
dummyExternalFunctions = coe d_dummyExternalFunctions_16
d_dummyExternalFunctions_16 :: T_ExternalFunctions_8
d_dummyExternalFunctions_16
  = coe
      C_constructor_14
      (coe (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
