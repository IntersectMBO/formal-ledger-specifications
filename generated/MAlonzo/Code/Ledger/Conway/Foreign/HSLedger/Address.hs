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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Address

import GHC.Generics (Generic)
data Credential = KeyHashObj Integer | ScriptObj Integer
  deriving (Show, Eq, Generic)
data BaseAddr = BaseAddr {baseNet :: (), basePay :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential, baseStake :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential}
  deriving (Show, Eq, Generic)
data BootstrapAddr = BootstrapAddr {bootNet :: (), bootPay :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential, bootAttrsSize :: Integer}
  deriving (Show, Eq, Generic)
data RwdAddr = RwdAddr {rwdNet :: (), rwdStake :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential}
  deriving (Show, Eq, Generic)
type Addr = (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr)
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-Credential
d_HsTy'45'Credential_10 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Credential_10 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-Credential
d_Conv'45'Credential_12 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Credential_12
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v1
                -> coe C_KeyHashObj_29 (coe v1)
              MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v1
                -> coe C_ScriptObj_63 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_KeyHashObj_29 v1
                -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
              C_ScriptObj_63 v1
                -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-BaseAddr
d_HsTy'45'BaseAddr_14 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BaseAddr_14 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-BaseAddr
d_Conv'45'BaseAddr_16 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BaseAddr_16
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_2765 v1 v2 v3
                -> coe
                     C_BaseAddr_737 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
                                     -> coe C_KeyHashObj_29 (coe v5)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
                                     -> coe C_ScriptObj_63 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_29 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v5)
                                   C_ScriptObj_63 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
                                     -> coe C_KeyHashObj_29 (coe v5)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
                                     -> coe C_ScriptObj_63 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_29 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v5)
                                   C_ScriptObj_63 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BaseAddr_737 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_2765
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
                                     -> coe C_KeyHashObj_29 (coe v5)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
                                     -> coe C_ScriptObj_63 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_29 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v5)
                                   C_ScriptObj_63 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
                                     -> coe C_KeyHashObj_29 (coe v5)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
                                     -> coe C_ScriptObj_63 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_29 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v5)
                                   C_ScriptObj_63 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-BootstrapAddr
d_HsTy'45'BootstrapAddr_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BootstrapAddr_18 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-BootstrapAddr
d_Conv'45'BootstrapAddr_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BootstrapAddr_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_2987 v1 v2 v3
                -> coe
                     C_BootstrapAddr_2499 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
                                     -> coe C_KeyHashObj_29 (coe v5)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
                                     -> coe C_ScriptObj_63 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_29 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v5)
                                   C_ScriptObj_63 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BootstrapAddr_2499 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_2987
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
                                     -> coe C_KeyHashObj_29 (coe v5)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
                                     -> coe C_ScriptObj_63 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_29 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v5)
                                   C_ScriptObj_63 v5
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-RwdAddr
d_HsTy'45'RwdAddr_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RwdAddr_22 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-RwdAddr
d_Conv'45'RwdAddr_24 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RwdAddr_24
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193 v1 v2
                -> coe
                     C_RwdAddr_3955 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
                                     -> coe C_KeyHashObj_29 (coe v4)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                                     -> coe C_ScriptObj_63 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_29 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v4)
                                   C_ScriptObj_63 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RwdAddr_3955 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
                                     -> coe C_KeyHashObj_29 (coe v4)
                                   MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                                     -> coe C_ScriptObj_63 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_29 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v4)
                                   C_ScriptObj_63 v4
                                     -> coe MAlonzo.Code.Ledger.Address.C_ScriptObj_20 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.Credential
d_Credential_27 = ()
type T_Credential_27 = Credential
pattern C_KeyHashObj_29 a0 = KeyHashObj a0
pattern C_ScriptObj_63 a0 = ScriptObj a0
check_KeyHashObj_29 :: Integer -> T_Credential_27
check_KeyHashObj_29 = KeyHashObj
check_ScriptObj_63 :: Integer -> T_Credential_27
check_ScriptObj_63 = ScriptObj
cover_Credential_27 :: Credential -> ()
cover_Credential_27 x
  = case x of
      KeyHashObj _ -> ()
      ScriptObj _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.BaseAddr
d_BaseAddr_735 = ()
type T_BaseAddr_735 = BaseAddr
pattern C_BaseAddr_737 a0 a1 a2 = BaseAddr a0 a1 a2
check_BaseAddr_737 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Credential_27 -> T_Credential_27 -> T_BaseAddr_735
check_BaseAddr_737 = BaseAddr
cover_BaseAddr_735 :: BaseAddr -> ()
cover_BaseAddr_735 x
  = case x of
      BaseAddr _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr
d_BootstrapAddr_2497 = ()
type T_BootstrapAddr_2497 = BootstrapAddr
pattern C_BootstrapAddr_2499 a0 a1 a2 = BootstrapAddr a0 a1 a2
check_BootstrapAddr_2499 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Credential_27 -> Integer -> T_BootstrapAddr_2497
check_BootstrapAddr_2499 = BootstrapAddr
cover_BootstrapAddr_2497 :: BootstrapAddr -> ()
cover_BootstrapAddr_2497 x
  = case x of
      BootstrapAddr _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.RwdAddr
d_RwdAddr_3953 = ()
type T_RwdAddr_3953 = RwdAddr
pattern C_RwdAddr_3955 a0 a1 = RwdAddr a0 a1
check_RwdAddr_3955 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Credential_27 -> T_RwdAddr_3953
check_RwdAddr_3955 = RwdAddr
cover_RwdAddr_3953 :: RwdAddr -> ()
cover_RwdAddr_3953 x
  = case x of
      RwdAddr _ _ -> ()
