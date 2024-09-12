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

module MAlonzo.Code.Ledger.Foreign.HSLedger.PParams where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.PParams

import GHC.Generics (Generic)
data DrepThresholds = DrepThresholds {p1 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p2a :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p2b :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p3 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p4 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p5a :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p5b :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p5c :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p5d :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, p6 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational}
  deriving (Show, Eq, Generic)
data PoolThresholds = PoolThresholds {q1 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, q2a :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, q2b :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, q4 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, q5e :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational}
  deriving (Show, Eq, Generic)
data Acnt = MkAcnt {treasury :: Integer, reserves :: Integer}
  deriving (Show, Eq, Generic)
data PParams = MkPParams {ppMaxBlockSize :: Integer, ppMaxTxSize :: Integer, ppMaxHeaderSize :: Integer, ppMaxTxExUnits :: (Integer, Integer), ppMaxBlockExUnits :: (Integer, Integer), ppMaxValSize :: Integer, ppMaxCollateralInputs :: Integer, ppPv :: (Integer, Integer), ppA :: Integer, ppB :: Integer, ppKeyDeposit :: Integer, ppPoolDeposit :: Integer, ppCoinsPerUTxOByte :: Integer, ppPrices :: (), ppMinFeeRefScriptCoinsPerByte :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, ppMinUTxOValue :: Integer, ppEmax :: Integer, ppNopt :: Integer, ppA0 :: MAlonzo.Code.Ledger.Foreign.HSTypes.Rational, ppCollateralPercentage :: Integer, ppCostmdls :: (), ppPoolThresholds :: MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.PoolThresholds, ppDrepThresholds :: MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.DrepThresholds, ppCcMinSize :: Integer, ppCcMaxTermLength :: Integer, ppGovActionLifetime :: Integer, ppGovActionDeposit :: Integer, ppDrepDeposit :: Integer, ppDrepActivity :: Integer}
  deriving (Show, Eq, Generic)
data PParamsUpdate = MkPParamsUpdate {ppuMaxBlockSize :: (Maybe Integer), ppuMaxTxSize :: (Maybe Integer), ppuMaxHeaderSize :: (Maybe Integer), ppuMaxValSize :: (Maybe Integer), ppuMaxCollateralInputs :: (Maybe Integer), ppuMaxTxExUnits :: (Maybe (Integer, Integer)), ppuMaxBlockExUnits :: (Maybe (Integer, Integer)), ppuPv :: (Maybe (Integer, Integer)), ppuA :: (Maybe Integer), ppuB :: (Maybe Integer), ppuKeyDeposit :: (Maybe Integer), ppuPoolDeposit :: (Maybe Integer), ppuCoinsPerUTxOByte :: (Maybe Integer), ppuMinFeeRefScriptCoinsPerByte :: (Maybe MAlonzo.Code.Ledger.Foreign.HSTypes.Rational), ppuPrices :: (Maybe ()), ppuMinUTxOValue :: (Maybe Integer), ppuA0 :: (Maybe MAlonzo.Code.Ledger.Foreign.HSTypes.Rational), ppuEmax :: (Maybe Integer), ppuNopt :: (Maybe Integer), ppuCollateralPercentage :: (Maybe Integer), ppuCostmdls :: (Maybe ()), ppuDrepThresholds :: (Maybe MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.DrepThresholds), ppuPoolThresholds :: (Maybe MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.PoolThresholds), ppuGovActionLifetime :: (Maybe Integer), ppuGovActionDeposit :: (Maybe Integer), ppuDrepDeposit :: (Maybe Integer), ppuDrepActivity :: (Maybe Integer), ppuCcMinSize :: (Maybe Integer), ppuCcMaxTermLength :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.PParams.HsTy-DrepThresholds
d_HsTy'45'DrepThresholds_8 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'DrepThresholds_8 = erased
-- Ledger.Foreign.HSLedger.PParams.Conv-DrepThresholds
d_Conv'45'DrepThresholds_10 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'DrepThresholds_10
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_1847 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     C_DrepThresholds_23
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v6)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v9)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v10)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds_23 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_1847
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v6)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v9)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v12)
                                          (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v10)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.PParams.HsTy-PoolThresholds
