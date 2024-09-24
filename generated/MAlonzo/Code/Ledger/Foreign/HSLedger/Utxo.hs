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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Utxow.Properties
import qualified MAlonzo.Code.Prelude

import GHC.Generics (Generic)
data UTxOEnv = MkUTxOEnv {ueSlot :: Integer, uePparams :: MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.PParams, ueTreasury :: Integer}
  deriving (Show, Eq, Generic)
data UTxOState = MkUTxOState {utxo :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either () ())), (Maybe (Either MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.Timelock ())))))), fees :: Integer, deposits :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.DepositPurpose Integer), donations :: Integer}
  deriving (Show, Eq, Generic)
type UTxO = (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap (Integer, Integer) ((Either MAlonzo.Code.Ledger.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either () ())), (Maybe (Either MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.Timelock ()))))))
-- Ledger.Foreign.HSLedger.Utxo._.UTxOEnv
d_UTxOEnv_44 = ()
-- Ledger.Foreign.HSLedger.Utxo._.UTxOState
d_UTxOState_46 = ()
-- Ledger.Foreign.HSLedger.Utxo._.UTxOEnv.pparams
d_pparams_134 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1930 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_134 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1940 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo._.UTxOEnv.slot
d_slot_136 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1930 -> Integer
d_slot_136 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1938 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo._.UTxOEnv.treasury
d_treasury_138 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1930 -> Integer
d_treasury_138 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1942 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo._.UTxOState.deposits
d_deposits_142 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_142 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1958 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo._.UTxOState.donations
d_donations_144 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 -> Integer
d_donations_144 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1960 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo._.UTxOState.fees
d_fees_146 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 -> Integer
d_fees_146 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1956 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo._.UTxOState.utxo
d_utxo_148 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_148 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1954 (coe v0)
-- Ledger.Foreign.HSLedger.Utxo.HsTy-UTxOEnv
d_HsTy'45'UTxOEnv_250 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOEnv_250 = erased
-- Ledger.Foreign.HSLedger.Utxo.Conv-UTxOEnv
d_Conv'45'UTxOEnv_252 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOEnv_252
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_8893 v1 v2 v3
                -> coe
                     C_MkUTxOEnv_723 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkPParams_10189
                        (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v2))))
                        (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v2))))
                        (coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
                              (coe v2)))
                        (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v2))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                             (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v4 ->
                                    case coe v4 of
                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                        -> case coe v6 of
                                             0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                             _ -> coe
                                                    MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                    (coe v5) (coe v6)
                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                           (MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_PoolThresholds_7421
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_Q1_234
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_Q2a_236
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_Q2b_238
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_Q4_240
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_Q5e_242
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_DrepThresholds_23
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P1_202
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P2a_204
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P2b_206
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P3_208
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P4_210
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P5a_212
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P5b_214
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P5c_216
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P5d_218
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                           -> coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe
                                    (\ v4 ->
                                       case coe v4 of
                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v5 v6
                                           -> case coe v6 of
                                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                _ -> coe
                                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                       (coe v5) (coe v6)
                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                              (MAlonzo.Code.Ledger.PParams.d_P6_220
                                 (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v2)))))
                        (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v2))
                        (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v2)))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOEnv_723 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_8893 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_3595 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkPParams_10189
                                          (coe v5) (coe v6) (coe v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v34 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v34 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (coe v9)))
                                          (coe v10) (coe v11)
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                (coe
                                                   (\ v34 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (coe v12)))
                                          (coe v13) (coe v14) (coe v15) (coe v16) (coe v17)
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v35)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v36))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                          -> case coe v36 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v35) (coe v36)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v19)
                                          (coe v20) (coe v21) (coe v22)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v35)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v36))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                          -> case coe v36 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v35) (coe v36)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v23)
                                          (coe v24) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_PoolThresholds_7421
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v26)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v26)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v26)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v26)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v26))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_DrepThresholds_23
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v27)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                  (coe v35)
                                                                  (coe
                                                                     addInt (coe (1 :: Integer))
                                                                     (coe v36))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      (\ v34 ->
                                                         case coe v34 of
                                                           MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                             -> case coe v36 of
                                                                  0 -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                  _ -> coe
                                                                         MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                         (coe v35) (coe v36)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                (MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v27))))
                                          (coe v28) (coe v29) (coe v30) (coe v31) (coe v32)
                                          (coe v33)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkPParams_10189 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_3595
                                          (coe v5) (coe v6) (coe v7)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (coe
                                                (\ v34 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (coe
                                                (\ v34 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v9))
                                          (coe v10) (coe v11)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (coe
                                                (\ v34 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v12))
                                          (coe v13) (coe v14) (coe v15) (coe v16) (coe v17)
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v35)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v36))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                          -> case coe v36 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v35) (coe v36)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v19)
                                          (coe v20) (coe v21) (coe v22)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v35 v36
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                               (coe v35)
                                                               (coe
                                                                  addInt (coe (1 :: Integer))
                                                                  (coe v36))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v35 v36
                                                          -> case coe v36 of
                                                               0 -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                               _ -> coe
                                                                      MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                      (coe v35) (coe v36)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v23)
                                          (coe v24) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_2415 v35 v36 v37 v38 v39
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_PoolThresholds_7421
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v39)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_PoolThresholds_7421 v35 v36 v37 v38 v39
                                                          -> coe
                                                               MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_2415
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v41 v42
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v41)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v42))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v40 ->
                                                                           case coe v40 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v41 v42
                                                                               -> case coe v42 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v41)
                                                                                           (coe v42)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v39)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v26)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_1851 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_DrepThresholds_23
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v34 ->
                                                      case coe v34 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_DrepThresholds_23 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44
                                                          -> coe
                                                               MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_1851
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v35)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v36)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v37)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v38)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v39)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v40)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v41)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v42)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v43)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v46 v47
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10
                                                                                    (coe v46)
                                                                                    (coe
                                                                                       addInt
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe v47))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v45 ->
                                                                           case coe v45 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C__'44'__10 v46 v47
                                                                               -> case coe v47 of
                                                                                    0 -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                                                    _ -> coe
                                                                                           MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                                                           (coe v46)
                                                                                           (coe v47)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v44)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v27)
                                          (coe v28) (coe v29) (coe v30) (coe v31) (coe v32)
                                          (coe v33)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Utxo.HsTy-UTxOState
