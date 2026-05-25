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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Account where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account

import GHC.Generics (Generic)
data BalanceInterval = Both Integer Integer | Lower Integer | Upper Integer
  deriving (Show, Eq, Generic)
-- Ledger.Dijkstra.Foreign.Account.HsTy-BalanceInterval
d_HsTy'45'BalanceInterval_12 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BalanceInterval_12 = erased
-- Ledger.Dijkstra.Foreign.Account.Conv-BalanceInterval
d_Conv'45'BalanceInterval_14 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BalanceInterval_14
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Account.C_'10214'_'44'_'10630'_850 v1 v2
                -> coe C_Both_921 (coe v1) (coe v2)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Account.C_'10214'_'44''8734''10630'_852 v1
                -> coe C_Lower_977 (coe v1)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Account.C_'10214'0'44'_'10630'_854 v1
                -> coe C_Upper_991 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Both_921 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Account.C_'10214'_'44'_'10630'_850
                     (coe v1) (coe v2)
              C_Lower_977 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Account.C_'10214'_'44''8734''10630'_852
                     (coe v1)
              C_Upper_991 v1
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Account.C_'10214'0'44'_'10630'_854
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Account.BalanceInterval
d_BalanceInterval_919 = ()
type T_BalanceInterval_919 = BalanceInterval
pattern C_Both_921 a0 a1 = Both a0 a1
pattern C_Lower_977 a0 = Lower a0
pattern C_Upper_991 a0 = Upper a0
check_Both_921 :: Integer -> Integer -> T_BalanceInterval_919
check_Both_921 = Both
check_Lower_977 :: Integer -> T_BalanceInterval_919
check_Lower_977 = Lower
check_Upper_991 :: Integer -> T_BalanceInterval_919
check_Upper_991 = Upper
cover_BalanceInterval_919 :: BalanceInterval -> ()
cover_BalanceInterval_919 x
  = case x of
      Both _ _ -> ()
      Lower _ -> ()
      Upper _ -> ()