d_HsTy'45'PoolThresholds_12 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PoolThresholds_12 = erased
-- Ledger.Foreign.HSLedger.PParams.Conv-PoolThresholds
d_Conv'45'PoolThresholds_14 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PoolThresholds_14
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_2411 v1 v2 v3 v4 v5
                -> coe
                     C_PoolThresholds_7421
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds_7421 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_2411
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v7)
                                          (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.PParams.HsTy-Acnt
d_HsTy'45'Acnt_16 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Acnt_16 = erased
-- Ledger.Foreign.HSLedger.PParams.Conv-Acnt
d_Conv'45'Acnt_18 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Acnt_18
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154 v1 v2
                -> coe C_MkAcnt_9595 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkAcnt_9595 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.PParams.HsTy-PParams
d_HsTy'45'PParams_20 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PParams_20 = erased
-- Ledger.Foreign.HSLedger.PParams.DrepThresholds
d_DrepThresholds_21 = ()
type T_DrepThresholds_21 = DrepThresholds
pattern C_DrepThresholds_23 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = DrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_DrepThresholds_23 ::
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  T_DrepThresholds_21
check_DrepThresholds_23 = DrepThresholds
cover_DrepThresholds_21 :: DrepThresholds -> ()
cover_DrepThresholds_21 x
  = case x of
      DrepThresholds _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.HSLedger.PParams.Conv-PParams
d_Conv'45'PParams_22 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PParams_22
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_3591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
                -> coe
                     C_MkPParams_10189 (coe v1) (coe v2) (coe v3)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                           (coe
                              (\ v30 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                           (coe
                              (\ v30 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                           (coe v5)))
                     (coe v6) (coe v7)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                           (coe
                              (\ v30 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                           (coe v8)))
                     (coe v9) (coe v10) (coe v11) (coe v12) (coe v13)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v31)
                                          (coe addInt (coe (1 :: Integer)) (coe v32))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                     -> case coe v32 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v31) (coe v32)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v15)
                     (coe v16) (coe v17) (coe v18)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v31)
                                          (coe addInt (coe (1 :: Integer)) (coe v32))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                     -> case coe v32 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v31) (coe v32)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v19)
                     (coe v20) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        C_PoolThresholds_7421
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_Q1_232 (coe v22)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_Q2a_234 (coe v22)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_Q2b_236 (coe v22)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_Q4_238 (coe v22)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_Q5e_240 (coe v22))))
                     (coe
                        C_DrepThresholds_23
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P1_200 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P2a_202 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P2b_204 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P3_206 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P4_208 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P5a_210 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P5b_212 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P5c_214 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P5d_216 (coe v23)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v31) (coe addInt (coe (1 :: Integer)) (coe v32))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v30 ->
                                    case coe v30 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                        -> case coe v32 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v31) (coe v32)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_P6_218 (coe v23))))
                     (coe v24) (coe v25) (coe v26) (coe v27) (coe v28) (coe v29)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkPParams_10189 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
                -> coe
                     MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_3591 (coe v1)
                     (coe v2) (coe v3)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (coe
                           (\ v30 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (coe
                           (\ v30 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v5))
                     (coe v6) (coe v7)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (coe
                           (\ v30 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v8))
                     (coe v9) (coe v10) (coe v11) (coe v12) (coe v13)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v31)
                                          (coe addInt (coe (1 :: Integer)) (coe v32))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                     -> case coe v32 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v31) (coe v32)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v15)
                     (coe v16) (coe v17) (coe v18)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v31 v32
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 (coe v31)
                                          (coe addInt (coe (1 :: Integer)) (coe v32))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v31 v32
                                     -> case coe v32 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v31) (coe v32)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v19)
                     (coe v20) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_2411 v31 v32 v33 v34 v35
                                     -> coe
                                          C_PoolThresholds_7421
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v31)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v34)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v35)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   C_PoolThresholds_7421 v31 v32 v33 v34 v35
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_2411
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v31)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v34)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v37)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v38))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v36 ->
                                                      case coe v36 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v37 v38
                                                          -> case coe v38 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v37) (coe v38)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v35)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v22)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_1847 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40
                                     -> coe
                                          C_DrepThresholds_23
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v31)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v34)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v35)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v36)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v38)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v39)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v40)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v30 ->
                                 case coe v30 of
                                   C_DrepThresholds_23 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_1847
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v31)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v32)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v33)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v34)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v35)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v36)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v38)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v39)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v42 v43
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v42)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v43))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v41 ->
                                                      case coe v41 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v42 v43
                                                          -> case coe v43 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v42) (coe v43)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v40)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v23)
                     (coe v24) (coe v25) (coe v26) (coe v27) (coe v28) (coe v29)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.PParams.HsTy-PParamsUpdate
