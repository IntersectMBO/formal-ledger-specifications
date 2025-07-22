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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams where

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
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Util
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat
import qualified MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval

import GHC.Generics (Generic)
data DrepThresholds = MkDrepThresholds {p1 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p2a :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p2b :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p3 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p4 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p5a :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p5b :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p5c :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p5d :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, p6 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational}
  deriving (Show, Eq, Generic)
data PoolThresholds = MkPoolThresholds {q1 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, q2a :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, q2b :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, q4 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, q5 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational}
  deriving (Show, Eq, Generic)
data Acnt = MkAcnt {treasury :: Integer, reserves :: Integer}
  deriving (Show, Eq, Generic)
data PParams = MkPParams {ppMaxBlockSize :: Integer, ppMaxTxSize :: Integer, ppMaxHeaderSize :: Integer, ppMaxTxExUnits :: (Integer, Integer), ppMaxBlockExUnits :: (Integer, Integer), ppMaxValSize :: Integer, ppMaxCollateralInputs :: Integer, ppPv :: (Integer, Integer), ppA :: Integer, ppB :: Integer, ppKeyDeposit :: Integer, ppPoolDeposit :: Integer, ppMonetaryExpansion :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, ppTreasuryCut :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, ppCoinsPerUTxOByte :: Integer, ppPrices :: (), ppMinFeeRefScriptCoinsPerByte :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, ppMaxRefScriptSizePerTx :: Integer, ppMaxRefScriptSizePerBlock :: Integer, ppRefScriptCostStride :: Integer, ppRefScriptCostMultiplier :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, ppMinUTxOValue :: Integer, ppEmax :: Integer, ppNopt :: Integer, ppA0 :: MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational, ppCollateralPercentage :: Integer, ppCostmdls :: (), ppPoolThresholds :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PoolThresholds, ppDrepThresholds :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.DrepThresholds, ppCcMinSize :: Integer, ppCcMaxTermLength :: Integer, ppGovActionLifetime :: Integer, ppGovActionDeposit :: Integer, ppDrepDeposit :: Integer, ppDrepActivity :: Integer}
  deriving (Show, Eq, Generic)
data PParamsUpdate = MkPParamsUpdate {ppuMaxBlockSize :: (Maybe Integer), ppuMaxTxSize :: (Maybe Integer), ppuMaxHeaderSize :: (Maybe Integer), ppuMaxValSize :: (Maybe Integer), ppuMaxCollateralInputs :: (Maybe Integer), ppuMaxTxExUnits :: (Maybe (Integer, Integer)), ppuMaxBlockExUnits :: (Maybe (Integer, Integer)), ppuPv :: (Maybe (Integer, Integer)), ppuA :: (Maybe Integer), ppuB :: (Maybe Integer), ppuKeyDeposit :: (Maybe Integer), ppuPoolDeposit :: (Maybe Integer), ppuMonetaryExpansion :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational), ppuTreasuryCut :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational), ppuCoinsPerUTxOByte :: (Maybe Integer), ppuPrices :: (Maybe ()), ppuMinFeeRefScriptCoinsPerByte :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational), ppuMaxRefScriptSizePerTx :: (Maybe Integer), ppuMaxRefScriptSizePerBlock :: (Maybe Integer), ppuRefScriptCostStride :: (Maybe Integer), ppuRefScriptCostMultiplier :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational), ppuMinUTxOValue :: (Maybe Integer), ppuA0 :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational), ppuEmax :: (Maybe Integer), ppuNopt :: (Maybe Integer), ppuCollateralPercentage :: (Maybe Integer), ppuCostmdls :: (Maybe ()), ppuDrepThresholds :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.DrepThresholds), ppuPoolThresholds :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PoolThresholds), ppuGovActionLifetime :: (Maybe Integer), ppuGovActionDeposit :: (Maybe Integer), ppuDrepDeposit :: (Maybe Integer), ppuDrepActivity :: (Maybe Integer), ppuCcMinSize :: (Maybe Integer), ppuCcMaxTermLength :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.PParams.HsTy-DrepThresholds
d_HsTy'45'DrepThresholds_10 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'DrepThresholds_10 = erased
-- Ledger.Conway.Foreign.HSLedger.PParams.Conv-DrepThresholds
d_Conv'45'DrepThresholds_12 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'DrepThresholds_12
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.PParams.C_DrepThresholds'46'constructor_2867 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     C_MkDrepThresholds_29
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
              C_MkDrepThresholds_29 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     MAlonzo.Code.Ledger.Conway.PParams.C_DrepThresholds'46'constructor_2867
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v12) (coe addInt (coe (1 :: Integer)) (coe v13))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v11 ->
                                 case coe v11 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v12 v13
                                     -> case coe v13 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v12) (coe v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v10)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.PParams.HsTy-PoolThresholds
