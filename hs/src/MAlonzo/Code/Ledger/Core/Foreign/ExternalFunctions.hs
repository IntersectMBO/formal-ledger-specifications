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

module MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool

data ExternalFunctions = MkExternalFunctions
  {
    extIsSigned :: Integer -> Integer -> Integer -> Bool
  , extValidPlutusScript :: Bool
  }
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions
d_ExternalFunctions_8 = ()
type T_ExternalFunctions_8 = ExternalFunctions
pattern C_constructor_18 a0 a1 = MkExternalFunctions a0 a1
check_constructor_18 ::
  (Integer -> Integer -> Integer -> Bool) ->
  Bool -> T_ExternalFunctions_8
check_constructor_18 = MkExternalFunctions
cover_ExternalFunctions_8 :: ExternalFunctions -> ()
cover_ExternalFunctions_8 x
  = case x of
      MkExternalFunctions _ _ -> ()
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions.extIsSigned
d_extIsSigned_14 ::
  T_ExternalFunctions_8 -> Integer -> Integer -> Integer -> Bool
d_extIsSigned_14 v0
  = case coe v0 of
      C_constructor_18 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions.extValidPlutusScript
d_extValidPlutusScript_16 :: T_ExternalFunctions_8 -> Bool
d_extValidPlutusScript_16 v0
  = case coe v0 of
      C_constructor_18 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.ExternalFunctions.dummyExternalFunctions
dummyExternalFunctions :: T_ExternalFunctions_8
dummyExternalFunctions = coe d_dummyExternalFunctions_20
d_dummyExternalFunctions_20 :: T_ExternalFunctions_8
d_dummyExternalFunctions_20
  = coe
      C_constructor_18
      (coe (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