d_HsTy'45'PParamsUpdate_24 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PParamsUpdate_24 = erased
-- Ledger.Foreign.HSLedger.PParams.Conv-PParamsUpdate
d_Conv'45'PParamsUpdate_26 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PParamsUpdate_26
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.PParams.C_PParamsUpdate'46'constructor_614931 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
                -> coe
                     C_MkPParamsUpdate_84243
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        v6)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        v8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v9)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v10)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v11)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v15)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v16)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))
                        v17)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v18)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v19)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v20)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v21)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'DrepThresholds_10))
                        v22)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'PoolThresholds_14))
                        v23)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v24)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v25)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v26)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v27)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v28)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v29)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkPParamsUpdate_84243 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
                -> coe
                     MAlonzo.Code.Ledger.PParams.C_PParamsUpdate'46'constructor_614931
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        v6)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                        v8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v9)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v10)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v11)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v15)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v16)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))
                        v17)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v18)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v19)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v20)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v30 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v21)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'DrepThresholds_10))
                        v22)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'PoolThresholds_14))
                        v23)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v24)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v25)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v26)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v27)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v28)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        v29)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.PParams.PoolThresholds
d_PoolThresholds_7419 = ()
type T_PoolThresholds_7419 = PoolThresholds
pattern C_PoolThresholds_7421 a0 a1 a2 a3 a4 = PoolThresholds a0 a1 a2 a3 a4
check_PoolThresholds_7421 ::
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  T_PoolThresholds_7419
check_PoolThresholds_7421 = PoolThresholds
cover_PoolThresholds_7419 :: PoolThresholds -> ()
cover_PoolThresholds_7419 x
  = case x of
      PoolThresholds _ _ _ _ _ -> ()
-- Ledger.Foreign.HSLedger.PParams.Acnt
d_Acnt_9593 = ()
type T_Acnt_9593 = Acnt
pattern C_MkAcnt_9595 a0 a1 = MkAcnt a0 a1
check_MkAcnt_9595 :: Integer -> Integer -> T_Acnt_9593
check_MkAcnt_9595 = MkAcnt
cover_Acnt_9593 :: Acnt -> ()
cover_Acnt_9593 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.HSLedger.PParams.PParams
d_PParams_10187 = ()
type T_PParams_10187 = PParams
pattern C_MkPParams_10189 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28
check_MkPParams_10189 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_PoolThresholds_7419 ->
  T_DrepThresholds_21 ->
  Integer ->
  Integer ->
  Integer -> Integer -> Integer -> Integer -> T_PParams_10187
check_MkPParams_10189 = MkPParams
cover_PParams_10187 :: PParams -> ()
cover_PParams_10187 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Foreign.HSLedger.PParams.PParamsUpdate
d_PParamsUpdate_84241 = ()
type T_PParamsUpdate_84241 = PParamsUpdate
pattern C_MkPParamsUpdate_84243 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 = MkPParamsUpdate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28
check_MkPParamsUpdate_84243 ::
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Foreign.HSTypes.T_Rational_8 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_DrepThresholds_21 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_PoolThresholds_7419 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParamsUpdate_84241
check_MkPParamsUpdate_84243 = MkPParamsUpdate
cover_PParamsUpdate_84241 :: PParamsUpdate -> ()
cover_PParamsUpdate_84241 x
  = case x of
      MkPParamsUpdate _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