d_HsTy'45'PoolThresholds_14 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PoolThresholds_14 = erased
-- Ledger.Conway.Foreign.HSLedger.PParams.Conv-PoolThresholds
d_Conv'45'PoolThresholds_16 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PoolThresholds_16
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.PParams.C_PoolThresholds'46'constructor_3431 v1 v2 v3 v4 v5
                -> coe
                     C_MkPoolThresholds_7433
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
              C_MkPoolThresholds_7433 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.PParams.C_PoolThresholds'46'constructor_3431
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v7) (coe addInt (coe (1 :: Integer)) (coe v8))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v7 v8
                                     -> case coe v8 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.PParams.HsTy-Acnt
d_HsTy'45'Acnt_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Acnt_18 = erased
-- Ledger.Conway.Foreign.HSLedger.PParams.Conv-Acnt
d_Conv'45'Acnt_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Acnt_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.PParams.C_'10214'_'44'_'10215''7491'_170 v1 v2
                -> coe C_MkAcnt_9607 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkAcnt_9607 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.PParams.C_'10214'_'44'_'10215''7491'_170
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.PParams.HsTy-PParams
d_HsTy'45'PParams_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PParams_22 = erased
-- Ledger.Conway.Foreign.HSLedger.PParams.Conv-PParams
d_Conv'45'PParams_24 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PParams_24
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.PParams.C_PParams'46'constructor_5025 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     C_MkPParams_10201 (coe v1) (coe v2) (coe v3)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              (\ v36 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              (\ v36 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe v5)))
                     (coe v6) (coe v7)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              (\ v36 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe v8)))
                     (coe v9) (coe v10) (coe v11) (coe v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                           (coe v13)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                           (coe v14)))
                     (coe v15) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v17)
                     (coe v18) (coe v19)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_fromPosNat_18
                        (coe v20))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v21)
                     (coe v22) (coe v23) (coe v24)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v25)
                     (coe v26) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        C_MkPoolThresholds_7433
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286 (coe v28)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288 (coe v28)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290 (coe v28)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292 (coe v28)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294 (coe v28))))
                     (coe
                        C_MkDrepThresholds_29
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P1_254 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P3_260 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P4_262 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270 (coe v29)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                        -> coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                             (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v36 ->
                                    case coe v36 of
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                        -> case coe v38 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v37) (coe v38)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.Conway.PParams.d_P6_272 (coe v29))))
                     (coe v30) (coe v31) (coe v32) (coe v33) (coe v34) (coe v35)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkPParams_10201 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     MAlonzo.Code.Ledger.Conway.PParams.C_PParams'46'constructor_5025
                     (coe v1) (coe v2) (coe v3)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (coe
                           (\ v36 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (coe
                           (\ v36 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v5))
                     (coe v6) (coe v7)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (coe
                           (\ v36 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v8))
                     (coe v9) (coe v10) (coe v11) (coe v12)
                     (let v36
                            = MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_toUnitInterval_76
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                      (coe
                                         (\ v36 ->
                                            case coe v36 of
                                              MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                -> coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                     (coe v37)
                                                     (coe addInt (coe (1 :: Integer)) (coe v38))
                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                      (coe
                                         (\ v36 ->
                                            case coe v36 of
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                                -> case coe v38 of
                                                     0 -> coe
                                                            MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                     _ -> coe
                                                            MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                            (coe v37) (coe v38)
                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                   v13) in
                      coe
                        (case coe v36 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v37 -> coe v37
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                                  ("Formal Spec: rational outside of unit interval"
                                   ::
                                   Data.Text.Text)
                           _ -> MAlonzo.RTE.mazUnreachableError))
                     (let v36
                            = MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_toUnitInterval_76
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                      (coe
                                         (\ v36 ->
                                            case coe v36 of
                                              MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                                -> coe
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                     (coe v37)
                                                     (coe addInt (coe (1 :: Integer)) (coe v38))
                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                      (coe
                                         (\ v36 ->
                                            case coe v36 of
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                                -> case coe v38 of
                                                     0 -> coe
                                                            MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                     _ -> coe
                                                            MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                            (coe v37) (coe v38)
                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                   v14) in
                      coe
                        (case coe v36 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v37 -> coe v37
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                                  ("Formal Spec: rational outside of unit interval"
                                   ::
                                   Data.Text.Text)
                           _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe v15) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v17)
                     (coe v18) (coe v19)
                     (let v36
                            = MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_toPosNat_20
                                (coe v20) in
                      coe
                        (case coe v36 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v37 -> coe v37
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                                  ("Formal Spec: natural number is zero (not nonZero)"
                                   ::
                                   Data.Text.Text)
                           _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v21)
                     (coe v22) (coe v23) (coe v24)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v37 v38
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                          (coe v37) (coe addInt (coe (1 :: Integer)) (coe v38))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v37 v38
                                     -> case coe v38 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v37) (coe v38)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v25)
                     (coe v26) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.PParams.C_PoolThresholds'46'constructor_3431 v37 v38 v39 v40 v41
                                     -> coe
                                          C_MkPoolThresholds_7433
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v38)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v39)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v40)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v41)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   C_MkPoolThresholds_7433 v37 v38 v39 v40 v41
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.PParams.C_PoolThresholds'46'constructor_3431
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v38)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v39)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v40)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v43)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v44))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v42 ->
                                                      case coe v42 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v43 v44
                                                          -> case coe v44 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v43) (coe v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v41)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v28)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   MAlonzo.Code.Ledger.Conway.PParams.C_DrepThresholds'46'constructor_2867 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
                                     -> coe
                                          C_MkDrepThresholds_29
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v38)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v39)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v40)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v41)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v42)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v43)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v44)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v45)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v46)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v36 ->
                                 case coe v36 of
                                   C_MkDrepThresholds_29 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.PParams.C_DrepThresholds'46'constructor_2867
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v37)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v38)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v39)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v40)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v41)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v42)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v43)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v44)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v45)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v48 v49
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                                               (coe v48)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v49))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v47 ->
                                                      case coe v47 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v48 v49
                                                          -> case coe v49 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v48) (coe v49)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v46)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v29)
                     (coe v30) (coe v31) (coe v32) (coe v33) (coe v34) (coe v35)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.PParams.HsTy-PParamsUpdate
