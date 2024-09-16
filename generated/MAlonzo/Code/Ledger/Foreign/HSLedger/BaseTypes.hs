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

module MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Set.Theory

type Coin = Integer
type ExUnits = (Integer, Integer)
type T = ()
type Redeemer = ()
type AuxiliaryData = ()
type Epoch = Integer
type ScriptHash = Integer
type GovActionID = (Integer, Integer)
-- Ledger.Foreign.HSLedger.BaseTypes.iConvTop
d_iConvTop_8 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvTop_8
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Foreign.HSLedger.BaseTypes.iConvNat
d_iConvNat_10 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvNat_10
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Foreign.HSLedger.BaseTypes.iConvString
d_iConvString_12 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvString_12
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Foreign.HSLedger.BaseTypes.iConvBool
d_iConvBool_14 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvBool_14
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Foreign.HSLedger.BaseTypes.HsTy-⊥
d_HsTy'45''8869'_16 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45''8869'_16 = erased
-- Ledger.Foreign.HSLedger.BaseTypes.Conv-⊥
d_Conv'45''8869'_18 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45''8869'_18
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
      (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.BaseTypes.HsTy-⊤
d_HsTy'45''8868'_20 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45''8868'_20 = erased
-- Ledger.Foreign.HSLedger.BaseTypes.HsTy-Rational
d_HsTy'45'Rational_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Rational_22 = erased
-- Ledger.Foreign.HSLedger.BaseTypes.Conv-Rational
d_Conv'45'Rational_24 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Rational_24
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v1)
                     (coe addInt (coe (1 :: Integer)) (coe v2))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v1 v2
                -> case coe v2 of
                     0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                     _ -> coe
                            MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.BaseTypes.HsTy-HSSet
d_HsTy'45'HSSet_40 ::
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSSet_40 = erased
-- Ledger.Foreign.HSLedger.BaseTypes.Conv-HSSet
d_Conv'45'HSSet_48 ::
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSSet_48 ~v0 ~v1 v2 = du_Conv'45'HSSet_48 v2
du_Conv'45'HSSet_48 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Conv'45'HSSet_48 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                    (coe v0))
                 v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.du_fromList_416
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                    (coe v0))
                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_elems_36 (coe v1)))))
-- Ledger.Foreign.HSLedger.BaseTypes.HsTy-Map
d_HsTy'45'Map_56 ::
  () ->
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Map_56 = erased
-- Ledger.Foreign.HSLedger.BaseTypes.Conv-HSMap
d_Conv'45'HSMap_70 ::
  () ->
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSMap_70 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_Conv'45'HSMap_70 v4 v5 v6
du_Conv'45'HSMap_70 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Conv'45'HSMap_70 v0 v1 v2
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                    (coe
                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92 (coe v1)
                       (coe v2)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Foreign.Convertible.d_from_20
              (coe
                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114 (coe v0)
                 (coe v1) (coe v2))
              (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v3))))
-- Ledger.Foreign.HSLedger.BaseTypes.HsTy-ComputationResult
d_HsTy'45'ComputationResult_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'ComputationResult_80 = erased
-- Ledger.Foreign.HSLedger.BaseTypes.Conv-ComputationResult
d_Conv'45'ComputationResult_86 ::
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'ComputationResult_86 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Conv'45'ComputationResult_86 v4 v5
du_Conv'45'ComputationResult_86 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Conv'45'ComputationResult_86 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_Success_50
                     (coe MAlonzo.Code.Foreign.Convertible.d_to_18 v1 v3)
              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_Failure_52
                     (coe MAlonzo.Code.Foreign.Convertible.d_to_18 v0 v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Ledger.Foreign.HSTypes.C_Success_50 v3
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe MAlonzo.Code.Foreign.Convertible.d_from_20 v1 v3)
              MAlonzo.Code.Ledger.Foreign.HSTypes.C_Failure_52 v3
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                     (coe MAlonzo.Code.Foreign.Convertible.d_from_20 v0 v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
