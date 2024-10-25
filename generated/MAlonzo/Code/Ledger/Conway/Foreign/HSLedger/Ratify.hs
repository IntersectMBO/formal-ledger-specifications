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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify where

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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data StakeDistrs = StakeDistrs {stakeDistr :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.VDeleg Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential)), reTreasury :: Integer}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEnactState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_95 = ()
type T_StakeDistrs_95 = StakeDistrs
pattern C_StakeDistrs_97 a0 = StakeDistrs a0
check_StakeDistrs_97 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_VDeleg_965
    Integer ->
  T_StakeDistrs_95
check_StakeDistrs_97 = StakeDistrs
cover_StakeDistrs_95 :: StakeDistrs -> ()
cover_StakeDistrs_95 x
  = case x of
      StakeDistrs _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_102 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_104 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_106 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_ccHotKeys_1786
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1768 ->
  Integer
d_currentEpoch_168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_currentEpoch_1782
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_dreps_1784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1768 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1762
d_stakeDistrs_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_1780
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1768 ->
  Integer
d_treasury_174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_treasury_1788
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_1790 ->
  Bool
d_delay_178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_1802 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_1790 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_1790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_1800
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_202 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_202 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_204 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_204
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v1
                -> coe
                     C_StakeDistrs_97
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_97 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v2
                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v2))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_206 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_206 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_208 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_208
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v1 v2 v3 v4 v5
                -> coe
                     C_MkRatifyEnv_565
                     (coe
                        C_StakeDistrs_97
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                    (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_565 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v7
                                     -> coe
                                          C_StakeDistrs_97
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_StakeDistrs_97 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                         (coe v8))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v6)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v6)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v4)))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_210 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_210 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_212 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_212
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_1804 v1 v2 v3
                -> coe
                     C_MkRatifyState_4837
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                         (coe v4))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                      (coe v4)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v1))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v1))))
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_24)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_4837 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_1804
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2157 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                        (coe v10)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_24)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_57 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2157
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                        (coe v10))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                     (coe v10)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                            (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                            (coe v10)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_24)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328)))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_214
d_ratify'45'debug_214 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_214 v0 v1 v2
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
                       (coe du_govActionInfo_238 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_238 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_238 v0 v1 ~v2 v3 = du_govActionInfo_238 v0 v1 v3
du_govActionInfo_238 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_238 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedStakeRatio_1988
                      (coe
                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692)
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_1824
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v6 v7 v8 v9 v10
                                            -> coe
                                                 C_MkRatifyEnv_565
                                                 (coe
                                                    C_StakeDistrs_97
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                                                (coe v6))))))
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v8))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9))))
                                                 (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                            -> coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                       (coe
                                                          (\ v11 ->
                                                             case coe v11 of
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v12
                                                                 -> coe
                                                                      C_StakeDistrs_97
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v12))))
                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                       (coe
                                                          (\ v11 ->
                                                             case coe v11 of
                                                               C_StakeDistrs_97 v12
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                            (let v13
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                     (coe v13))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                            (coe v12)))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                    v6)
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v11
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                   (coe v11)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v11
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                   (coe v11)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                       (coe v9)))
                                                 (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                               v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_212 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_cc_864
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_212 v1))))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                  v4))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_1780
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_208
                            v0))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_1824
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v6 v7 v8 v9 v10
                                         -> coe
                                              C_MkRatifyEnv_565
                                              (coe
                                                 C_StakeDistrs_97
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                                             (coe v6))))))
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9))))
                                              (coe v10)
                                       _ -> MAlonzo.RTE.mazUnreachableError))
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v12
                                                              -> coe
                                                                   C_StakeDistrs_97
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v12))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            C_StakeDistrs_97 v12
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                         (let v13
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                  (coe v13))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                         (coe v12)))
                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                 v6)
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v11
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                   (coe v11))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                (coe v11)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                    (coe v8)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v11
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                   (coe v11))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                (coe v11)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                                                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                    (coe v9)))
                                              (coe v10)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                            v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_pparams_870
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_212 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_cc_864
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_212 v1))))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                               v4))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedBy'63'_2298
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'RatifyEnv_208 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'RatifyState_212 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                    v4)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_692) in
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
                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedStakeRatio_1988
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                     (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690)
                                     (coe
                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_1824
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v6 v7 v8 v9 v10
                                                           -> coe
                                                                C_MkRatifyEnv_565
                                                                (coe
                                                                   C_StakeDistrs_97
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                                                               (coe v6))))))
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v8))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v9))))
                                                                (coe v10)
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                           -> coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                      (coe
                                                                         (\ v11 ->
                                                                            case coe v11 of
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v12
                                                                                -> coe
                                                                                     C_StakeDistrs_97
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v12))))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      (coe
                                                                         (\ v11 ->
                                                                            case coe v11 of
                                                                              C_StakeDistrs_97 v12
                                                                                -> coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                           (let v13
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                    (coe
                                                                                                       v13))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
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
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                  (coe v11)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                      (coe v8)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v11
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                  (coe v11)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                      (coe v9)))
                                                                (coe v10)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                              v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_212 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_cc_864
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_212 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                 v4))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_1780
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Conv'45'RatifyEnv_208 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_1824
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v6 v7 v8 v9 v10
                                                        -> coe
                                                             C_MkRatifyEnv_565
                                                             (coe
                                                                C_StakeDistrs_97
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                                                            (coe v6))))))
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v9))))
                                                             (coe v10)
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                        -> coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                   (coe
                                                                      (\ v11 ->
                                                                         case coe v11 of
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v12
                                                                             -> coe
                                                                                  C_StakeDistrs_97
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v12))))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   (coe
                                                                      (\ v11 ->
                                                                         case coe v11 of
                                                                           C_StakeDistrs_97 v12
                                                                             -> coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                        (let v13
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                 (coe
                                                                                                    v13))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                     (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                        (coe v12)))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                v6)
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                  (coe v11))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                               (coe v11)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                  (coe v11))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                               (coe v11)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                   (coe v9)))
                                                             (coe v10)
                                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                                           v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_pparams_870
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_212 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_cc_864
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_212 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                              v4))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedBy'63'_2298
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'RatifyEnv_208 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'RatifyState_212 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_690) in
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
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedStakeRatio_1988
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovernanceActions.C_CC_688)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_1824
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v6 v7 v8 v9 v10
                                                                          -> coe
                                                                               C_MkRatifyEnv_565
                                                                               (coe
                                                                                  C_StakeDistrs_97
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                                                                              (coe
                                                                                                 v6))))))
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v8))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v9))))
                                                                               (coe v10)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                                          -> coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                     (coe
                                                                                        (\ v11 ->
                                                                                           case coe
                                                                                                  v11 of
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v12
                                                                                               -> coe
                                                                                                    C_StakeDistrs_97
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
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
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                          (let v13
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                                   (coe
                                                                                                                      v13))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
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
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                                    (coe
                                                                                                       v11))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                                 (coe
                                                                                                    v11)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                     (coe v8)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v11
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                                    (coe
                                                                                                       v11))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                                 (coe
                                                                                                    v11)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                     (coe v9)))
                                                                               (coe v10)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                                             v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_212
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_212
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                                v4))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistrs_1780
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Conv'45'RatifyEnv_208 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_actualVotes_1824
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275 v6 v7 v8 v9 v10
                                                                       -> coe
                                                                            C_MkRatifyEnv_565
                                                                            (coe
                                                                               C_StakeDistrs_97
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1766
                                                                                           (coe
                                                                                              v6))))))
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v8))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v9))))
                                                                            (coe v10)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     C_MkRatifyEnv_565 v6 v7 v8 v9 v10
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11275
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        case coe
                                                                                               v11 of
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189 v12
                                                                                            -> coe
                                                                                                 C_StakeDistrs_97
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
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
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11189
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                       (let v13
                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                                                                                (coe
                                                                                                                   v13))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_148)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
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
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                              (coe
                                                                                                 v11)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                               (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                  (coe v8)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v11
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888 in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                                              (coe
                                                                                                 v11)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_12)))
                                                                               (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                  (coe v9)))
                                                                            (coe v10)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))
                                                          v0)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_212 v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_cc_864
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_212 v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                             v4))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_acceptedBy'63'_2298
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'RatifyEnv_208 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_1798
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Conv'45'RatifyState_212 v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_688) in
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
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_RatifyState_4835
ratifyStep = coe d_ratify'45'step_292
d_ratify'45'step_292 ::
  T_RatifyEnv_563 ->
  T_RatifyState_4835 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_RatifyState_4835
d_ratify'45'step_292 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'RatifyState_212)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_328)))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'RatifyState_212))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties.d_Computational'45'RATIFY_1942
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_HSTransactionStructure_888))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_208
            v0))
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_563 = ()
type T_RatifyEnv_563 = RatifyEnv
pattern C_MkRatifyEnv_565 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_MkRatifyEnv_565 ::
  T_StakeDistrs_95 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_27
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_27) ->
  Integer -> T_RatifyEnv_563
check_MkRatifyEnv_565 = MkRatifyEnv
cover_RatifyEnv_563 :: RatifyEnv -> ()
cover_RatifyEnv_563 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_4835 = ()
type T_RatifyState_4835 = RatifyState
pattern C_MkRatifyState_4837 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_4837 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_55 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  Bool -> T_RatifyState_4835
check_MkRatifyState_4837 = MkRatifyState
cover_RatifyState_4835 :: RatifyState -> ()
cover_RatifyState_4835 x
  = case x of
      MkRatifyState _ _ _ -> ()
