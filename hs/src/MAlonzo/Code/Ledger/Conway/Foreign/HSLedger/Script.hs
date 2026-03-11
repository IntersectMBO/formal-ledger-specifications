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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Script where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

import GHC.Generics (Generic)
data HSLanguage = PV1  | PV2  | PV3 
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Script.HSLanguage
d_HSLanguage_10 = ()
data T_HSLanguage_10 = C_PV1_12 | C_PV2_14 | C_PV3_16
-- Ledger.Conway.Foreign.HSLedger.Script.HSLanguage
d_HSLanguage_15 = ()
type T_HSLanguage_15 = HSLanguage
pattern C_PV1_17 = PV1
pattern C_PV2_19 = PV2
pattern C_PV3_21 = PV3
check_PV1_17 :: T_HSLanguage_15
check_PV1_17 = PV1
check_PV2_19 :: T_HSLanguage_15
check_PV2_19 = PV2
check_PV3_21 :: T_HSLanguage_15
check_PV3_21 = PV3
cover_HSLanguage_15 :: HSLanguage -> ()
cover_HSLanguage_15 x
  = case x of
      PV1 -> ()
      PV2 -> ()
      PV3 -> ()
-- Ledger.Conway.Foreign.HSLedger.Script.HsType-HSLanguage
d_HsType'45'HSLanguage_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsType'45'HSLanguage_18 = erased
-- Ledger.Conway.Foreign.HSLedger.Script.Convert-HSLanguage
d_Convert'45'HSLanguage_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convert'45'HSLanguage_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_PV1_12 -> coe C_PV1_17
              C_PV2_14 -> coe C_PV2_19
              C_PV3_16 -> coe C_PV3_21
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_PV1_17 -> coe C_PV1_12
              C_PV2_19 -> coe C_PV2_14
              C_PV3_21 -> coe C_PV3_16
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Script.DecEq-HSLanguage
d_DecEq'45'HSLanguage_22 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_22
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_PV1_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_PV1_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_PV2_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PV3_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PV2_14
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_PV1_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PV2_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_PV3_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PV3_16
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_PV1_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PV2_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PV3_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Script.Show-HSLanguage
d_Show'45'HSLanguage_24 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_24
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_PV1_12 -> coe ("PV1" :: Data.Text.Text)
              C_PV2_14 -> coe ("PV2" :: Data.Text.Text)
              C_PV3_16 -> coe ("PV3" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
