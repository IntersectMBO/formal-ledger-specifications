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
  , extIsValidPoP :: Integer -> Integer -> Bool
  , extValidPlutusScript :: Bool
  }
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions
d_ExternalFunctions_8 = ()
type T_ExternalFunctions_8 = ExternalFunctions
pattern C_constructor_22 a0 a1 a2 = MkExternalFunctions a0 a1 a2
check_constructor_22 ::
  (Integer -> Integer -> Integer -> Bool) ->
  (Integer -> Integer -> Bool) -> Bool -> T_ExternalFunctions_8
check_constructor_22 = MkExternalFunctions
cover_ExternalFunctions_8 :: ExternalFunctions -> ()
cover_ExternalFunctions_8 x
  = case x of
      MkExternalFunctions _ _ _ -> ()
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions.extIsSigned
d_extIsSigned_16 ::
  T_ExternalFunctions_8 -> Integer -> Integer -> Integer -> Bool
d_extIsSigned_16 v0
  = case coe v0 of
      C_constructor_22 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions.extIsValidPoP
d_extIsValidPoP_18 ::
  T_ExternalFunctions_8 -> Integer -> Integer -> Bool
d_extIsValidPoP_18 v0
  = case coe v0 of
      C_constructor_22 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.ExternalFunctions.ExternalFunctions.extValidPlutusScript
d_extValidPlutusScript_20 :: T_ExternalFunctions_8 -> Bool
d_extValidPlutusScript_20 v0
  = case coe v0 of
      C_constructor_22 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.ExternalFunctions.dummyExternalFunctions
dummyExternalFunctions :: T_ExternalFunctions_8
dummyExternalFunctions = coe d_dummyExternalFunctions_24
d_dummyExternalFunctions_24 :: T_ExternalFunctions_8
d_dummyExternalFunctions_24
  = coe
      C_constructor_22
      (coe (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