d_HsTy'45'UTxOState_254 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UTxOState_254 = erased
-- Ledger.Foreign.HSLedger.Utxo.Conv-UTxOState
d_Conv'45'UTxOState_256 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UTxOState_256
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1962 v1 v2 v3 v4
                -> coe
                     C_MkUTxOState_1713
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v5 ->
                                                         coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v5 ->
                                                         coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                   (coe
                                                      (\ v5 ->
                                                         coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkUTxOState_1713 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1962
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_14)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_18))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v5 ->
                                                   coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v5 ->
                                                   coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe
                                                (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))))))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v5
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v5))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v3)))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Utxo.utxo-step
utxoStep ::
  T_UTxOEnv_721 ->
  T_UTxOState_1711 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1711
utxoStep = coe d_utxo'45'step_258
d_utxo'45'step_258 ::
  T_UTxOEnv_721 ->
  T_UTxOState_1711 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1711
d_utxo'45'step_258 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_256)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Tx_26)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'UTxOState_256))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Utxo.Properties.d_Computational'45'UTXO_2450
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSAbstractFunctions_2576))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_252
            v0))
-- Ledger.Foreign.HSLedger.Utxo.utxo-step'
utxoStep' ::
  T_UTxOEnv_721 ->
  T_UTxOState_1711 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1711
utxoStep' = coe d_utxo'45'step''_260
d_utxo'45'step''_260 ::
  T_UTxOEnv_721 ->
  T_UTxOState_1711 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1711
d_utxo'45'step''_260 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_256)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Tx_26)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'UTxOState_256))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Utxo.Properties.d_Computational'45'UTXO''_2124
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSAbstractFunctions_2576))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_252
            v0))
-- Ledger.Foreign.HSLedger.Utxo.utxow-step
utxowStep ::
  T_UTxOEnv_721 ->
  T_UTxOState_1711 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1711
utxowStep = coe d_utxow'45'step_262
d_utxow'45'step_262 ::
  T_UTxOEnv_721 ->
  T_UTxOState_1711 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Tx_109459 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_UTxOState_1711
d_utxow'45'step_262 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'UTxOState_256)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Tx_26)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'UTxOState_256))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Utxow.Properties.d_Computational'45'UTXOW_2018
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSAbstractFunctions_2576))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'UTxOEnv_252
            v0))
-- Ledger.Foreign.HSLedger.Utxo.UTxOEnv
d_UTxOEnv_721 = ()
type T_UTxOEnv_721 = UTxOEnv
pattern C_MkUTxOEnv_723 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_MkUTxOEnv_723 ::
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.T_PParams_10187 ->
  Integer -> T_UTxOEnv_721
check_MkUTxOEnv_723 = MkUTxOEnv
cover_UTxOEnv_721 :: UTxOEnv -> ()
cover_UTxOEnv_721 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Foreign.HSLedger.Utxo.UTxOState
d_UTxOState_1711 = ()
type T_UTxOState_1711 = UTxOState
pattern C_MkUTxOState_1713 a0 a1 a2 a3 = MkUTxOState a0 a1 a2 a3
check_MkUTxOState_1713 ::
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () () MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_BaseAddr_723
          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_BootstrapAddr_2371)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () ()
                   MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.T_Timelock_143
                   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))) ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DepositPurpose_525
    Integer ->
  Integer -> T_UTxOState_1711
check_MkUTxOState_1713 = MkUTxOState
cover_UTxOState_1711 :: UTxOState -> ()
cover_UTxOState_1711 x
  = case x of
      MkUTxOState _ _ _ _ -> ()