d_HsTy'45'PParamsUpdate_26 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PParamsUpdate_26 = erased
-- Ledger.Conway.Foreign.HSLedger.PParams.DrepThresholds
d_DrepThresholds_27 = ()
type T_DrepThresholds_27 = DrepThresholds
pattern C_MkDrepThresholds_29 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkDrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_MkDrepThresholds_29 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  T_DrepThresholds_27
check_MkDrepThresholds_29 = MkDrepThresholds
cover_DrepThresholds_27 :: DrepThresholds -> ()
cover_DrepThresholds_27 x
  = case x of
      MkDrepThresholds _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.PParams.Conv-PParamsUpdate
d_Conv'45'PParamsUpdate_28 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PParamsUpdate_28
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.PParams.C_PParamsUpdate'46'constructor_496235 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     C_MkPParamsUpdate_116167
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v6)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v9)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v10)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v11)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'UnitInterval_2130))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'UnitInterval_2130))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v15)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v16)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))
                        v17)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v18)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v19)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'PosNat_2142))
                        v20)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))
                        v21)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v22)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))
                        v23)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v24)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v25)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v26)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v27)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'DrepThresholds_12))
                        v28)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'PoolThresholds_16))
                        v29)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v30)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v31)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v32)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v33)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v34)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v35)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkPParamsUpdate_116167 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35
                -> coe
                     MAlonzo.Code.Ledger.Conway.PParams.C_PParamsUpdate'46'constructor_496235
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v6)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v8)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v9)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v10)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v11)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'UnitInterval_2130))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'UnitInterval_2130))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v15)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v16)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))
                        v17)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v18)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v19)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'PosNat_2142))
                        v20)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))
                        v21)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v22)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))
                        v23)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v24)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v25)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v26)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                              (coe (\ v36 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        v27)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'DrepThresholds_12))
                        v28)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'PoolThresholds_16))
                        v29)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v30)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v31)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v32)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v33)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v34)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v35)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.PParams.PoolThresholds
d_PoolThresholds_7431 = ()
type T_PoolThresholds_7431 = PoolThresholds
pattern C_MkPoolThresholds_7433 a0 a1 a2 a3 a4 = MkPoolThresholds a0 a1 a2 a3 a4
check_MkPoolThresholds_7433 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  T_PoolThresholds_7431
check_MkPoolThresholds_7433 = MkPoolThresholds
cover_PoolThresholds_7431 :: PoolThresholds -> ()
cover_PoolThresholds_7431 x
  = case x of
      MkPoolThresholds _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.PParams.Acnt
d_Acnt_9605 = ()
type T_Acnt_9605 = Acnt
pattern C_MkAcnt_9607 a0 a1 = MkAcnt a0 a1
check_MkAcnt_9607 :: Integer -> Integer -> T_Acnt_9605
check_MkAcnt_9607 = MkAcnt
cover_Acnt_9605 :: Acnt -> ()
cover_Acnt_9605 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.PParams.PParams
d_PParams_10199 = ()
type T_PParams_10199 = PParams
pattern C_MkPParams_10201 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34
check_MkPParams_10201 ::
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
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_PoolThresholds_7431 ->
  T_DrepThresholds_27 ->
  Integer ->
  Integer ->
  Integer -> Integer -> Integer -> Integer -> T_PParams_10199
check_MkPParams_10201 = MkPParams
cover_PParams_10199 :: PParams -> ()
cover_PParams_10199 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Conway.Foreign.HSLedger.PParams.PParamsUpdate
d_PParamsUpdate_116165 = ()
type T_PParamsUpdate_116165 = PParamsUpdate
pattern C_MkPParamsUpdate_116167 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34 = MkPParamsUpdate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34
check_MkPParamsUpdate_116167 ::
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
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_DrepThresholds_27 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_PoolThresholds_7431 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParamsUpdate_116165
check_MkPParamsUpdate_116167 = MkPParamsUpdate
cover_PParamsUpdate_116165 :: PParamsUpdate -> ()
cover_PParamsUpdate_116165 x
  = case x of
      MkPParamsUpdate _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
