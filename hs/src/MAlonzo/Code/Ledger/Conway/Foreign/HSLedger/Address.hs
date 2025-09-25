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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

import GHC.Generics (Generic)
data HSVKey = MkHSVKey {hvkVKey :: Integer, hvkStoredHash :: Integer}
  deriving (Show, Eq, Generic)
data Credential = KeyHashObj Integer | ScriptObj Integer
  deriving (Show, Eq, Generic)
data BaseAddr = BaseAddr {baseNet :: Integer, basePay :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential, baseStake :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential)}
  deriving (Show, Eq, Generic)
data BootstrapAddr = BootstrapAddr {bootNet :: Integer, bootPay :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential, bootAttrsSize :: Integer}
  deriving (Show, Eq, Generic)
data RwdAddr = RwdAddr {rwdNet :: Integer, rwdStake :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential}
  deriving (Show, Eq, Generic)
type Addr = (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr)
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-HSVKey
d_HsTy'45'HSVKey_10 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSVKey_10 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-HSVKey
d_Conv'45'HSVKey_12 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSVKey_12
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.C_MkHSVKey_24 v1 v2
                -> coe C_MkHSVKey_17 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_17 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.C_MkHSVKey_24
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-Credential
d_HsTy'45'Credential_14 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Credential_14 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.HSVKey
d_HSVKey_15 = ()
type T_HSVKey_15 = HSVKey
pattern C_MkHSVKey_17 a0 a1 = MkHSVKey a0 a1
check_MkHSVKey_17 :: Integer -> Integer -> T_HSVKey_15
check_MkHSVKey_17 = MkHSVKey
cover_HSVKey_15 :: HSVKey -> ()
cover_HSVKey_15 x
  = case x of
      MkHSVKey _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-Credential
d_Conv'45'Credential_16 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Credential_16
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v1
                -> coe C_KeyHashObj_591 (coe v1)
              MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v1
                -> coe C_ScriptObj_621 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_KeyHashObj_591 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                     (coe v1)
              C_ScriptObj_621 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-BaseAddr
d_HsTy'45'BaseAddr_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BaseAddr_18 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-BaseAddr
d_Conv'45'BaseAddr_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BaseAddr_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_86 v1 v2 v3
                -> coe
                     C_BaseAddr_1329 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_591 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_621 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_591 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_621 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Credential_16))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BaseAddr_1329 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_86
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_591 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_621 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_591 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_621 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Credential_16))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-BootstrapAddr
d_HsTy'45'BootstrapAddr_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BootstrapAddr_22 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-BootstrapAddr
d_Conv'45'BootstrapAddr_24 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BootstrapAddr_24
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_102 v1 v2 v3
                -> coe
                     C_BootstrapAddr_3131 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_591 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_621 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_591 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_621 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BootstrapAddr_3131 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_102
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_591 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_621 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_591 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_621 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.HsTy-RwdAddr
d_HsTy'45'RwdAddr_26 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RwdAddr_26 = erased
-- Ledger.Conway.Foreign.HSLedger.Address.Conv-RwdAddr
d_Conv'45'RwdAddr_28 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RwdAddr_28
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v1 v2
                -> coe
                     C_RwdAddr_4501 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v4
                                     -> coe C_KeyHashObj_591 (coe v4)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v4
                                     -> coe C_ScriptObj_621 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_591 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v4)
                                   C_ScriptObj_621 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RwdAddr_4501 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v4
                                     -> coe C_KeyHashObj_591 (coe v4)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v4
                                     -> coe C_ScriptObj_621 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_591 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v4)
                                   C_ScriptObj_621 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Address.Credential
d_Credential_589 = ()
type T_Credential_589 = Credential
pattern C_KeyHashObj_591 a0 = KeyHashObj a0
pattern C_ScriptObj_621 a0 = ScriptObj a0
check_KeyHashObj_591 :: Integer -> T_Credential_589
check_KeyHashObj_591 = KeyHashObj
check_ScriptObj_621 :: Integer -> T_Credential_589
check_ScriptObj_621 = ScriptObj
cover_Credential_589 :: Credential -> ()
cover_Credential_589 x
  = case x of
      KeyHashObj _ -> ()
      ScriptObj _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.BaseAddr
d_BaseAddr_1327 = ()
type T_BaseAddr_1327 = BaseAddr
pattern C_BaseAddr_1329 a0 a1 a2 = BaseAddr a0 a1 a2
check_BaseAddr_1329 ::
  Integer ->
  T_Credential_589 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_589 ->
  T_BaseAddr_1327
check_BaseAddr_1329 = BaseAddr
cover_BaseAddr_1327 :: BaseAddr -> ()
cover_BaseAddr_1327 x
  = case x of
      BaseAddr _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr
d_BootstrapAddr_3129 = ()
type T_BootstrapAddr_3129 = BootstrapAddr
pattern C_BootstrapAddr_3131 a0 a1 a2 = BootstrapAddr a0 a1 a2
check_BootstrapAddr_3131 ::
  Integer -> T_Credential_589 -> Integer -> T_BootstrapAddr_3129
check_BootstrapAddr_3131 = BootstrapAddr
cover_BootstrapAddr_3129 :: BootstrapAddr -> ()
cover_BootstrapAddr_3129 x
  = case x of
      BootstrapAddr _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Address.RwdAddr
d_RwdAddr_4499 = ()
type T_RwdAddr_4499 = RwdAddr
pattern C_RwdAddr_4501 a0 a1 = RwdAddr a0 a1
check_RwdAddr_4501 :: Integer -> T_Credential_589 -> T_RwdAddr_4499
check_RwdAddr_4501 = RwdAddr
cover_RwdAddr_4499 :: RwdAddr -> ()
cover_RwdAddr_4499 x
  = case x of
      RwdAddr _ _ -> ()
