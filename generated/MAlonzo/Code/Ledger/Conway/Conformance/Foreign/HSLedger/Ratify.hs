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

module MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data StakeDistrs = StakeDistrs {stakeDistr :: (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.VDeleg Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.Credential (Maybe MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.Credential)), reTreasury :: Integer}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEnactState :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_95 = ()
type T_StakeDistrs_95 = StakeDistrs
pattern C_StakeDistrs_97 a0 = StakeDistrs a0
check_StakeDistrs_97 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_VDeleg_965
    Integer ->
  T_StakeDistrs_95
check_StakeDistrs_97 = StakeDistrs
cover_StakeDistrs_95 :: StakeDistrs -> ()
cover_StakeDistrs_95 x
  = case x of
      StakeDistrs _ -> ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_104 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_106 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_108 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_ccHotKeys_2014
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1996 ->
  Integer
d_currentEpoch_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_currentEpoch_2010
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_dreps_2012 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1996 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1990
d_stakeDistrs_174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_2008
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1996 ->
  Integer
d_treasury_176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_treasury_2016
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2018 ->
  Bool
d_delay_180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2030 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2018 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2028
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_204 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_204 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_206 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_206
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v1
                -> coe
                     C_StakeDistrs_97
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_97 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v2
                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                           (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_208 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_208 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_210 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_210
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v1 v2 v3 v4 v5
                -> coe
                     C_MkRatifyEnv_565
                     (coe
                        C_StakeDistrs_97
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                    (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_565 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v7
                                     -> coe
                                          C_StakeDistrs_97
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_StakeDistrs_97 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                         (coe v8))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v6)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v6)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                           (coe v4)))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_212 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_212 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_214 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_214
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2032 v1 v2 v3
                -> coe
                     C_MkRatifyState_4837
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                         (coe v4))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                      (coe v4)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSSet_42
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_4837 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2032
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                        (coe v10)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe v5)))
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v10 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe
                                                            (\ v10 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe v6)))
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe v7)))
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                        (coe v10))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                     (coe v10)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v5))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v6))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v7))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                            (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                            (coe v10)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_elems_40
                              (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_216
d_ratify'45'debug_216 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_216 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      ("Number of govactions: " :: Data.Text.Text)
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         (coe
            MAlonzo.Code.Data.Nat.Show.d_show_56
            (coe MAlonzo.Code.Data.List.Base.du_length_284 v2))
         (coe
            MAlonzo.Code.Data.String.Base.d__'43''43'__20
            ("\n" :: Data.Text.Text)
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe
                  (\ v3 v4 ->
                     coe
                       MAlonzo.Code.Data.String.Base.d__'43''43'__20 v4
                       (coe du_govActionInfo_240 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_240 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_240 v0 v1 ~v2 v3 = du_govActionInfo_240 v0 v1 v3
du_govActionInfo_240 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_240 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedStakeRatio_2216
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696)
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_2052
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v6 v7 v8 v9 v10
                                            -> coe
                                                 C_MkRatifyEnv_565
                                                 (coe
                                                    C_StakeDistrs_97
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                                                (coe v6))))))
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v8))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9))))
                                                 (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                            -> coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                       (coe
                                                          (\ v11 ->
                                                             case coe v11 of
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v12
                                                                 -> coe
                                                                      C_StakeDistrs_97
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v12))))
                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                       (coe
                                                          (\ v11 ->
                                                             case coe v11 of
                                                               C_StakeDistrs_97 v12
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                            (let v13
                                                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                     (coe v13))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                            (coe v12)))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                    v6)
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v11
                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                   (coe v11)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v11
                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                   (coe v11)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                       (coe v9)))
                                                 (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                               v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_214 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_214 v1))))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                  v4))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_2008
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_210
                            v0))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_2052
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v6 v7 v8 v9 v10
                                         -> coe
                                              C_MkRatifyEnv_565
                                              (coe
                                                 C_StakeDistrs_97
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                                             (coe v6))))))
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9))))
                                              (coe v10)
                                       _ -> MAlonzo.RTE.mazUnreachableError))
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v12
                                                              -> coe
                                                                   C_StakeDistrs_97
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v12))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            C_StakeDistrs_97 v12
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                         (let v13
                                                                                = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                  (coe v13))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                         (coe v12)))
                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                 v6)
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v11
                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                   (coe v11))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                (coe v11)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                    (coe v8)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v11
                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                   (coe v11))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                (coe v11)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                    (coe v9)))
                                              (coe v10)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                            v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_214 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_214 v1))))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                               v4))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedBy'63'_2526
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'RatifyEnv_210 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'RatifyState_214 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                    v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_SPO_696) in
                       coe
                         (case coe v5 of
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                              -> if coe v6
                                   then coe seq (coe v7) (coe ("\10003" :: Data.Text.Text))
                                   else coe seq (coe v7) (coe ("\215" :: Data.Text.Text))
                            _ -> MAlonzo.RTE.mazUnreachableError))
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         ("\n" :: Data.Text.Text)
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            ("DRep: \t" :: Data.Text.Text)
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               (MAlonzo.Code.Data.Rational.Show.d_show_6
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedStakeRatio_2216
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694)
                                     (coe
                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_2052
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v6 v7 v8 v9 v10
                                                           -> coe
                                                                C_MkRatifyEnv_565
                                                                (coe
                                                                   C_StakeDistrs_97
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                                                               (coe v6))))))
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v8))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v9))))
                                                                (coe v10)
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                           -> coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                      (coe
                                                                         (\ v11 ->
                                                                            case coe v11 of
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v12
                                                                                -> coe
                                                                                     C_StakeDistrs_97
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v12))))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      (coe
                                                                         (\ v11 ->
                                                                            case coe v11 of
                                                                              C_StakeDistrs_97 v12
                                                                                -> coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                           (let v13
                                                                                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                                    (coe
                                                                                                       v13))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                           (coe
                                                                                              v12)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                   v6)
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v11
                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                  (coe v11)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                      (coe v8)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v11
                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                  (coe v11)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                      (coe v9)))
                                                                (coe v10)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                              v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_214 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_214 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                 v4))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_2008
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Conv'45'RatifyEnv_210 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_2052
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v6 v7 v8 v9 v10
                                                        -> coe
                                                             C_MkRatifyEnv_565
                                                             (coe
                                                                C_StakeDistrs_97
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                                                            (coe v6))))))
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v9))))
                                                             (coe v10)
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                        -> coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                   (coe
                                                                      (\ v11 ->
                                                                         case coe v11 of
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v12
                                                                             -> coe
                                                                                  C_StakeDistrs_97
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v12))))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   (coe
                                                                      (\ v11 ->
                                                                         case coe v11 of
                                                                           C_StakeDistrs_97 v12
                                                                             -> coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                        (let v13
                                                                                               = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                                 (coe
                                                                                                    v13))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                        (coe v12)))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                v6)
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                  (coe v11))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                               (coe v11)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                  (coe v11))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                               (coe v11)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                   (coe v9)))
                                                             (coe v10)
                                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                                           v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_214 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_214 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                              v4))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedBy'63'_2526
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'RatifyEnv_210 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'RatifyState_214 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_DRep_694) in
                                      coe
                                        (case coe v5 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                             -> if coe v6
                                                  then coe
                                                         seq (coe v7)
                                                         (coe ("\10003" :: Data.Text.Text))
                                                  else coe
                                                         seq (coe v7)
                                                         (coe ("\215" :: Data.Text.Text))
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                     (coe
                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                        ("\n" :: Data.Text.Text)
                                        (coe
                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                           ("CC: \t" :: Data.Text.Text)
                                           (coe
                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                              (MAlonzo.Code.Data.Rational.Show.d_show_6
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedStakeRatio_2216
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_2052
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v6 v7 v8 v9 v10
                                                                          -> coe
                                                                               C_MkRatifyEnv_565
                                                                               (coe
                                                                                  C_StakeDistrs_97
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                                                                              (coe
                                                                                                 v6))))))
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v8))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v9))))
                                                                               (coe v10)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                                          -> coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                     (coe
                                                                                        (\ v11 ->
                                                                                           case coe
                                                                                                  v11 of
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v12
                                                                                               -> coe
                                                                                                    C_StakeDistrs_97
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                v12))))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                     (coe
                                                                                        (\ v11 ->
                                                                                           case coe
                                                                                                  v11 of
                                                                                             C_StakeDistrs_97 v12
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                          (let v13
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                                                   (coe
                                                                                                                      v13))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                          (coe
                                                                                                             v12)))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                  v6)
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v11
                                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                                    (coe
                                                                                                       v11))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                                 (coe
                                                                                                    v11)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                     (coe v8)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v11
                                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                                    (coe
                                                                                                       v11))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                                 (coe
                                                                                                    v11)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                     (coe v9)))
                                                                               (coe v10)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                                             v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_214
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_214
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                                v4))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_2008
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Conv'45'RatifyEnv_210 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_2052
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501 v6 v7 v8 v9 v10
                                                                       -> coe
                                                                            C_MkRatifyEnv_565
                                                                            (coe
                                                                               C_StakeDistrs_97
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1994
                                                                                           (coe
                                                                                              v6))))))
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v8))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v9))))
                                                                            (coe v10)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11501
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        case coe
                                                                                               v11 of
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415 v12
                                                                                            -> coe
                                                                                                 C_StakeDistrs_97
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v12))))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        case coe
                                                                                               v11 of
                                                                                          C_StakeDistrs_97 v12
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11415
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                       (let v13
                                                                                                              = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                                                (coe
                                                                                                                   v13))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                                       (coe
                                                                                                          v12)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                               v6)
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v11
                                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                              (coe
                                                                                                 v11)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                  (coe v8)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v11
                                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890 in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                                                              (coe
                                                                                                 v11)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                  (coe v9)))
                                                                            (coe v10)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))
                                                          v0)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_214 v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_214 v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                             v4))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedBy'63'_2526
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'RatifyEnv_210 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2026
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Conv'45'RatifyState_214 v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_CC_692) in
                                                     coe
                                                       (case coe v5 of
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                                            -> if coe v6
                                                                 then coe
                                                                        seq (coe v7)
                                                                        (coe
                                                                           ("\10003"
                                                                            ::
                                                                            Data.Text.Text))
                                                                 else coe
                                                                        seq (coe v7)
                                                                        (coe
                                                                           ("\215"
                                                                            ::
                                                                            Data.Text.Text))
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                    ("\n" :: Data.Text.Text))))))))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_RatifyState_4835
ratifyStep = coe d_ratify'45'step_294
d_ratify'45'step_294 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_RatifyState_4835
d_ratify'45'step_294 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'RatifyState_214)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_90
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_22)
               (coe d_Conv'45'RatifyState_214))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties.d_Computational'45'RATIFY_2170
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_890))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_210
            v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_563 = ()
type T_RatifyEnv_563 = RatifyEnv
pattern C_MkRatifyEnv_565 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_MkRatifyEnv_565 ::
  T_StakeDistrs_95 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27) ->
  Integer -> T_RatifyEnv_563
check_MkRatifyEnv_565 = MkRatifyEnv
cover_RatifyEnv_563 :: RatifyEnv -> ()
cover_RatifyEnv_563 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_4835 = ()
type T_RatifyState_4835 = RatifyState
pattern C_MkRatifyState_4837 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_4837 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.T_EnactState_55 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSSet_34
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  Bool -> T_RatifyState_4835
check_MkRatifyState_4837 = MkRatifyState
cover_RatifyState_4835 :: RatifyState -> ()
cover_RatifyState_4835 x
  = case x of
      MkRatifyState _ _ _ -> ()
